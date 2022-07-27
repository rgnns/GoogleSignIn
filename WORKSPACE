load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
  name = "build_bazel_rules_apple",
  remote = "https://github.com/bazelbuild/rules_apple.git",
  commit = "aa7e5a51e797854943a57e9e8a28e7db14dd88d6",
  shallow_since = "1642817710 -0800",
)

load(
  "@build_bazel_rules_apple//apple:repositories.bzl",
  "apple_rules_dependencies",
)

apple_rules_dependencies()
