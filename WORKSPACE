workspace(name = "testing")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
   name = "rules_foreign_cc",
   strip_prefix = "rules_foreign_cc-master",
   url = "https://github.com/bazelbuild/rules_foreign_cc/archive/master.zip",
)
load("@rules_foreign_cc//:workspace_definitions.bzl", "rules_foreign_cc_dependencies")
rules_foreign_cc_dependencies()
all_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

http_archive(
    name = "rules_python",
    url = "https://github.com/bazelbuild/rules_python/archive/master.tar.gz",
    strip_prefix = "rules_python-master",
    #url = "https://github.com/bazelbuild/rules_python/releases/download/0.0.1/rules_python-0.0.1.tar.gz",
    #sha256 = "aa96a691d3a8177f3215b14b0edc9641787abaaa30363a080165d06ab65e1161",
)
load("@rules_python//python:repositories.bzl", "py_repositories")
py_repositories()

new_git_repository(
  name = "ament_package",
  branch = "add_cmakelists",
  remote = "https://github.com/gerkey/ament_package",
  build_file_content = all_content,
)

ament_cmake_core_content = """filegroup(name = "all", srcs = glob(["ament_cmake_core/**"]), visibility = ["//visibility:public"])"""
new_git_repository(
  name = "ament_cmake_core",
  branch = "bazel",
  remote = "https://github.com/gerkey/ament_cmake",
  build_file_content = ament_cmake_core_content,
)

load("@rules_python//python:pip.bzl", "pip3_import")
pip3_import(
   name = "pip3_deps",
   requirements = "@ament_cmake_core//:ament_cmake_core/requirements.txt",
)
load("@pip3_deps//:requirements.bzl", "pip_install")
pip_install()
