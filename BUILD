load('@build_bazel_rules_apple//apple:apple.bzl', 'apple_dynamic_xcframework_import')

objc_library(
    name = "GoogleSignIn",
    deps = [":GoogleSignInXCFramework"],
    module_name = "GoogleSignIn",
    visibility = ["//visibility:public"],
)

apple_dynamic_xcframework_import(
    name = "GoogleSignInXCFramework",
    xcframework_imports = glob(["GoogleSignIn.xcframework/**"]),
)
