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
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-headers.zip",
        sha256 = "bebf441979484ee699a330f82ab402b5363edc4a05522485a653e07263ae826a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-windowsx86-64.zip",
        sha256 = "84c9ac6284c7b7ad02a64b24598a4173211e918613647ef721d091666f67e002",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-windowsx86-64static.zip",
        sha256 = "cfebec9aff50d3eebd69487ced6efe1234844829daac4ea22ecdb56894930312",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxarm64.zip",
        sha256 = "0f3c3dcb02d173aa9d4d25db57cef4e4b00e87288c70b8e38f204b7c50e0e7bb",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxarm64static.zip",
        sha256 = "72ca1c0d9f8dc00a8612f22bc584d3c385e6b41f3578ded615113928d46f5b5c",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxx86-64.zip",
        sha256 = "c1d71e47b63867679d09bc232aafce8f17e9e1d5e23940ed74cebef3a01d99a1",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxx86-64static.zip",
        sha256 = "a79272ea6969f1b7a4905ac5ecd2f2ee02c3353e3bcdc27446db98931fd1dd4e",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxathena.zip",
        sha256 = "f77e0da8314c61b35fcd443f396a7004d03ea0c049eb582400107186f2d7a6d6",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxathenastatic.zip",
        sha256 = "02c264ec3c8c763d50741b577125f9dc09acb403a1ce6898bf22efa8d712496d",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxarm32.zip",
        sha256 = "0736d333e5263cea524a6a5f13872d73e4a73ab5b3586f2e3961936266c64133",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-linuxarm32static.zip",
        sha256 = "de0e66759f8a84956456f99561bd96b56a666312c7fc0f944fba1e829ecd33bd",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-osxuniversal.zip",
        sha256 = "fa254a296da85a1a49130c40453b6bfd8718f3acc5d55702abc3aa5a99d9e575",
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
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-cpp/2026.0.0-beta/Studica-cpp-2026.0.0-beta-osxuniversalstatic.zip",
        sha256 = "076e970d675c2c4c3c9a198da4c38401bd2d9830e3cc5775dc066499ef478cfd",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_headers",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-headers.zip",
        sha256 = "6542a526cadbacdc75495ac8a531d70d463dd7072e39aefe9c39d4d7a8d04d5d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-windowsx86-64.zip",
        sha256 = "1c54c1822670ab1d5de09203679b1106d49bc9368eda1938edc8e0efeb0dbeb3",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-windowsx86-64static.zip",
        sha256 = "d1628fee50b951045d353fddc16c8cc7bed4f7b78cd3d5a004ca93e2702e0952",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxarm64.zip",
        sha256 = "0c03ab9d616b3d93857af024b3bac7aaf27f67b74efaaad5ac002001abba010c",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxarm64static.zip",
        sha256 = "f06756dfb6a9ea9538939e3d8fdac029d4279238451c0e7dd5deac88339458cb",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxx86-64.zip",
        sha256 = "d24fe5ace924627af057a58667b68c2ea26c1695d3f90b443ab4014eb850dfd7",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxx86-64static.zip",
        sha256 = "5772388d66c617811744b1eefd94169e646dda78b5f675d5af894113a84f6d3d",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathena",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxathena.zip",
        sha256 = "5ba2a0511ff4699e8a156fe82d541a4c2a402b21eaf2c6d59daa14acee338090",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxathenastatic.zip",
        sha256 = "4132e09c8a92833d7ed6114f214dbfa047749f5fe72aebaf32ff6264b0a155f0",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxarm32.zip",
        sha256 = "1ca3cd953de40bdfeb850bf7db5e9edca5cb99e7a1d1c22031ab6b51f0577430",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-linuxarm32static.zip",
        sha256 = "ac7d07c1017edbc7a5f1f8630918b289eaf5d77d705b11c541d5eaf30981b25b",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_osxuniversal",
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-osxuniversal.zip",
        sha256 = "b62d8eee7c88945463aec1b83cbb0733170be99e640558634d71c3a47ae8b2c7",
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
        url = "https://dev.studica.com/maven/release/2026/com/studica/frc/Studica-driver/2026.0.0-beta/Studica-driver-2026.0.0-beta-osxuniversalstatic.zip",
        sha256 = "6713e473a1a7525b9f8ccd140674d82dc917bc4501edae4992c5c13bf3a3e398",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_studica_cpp_dependencies():
    __setup_bzlmodrio_studica_cpp_dependencies(None)

setup_bzlmodrio_studica_cpp_dependencies = module_extension(
    __setup_bzlmodrio_studica_cpp_dependencies,
)
