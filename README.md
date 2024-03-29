<div align="center">

# asdf-bazel-buildtools

[![Build](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/build.yml/badge.svg)](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/build.yml)
[![Lint](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/lint.yml/badge.svg)](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/lint.yml)

[bazel-buildtools](https://github.com/bazelbuild/buildtools) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Dependencies

- `bash`, `curl`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add bazel-buildtools git@github.com:cj81499/asdf-bazel-buildtools.git
# or
asdf plugin add bazel-buildtools https://github.com/cj81499/asdf-bazel-buildtools.git
```

bazel-buildtools:

```shell
# Show all installable versions
asdf list-all bazel-buildtools

# Install specific version
asdf install bazel-buildtools <version>
# Install latest version
asdf install bazel-buildtools latest

# Set a version globally (on your ~/.tool-versions file)
asdf global bazel-buildtools <version>

# Now bazel-buildtools commands are available
buildifier --version
buildozer --version
unused_deps --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/cj81499/asdf-bazel-buildtools/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Cal Jacobson](https://github.com/cj81499/)
