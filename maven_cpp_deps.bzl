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
JNI_PATTERN=[
    "**/*jni.dll",
    "**/*jni.so*",
    "**/*jni.dylib",
    "**/*_java*.dll",
    "**/lib*_java*.dylib",
    "**/lib*_java*.so",
]

static_srcs = glob([
        "**/*.lib",
        "**/*.a"
    ],
    exclude=["**/*jni.lib"]
)
shared_srcs = glob([
        "**/*.dll",
        "**/*.so*",
        "**/*.dylib",
    ],
    exclude=JNI_PATTERN + ["**/*.so.debug"]
)
shared_jni_srcs = glob(JNI_PATTERN, exclude=["**/*.so.debug"])

filegroup(
    name = "static_libs",
    srcs = static_srcs,
    visibility = ["//visibility:public"],
)

filegroup(
    name = "shared_libs",
    srcs = shared_srcs,
    visibility = ["//visibility:public"],
)

filegroup(
    name = "shared_jni_libs",
    srcs = shared_jni_srcs,
    visibility = ["//visibility:public"],
)
"""

def __setup_bzlmodrio_navx_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-headers.zip",
        sha256 = "4e02d68cad864cb1f660dcf9918badc13c6d22dede41e63aee4486e5d1e3277c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-sources.zip",
        sha256 = "009474ac2b9a356b442eeead15e687d36d91b5e80cb007e549cb60e968e367a9",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxathena.zip",
        sha256 = "9969f27e6f59f2ec2447f5187f865196d94d2551b28016afa81e667301ed4af8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxathenastatic.zip",
        sha256 = "49278fc2ef7cad20ad27e253c71c1b222e785f80de76861a5cb723575ed6546c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxarm32.zip",
        sha256 = "8f298f7aadbd6a1e95b34ba9a57a2651c5d0bd487f28c52e5dd03a87f676b81c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxarm32static.zip",
        sha256 = "434fecab453dcf27a59d514901215db68ca0ff60618965cda1de3db78c593ad9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxarm64.zip",
        sha256 = "ea7080c62ad09bfbb45e16e7351f3cb46710f628b11129e70b787b893c15b5b4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxarm64static.zip",
        sha256 = "8ca1ea9d3d47d7d32cffe18e0908b5a7adf6880d1a31b2176e638f1de8a8e48a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxx86-64.zip",
        sha256 = "74e7a60104c302e4aa13912007134291eaf2d67e5177f2a7a6f13b4efb7f702a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-linuxx86-64static.zip",
        sha256 = "98d7f2ac1393f461e66930283742bc9b6c9b5d5395d26a1c0cec3a8afdc69556",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-osxuniversal.zip",
        sha256 = "16a4c4b083a397d1740c05801d7011b5112e91cc6a028e9646ad3568564076c1",
        build_file_content = cc_library_shared,
        patch_cmds = [
            "install_name_tool -id @rpath/libnavx-frc.dylib osx/universal/shared/libnavx-frc.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-osxuniversalstatic.zip",
        sha256 = "d2ebbcef2b86c5082f7243c14b5a332484d71e244009c261e029ebe7e561fa47",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-windowsx86-64.zip",
        sha256 = "35cb34c95786569483ea03986125785f9c61a5f2b4789198ea42ddcc778638db",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-2/navx-frc-cpp-2024.0.1-beta-2-windowsx86-64static.zip",
        sha256 = "48a6e6298689d3b09212a4a16b9b8bf66b8c8c9ccf247950b6ff586595a5571b",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
