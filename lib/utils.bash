#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/bazelbuild/buildtools"
TOOL_NAME="bazel-buildtools"
TOOL_TESTS=("buildifier --version" "buildozer --version" "unused_deps --version")

TOOL_NAMES=("buildifier" "buildozer" "unused_deps")

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

# NOTE: You might want to remove this if bazel-buildtools is not hosted on GitHub releases.
if [ -n "${GITHUB_API_TOKEN:-}" ]; then
  curl_opts=("${curl_opts[@]}" -H "Authorization: token $GITHUB_API_TOKEN")
fi

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_github_tags() {
  git ls-remote --tags --refs "$GH_REPO" |
    grep -o 'refs/tags/.*' | cut -d/ -f3-
}

list_all_versions() {
  list_github_tags
}

download_release() {
  local version url os arch
  version="$1"

  # `uname` gives "Darwin"/"Linux". Use `awk` to convert to lowercase
  os="$(uname | awk '{print tolower($0)}')"

  # TODO: detect arch (amd64/arm64) w/ uname -m
  arch="amd64"

  for tool in "${TOOL_NAMES[@]}"; do
    url="$GH_REPO/releases/download/${version}/${tool}-${os}-${arch}"

    echo "* Downloading $tool release $version..."
    curl "${curl_opts[@]}" -o "$ASDF_DOWNLOAD_PATH/$tool" -C - "$url" || fail "Could not download $url"
  done

}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="${3%/bin}/bin"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  (
    mkdir -p "$install_path"
    cp -r "$ASDF_DOWNLOAD_PATH"/* "$install_path"

    for tool in "${TOOL_NAMES[@]}"; do
      chmod u+x "$install_path/$tool"
      test -x "$install_path/$tool" || fail "Expected $install_path/$tool to be executable."
    done

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error occurred while installing $TOOL_NAME $version."
  )
}
