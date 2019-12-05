load("@rules_foreign_cc//tools/build_defs:cmake.bzl", "cmake_external")

cmake_external(
  name = "ament_package",
  cache_entries = {
    "CMAKE_INSTALL_PREFIX": "$(RULEDIR)",
    "CMAKE_SOURCE_DIR": "./ament_package",
  },
  lib_source = "@ament_package//:all",
  headers_only = True,
)

cmake_external(
  name = "ament_cmake_core",
  lib_source = "@ament_cmake_core//:all",
  deps = [":ament_package"]
  headers_only = True,
)
