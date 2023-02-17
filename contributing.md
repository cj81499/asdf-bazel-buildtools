# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test bazel-buildtools https://github.com/cj81499/asdf-bazel-buildtools.git "buildifier --version"
```

Tests are automatically run in GitHub Actions on push and PR.
