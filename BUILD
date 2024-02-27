load("@bazel_skylib//rules:common_settings.bzl", "bool_flag")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")


licenses(["notice"])

swift_library(
    name = "Library",
    srcs = [
        "Sources/Library.swift",
    ],
    module_name = "Library",
    tags = ["manual"],
)

swift_library(
    name = "Bindings",
    srcs = [
        "Sources/Bindings.swift",
    ],
    module_name = "Bindings",
    private_deps = select({
        ":use_private_deps_config": [":Library"],
        "//conditions:default": [],
    }),
    deps = select({
        ":use_private_deps_config": [],
        "//conditions:default": [":Library"],
    }),
    tags = ["manual"],
)

swift_library(
    name = "Sources",
    srcs = [
        "Sources/AppDelegate.swift",
    ],
    deps = [
        ":Bindings",
    ],
    module_name = "Sources",
    tags = ["manual"],
)

ios_application(
    name = "app",
    bundle_id = "com.example.hello-world-swift",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":Info.plist"],
    minimum_os_version = "15.0",
    deps = [":Sources"],
)

bool_flag(
    name = "use_private_deps",
    build_setting_default = False,
)

config_setting(
    name = "use_private_deps_config",
    flag_values = {
        ":use_private_deps": "True",
    }
)