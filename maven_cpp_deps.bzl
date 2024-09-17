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
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-headers.zip",
        sha256 = "529b0cffa28af1a69e4916179cffd1c034b7eeb419adca6cdc941cd34bd0c6f0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-sources.zip",
        sha256 = "bf4f241c8d77635808361ff29610905caf1aaec487afc57b683b68bdb0d022e4",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxathena.zip",
        sha256 = "b4d769a50ad02eded2064f7d927850356e2f5af52e99086b67f05c132c81aeeb",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxathenastatic.zip",
        sha256 = "62566103a535d52c6a93adae98aaf283b40e3937098162748c7cc8994e8514bf",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm32.zip",
        sha256 = "9b2fe6c02b8547b9e13d8fa7672aa806b16a06ce817dfb5a1e5f25d2e59b3012",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm32static.zip",
        sha256 = "81437525d2b7ce54c0cb20493198958e7f52275a70e8996a3be9bbc6ef9d7d85",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm64.zip",
        sha256 = "8575c1d847f4ce9f753d74a85b6ff41b309a802d485784eff15469a8c400fe8c",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm64static.zip",
        sha256 = "d1681379262fb8a219c29be889ba5658af4f406e6f964b6f25d26138377f9259",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxx86-64.zip",
        sha256 = "914047f2b7994abb5ee3140b9d4f5836306f500fbc80ea804b834f199b845de5",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxx86-64static.zip",
        sha256 = "8a989adbfafb5021825ec4ba61f70c968b4ff463c4d4bfa3b57dc06682552206",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-osxuniversal.zip",
        sha256 = "f7071c93c955993047334c6371127646ab115b0214d787709ef76e2b986f5939",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libnavx-frc.dylib osx/universal/shared/libnavx-frc.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-osxuniversalstatic.zip",
        sha256 = "dae37dd3dd9acd508bf55911003bc6f90f554c14af371611be32dc70a58dcbe4",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-windowsx86-64.zip",
        sha256 = "5f4c66f623ca7679538cb9d80acfbb85a29c86a53a0542b17406ad1eafafd7dd",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-windowsx86-64static.zip",
        sha256 = "75c6e79fc261918e0d120755aa1a7e2291adac99336727624a403e7de09dca98",
        build_file = "@bzlmodrio-navx//private/cpp/navx-frc-cpp:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
