objc_library(
    name = "GoogleSignIn",
    srcs = glob([
        "GoogleSignIn/Sources/*.h",
        "GoogleSignIn/Sources/*.m",
    ]),
    hdrs = glob(["GoogleSignIn/Sources/Public/**/*.h"]),
    defines = [
        "GID_SDK_VERSION=6.1.0",
    ],
    module_name = "GoogleSignIn",
    includes = ["."],
    visibility = ["//visibility:public"],
    deps = [
        "//AppAuth-iOS:AppAuth",
        "//GTMAppAuth:GTMAppAuth",
        "//gtm-session-fetcher:GTMSessionFetcherCore",
    ],
)
