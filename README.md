# bazel-swift-accessl-level-import-example
Test repository to showcase the compilation avoidance when using bazel private_deps and swift access level imports

# How to

There are 3 swift libraries depending on each other:
- Sources -> Bindings -> Library

The goal was to validate that changing `Library` does not induce recompilation of `Sources` when using `internal import` and the legacy `@_implementationOnly import`.

To check so, lets run the following twice:
1. `bazel build :app`
2. `bazel build :app --config=internal_import`
3. `bazel build :app --config=implementation_only_import`

Changing `Library.swift` in between builds of the same config.

Checking `build.log` for executed actions.