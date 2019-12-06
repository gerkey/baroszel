package(default_visibility = ["//visibility:public"])

# Prebuilt C++ and Python ROS libraries

cc_library(
    name='ros2_cpp',
    srcs=glob(['lib/*.so*']),
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include'
)

py_library(
    name='ros2_python',
    srcs=glob(['lib/python3*/site-packages/**/*.py']),
    imports=['lib/python3*/site-packages/']
)
