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

def __setup_bzlmodrio_studica_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_headers",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-headers.zip",
        sha256 = "dcdc988f966815f31ad1c190e6dd52192f9ae8f8b9bc2c77529fd065156d8148",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-windowsx86-64.zip",
        sha256 = "f5d31621fbc82ff0b981e382a06a1b068128091e1cd3fcc291899394b7f5e98e",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-windowsx86-64static.zip",
        sha256 = "787f9b733672a688ad011f66edfaf87835f22cde1fdbcb8aa0b5a743691d4452",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxarm64.zip",
        sha256 = "d1ee6e46d969a519059a1f2599e375394b303391111410f41e97bb13a85f1bbe",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxarm64static.zip",
        sha256 = "cf1d1fb558afdc2f15f3537e0fcf646b1595d56948c20b911927d29368987236",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxx86-64.zip",
        sha256 = "aa026772a4a669532fae8e3a0e9cca99edcdce12288e70c4f95f4d19160f7db3",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxx86-64static.zip",
        sha256 = "15cadaa53b0bc61444b6dbeab27a873242d416a9e22c41607dcf656b3824a844",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxathena.zip",
        sha256 = "81533bc75e93a967bdb39b502ae35cfb9ece62b3ab2cb9e7935b659e58a94c5b",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxathenastatic.zip",
        sha256 = "8024ee13f20fdbb59c8edcef8a0cc9dda05a8ba85d0888b6d437ea489809dcf2",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxarm32.zip",
        sha256 = "0a9d8bdb5c3cbe048e8ac1aab6e3fb8cd5ae19d159ee68ae5174653c7235faea",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-linuxarm32static.zip",
        sha256 = "22d019f1081cdaaa3579395e4fe34b76acaef0122c4b48d2ac02f120ee008961",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-osxuniversal.zip",
        sha256 = "fad0000b6581ce2857b0761845df1ccef9fcd759b1d616b0846d00cf2a8de2f2",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libStudica.dylib osx/universal/shared/libStudica.dylib",
            "install_name_tool -change libntcore.dylib @rpath/libntcore.dylib osx/universal/shared/libStudica.dylib",
            "install_name_tool -change libwpinet.dylib @rpath/libwpinet.dylib osx/universal/shared/libStudica.dylib",
            "install_name_tool -change libwpiutil.dylib @rpath/libwpiutil.dylib osx/universal/shared/libStudica.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0/Studica-cpp-2026.0.0-osxuniversalstatic.zip",
        sha256 = "1398511ba5703e5db87a88f7187c879b1e55395925eb9bb34d777629b00d730b",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_headers",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-headers.zip",
        sha256 = "33d76913d51dbe3ab80c63cb1874dd05ef2270abc7b1da9543c169bc5cad5767",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-windowsx86-64.zip",
        sha256 = "4c49560846798069c226d00bcf6ed3c4e72bce796ff5a3ee7df0121bb2acfa97",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-windowsx86-64static.zip",
        sha256 = "784739e5b7396bea53713d5879e60342dafbdca23a9212e4e746508da3c548c4",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxarm64.zip",
        sha256 = "471b89b00d287fca55da06ae916ebf317c5954efb48b071e4157d9f294f8f926",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxarm64static.zip",
        sha256 = "009aba273e5224272bfcbdb5d5184dc8c59e7a9f0b0ad79b88b5bd43d214981c",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxx86-64.zip",
        sha256 = "ce886e57bd3f8aa1c52a1438bef5495662ce49c61b999d316074e660c4110775",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxx86-64static.zip",
        sha256 = "c37f83689f4bc90d7198a4c37fd2d798a287b6db2de0aafc391bf6b6e0389385",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathena",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxathena.zip",
        sha256 = "b9ab7b0552ba00e192e5cc80a1468cc8f480bf46383289076092f489503e1499",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxathenastatic.zip",
        sha256 = "54c70c9ae4184e34378c389c97c09b87ef03e131f4262fb3cc0e463f222bc100",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxarm32.zip",
        sha256 = "7690dfe773094868d2880fecb99ab783d9dfbbb7deeee22e683fe196f213357a",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-linuxarm32static.zip",
        sha256 = "b417a6022345faf768db5b8e40e6ea878ba0a7d6a10aeb7b5c8e432908bdc10c",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_osxuniversal",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-osxuniversal.zip",
        sha256 = "b1c07220b63bd83dca3f5c1b0ae3a8850de39ff9af79e7b413c69593bd9fb33f",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libStudicaDriver.dylib osx/universal/shared/libStudicaDriver.dylib",
            "install_name_tool -change libwpiHal.dylib @rpath/libwpiHal.dylib osx/universal/shared/libStudicaDriver.dylib",
            "install_name_tool -change libwpimath.dylib @rpath/libwpimath.dylib osx/universal/shared/libStudicaDriver.dylib",
            "install_name_tool -change libwpinet.dylib @rpath/libwpinet.dylib osx/universal/shared/libStudicaDriver.dylib",
            "install_name_tool -change libwpiutil.dylib @rpath/libwpiutil.dylib osx/universal/shared/libStudicaDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0/Studica-driver-2026.0.0-osxuniversalstatic.zip",
        sha256 = "2f8a111ce66c4ffe1f3282171b3b4e753af1d9e0c9e353656e4fb0c43b719e76",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_studica_cpp_dependencies():
    __setup_bzlmodrio_studica_cpp_dependencies(None)

setup_bzlmodrio_studica_cpp_dependencies = module_extension(
    __setup_bzlmodrio_studica_cpp_dependencies,
)
