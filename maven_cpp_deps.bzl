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
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-headers.zip",
        sha256 = "0a5f50dc1497594987ccb455126d568700e823720a11710360ef90bf691bc62b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-sources.zip",
        sha256 = "53d4df659e823bf3cde76a41680c7828d4e8cc1dbe807a89e0060c79563f45b5",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-linuxathena.zip",
        sha256 = "0560b003bb7387be6c368b5b332f260537a480c82a68e223135075401b01259b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-linuxathenastatic.zip",
        sha256 = "461479fa534cf6e7f85aed4c1ea6ca3f2b4fba9c8b5b4909363e31677e0800b1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-linuxarm32.zip",
        sha256 = "2aaeec11f869fb509ce76bc8a236f76c4db12a4152d40e347d763fecb578388c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-linuxarm32static.zip",
        sha256 = "f490b0dbbac0ba59fb308e980a9dfe286587cd37fc09ffc9499dd88c75734082",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-linuxarm64.zip",
        sha256 = "71d784a7bc3749efe6c652ab113c417f7face48d6117da6595efda9a9e4d9333",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-linuxarm64static.zip",
        sha256 = "ea2535b1143443293db0be966479bea4db2461880d91b00bda97dc7fee5999bd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-osxuniversal.zip",
        sha256 = "bb2948c54d2ba8dc1dfe8031ea37fb1b3ecba839b9ac6ec16c2fe120f76f0bec",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-osxuniversalstatic.zip",
        sha256 = "3a0454c6818dbbb42e3ebf4c31241e63d5eea20b8f98c52a09c2bc7db28c019e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-windowsx86-64.zip",
        sha256 = "3d6e738453c5f842775c3ff685e7f61d235c865669565580db78a0afb90ae1f6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.2/navx-frc-cpp-2023.0.2-windowsx86-64static.zip",
        sha256 = "f15ca825c0f436253d69b2bb95e12696eace95aa6f172ffafa8001c59d7485fb",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
