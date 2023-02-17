<div align="center">

# asdf-bazel-buildtools [![Build](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/build.yml/badge.svg)](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/build.yml) [![Lint](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/lint.yml/badge.svg)](https://github.com/cj81499/asdf-bazel-buildtools/actions/workflows/lint.yml)


[bazel-buildtools](https://github.com/cj81499/asdf-bazel-buildtools) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add bazel-buildtools
# or
asdf plugin add bazel-buildtools https://github.com/cj81499/asdf-bazel-buildtools.git
```

bazel-buildtools:

```shell
# Show all installable versions
asdf list-all bazel-buildtools

# Install specific version
asdf install bazel-buildtools latest

# Set a version globally (on your ~/.tool-versions file)
asdf global bazel-buildtools latest

# Now bazel-buildtools commands are available
buildifier --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/cj81499/asdf-bazel-buildtools/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Cal Jacobson](https://github.com/cj81499/)
