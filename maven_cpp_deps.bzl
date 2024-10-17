load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "header_files",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_sources = """filegroup(
     name = "sources",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

def __setup_bzlmodrio_navx_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-headers.zip",
        sha256 = "ff318dcff85579864ab5f0876228b76a7cf9a581f7aee9ddce8f4cfe6cce7250",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-sources.zip",
        sha256 = "2aba330db3fc26fb88bfb6a27c98f0e4545f415ca5171de6e2d21e7849bb221c",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxathena.zip",
        sha256 = "dfa01ecf30661460764b4b5e313c471900907a1bf7447d3e787541638799bb28",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "91c814160bd3e2d867096679f4c0db65fd0a0c79a7cb38b254320c4a6c64cc74",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxarm32.zip",
        sha256 = "4a732ad448171e4dd8771e838cb7761daab3919435c2811ecb887b5b5b0207ff",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxarm32static.zip",
        sha256 = "1f7d1b1cc2f10bf6c6ba560db91de0d944b72359ef00d27f22a7e0e139ba8797",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxarm64.zip",
        sha256 = "8846ae3813e3ec392811e7b208c83fd98f7b8b856b93975c4ec674177abe2808",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxarm64static.zip",
        sha256 = "0cb08a13b42797aea8ea531a2d9e1373a235650f6448b7bd72b27209326005be",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxx86-64.zip",
        sha256 = "edb42cc3180cd89f515dd47fc62840d2f785032f46485c02df3472c0826a07cf",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "1ac24c65c803da026048c970d8eebff24313696b10c3772b762e9915c9149d19",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-osxuniversal.zip",
        sha256 = "e1ba4cb99e8287f6d513f33e8d9f6fadac7bb93dd7042cef3425b923345efb4f",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-osxuniversalstatic.zip",
        sha256 = "a893df28b2b4ef923562cc733fb8327e023ec71d84d6ae29da48cc1a63f944ec",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-windowsx86-64.zip",
        sha256 = "38d58fe6bfe5b35dc0429477ff9ed3fe24400e8b97c9de85709ee36d00e2fee3",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx_frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/kauailabs/navx/frc/navx_frc-cpp/2025.1.1-beta-1/navx_frc-cpp-2025.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "7fe86b9a1d935f8e1a969fb8bfc74ed75fd74d7d64d3651446bc256bb4c59531",
        build_file = "@bzlmodrio-navx//private/cpp/navx_frc-cpp:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
