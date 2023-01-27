load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

filegroup_all = """filegroup(
     name = "all",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

cc_library_sources = """filegroup(
     name = "sources",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_static = """

cc_library(
    name = "static_libs",
    srcs = glob(["**/*.lib", "**/*.a"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_shared = """
static_srcs = glob(["**/*.lib", "**/*.a"], exclude=["**/*jni.lib"])
shared_srcs = glob(["**/*.dll", "**/*.so*", "**/*.dylib"], exclude=["**/*jni.dll", "**/*jni.so", "**/*.so.debug", "**/libopencv_java*.dylib"])
shared_jni_srcs = glob(["**/*jni.dll", "**/*jni.so*", "**/*.jni.dylib", "**/libopencv_java*.dylib"], exclude=["**/*.so.debug"])

cc_library(
    name = "static_libs",
    srcs = static_srcs,
    visibility = ["//visibility:public"],
)

cc_library(
    name = "shared_libs",
    srcs = shared_srcs,
    visibility = ["//visibility:public"],
    deps = [
        ":static_libs",
    ]
)

cc_library(
    name = "shared_jni_libs",
    srcs = shared_jni_srcs,
    visibility = ["//visibility:public"],
)
"""

def __setup_bzlmodrio_navx_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-cpp_headers",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-headers.zip",
        sha256 = "f1157a88ed0db1490f466eaf721a5b1f74cc96c1260e01002a892f698a1663ae",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-cpp_sources",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-sources.zip",
        sha256 = "11e498c4ed23b462cfb88d84829e41fc97e8bcd5946f72716ca5c514f515b092",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathena",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-linuxathena.zip",
        sha256 = "037a9a6a7dcfbae733a8a5e680478a1cc05493fa0e306f6644ddaf982aa835f5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathenastatic",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-linuxathenastatic.zip",
        sha256 = "65d1be6609a47d742ab48106b78d054f7c161dcc1b4e3d6d5429c21ed8ec5ef7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-windowsx86-64.zip",
        sha256 = "f9b6f9d9e5ab829ea3765b13c0cd4c7e85e6566a68784803d61b8ef0907b8a9f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64static",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-windowsx86-64static.zip",
        sha256 = "e9e0f42e9bab3794a6fae8031be11472515f852a8623998ba9eb8ee93b18c93f",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
