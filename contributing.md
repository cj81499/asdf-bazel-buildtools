# Contributing

Testing Locally:

```shell
asdf plugin test bazel-buildtools . [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] 'buildifier --version && buildozer --version && unused_deps --version'
# or
asdf plugin test bazel-buildtools git@github.com:cj81499/asdf-bazel-buildtools.git [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] 'buildifier --version && buildozer --version && unused_deps --version'
```

Tests are automatically run in GitHub Actions on push and PR.
