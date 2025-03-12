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
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-headers.zip",
        sha256 = "9670da0fdec3dd85c031caa7f431b38e69a8c3f2da2ef2459edc1c856533959c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxathena.zip",
        sha256 = "abecdc9f17ad93fd972eeb7a7ea0cc3004c6aec79aab1c37599d313acc0484d1",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxathenastatic.zip",
        sha256 = "1270cf2debea4006153fcd1bc5f39a31f26834df55840eea417b4650e0c8d2c9",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxarm32.zip",
        sha256 = "fa2e415ccc9da9d72a364463d245ee68c20bf02327826afdfc94697a2551b705",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxarm32static.zip",
        sha256 = "6ce4ac4a1bf75c05474204d6f4f40b3c6943fbd78bdc09563a97d1ed45f7f71e",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxarm64.zip",
        sha256 = "be38315a63614716187d101ab6857b0ca6759e954e021568d03fa25f1ee0d51d",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxarm64static.zip",
        sha256 = "58da2dfe117fff712a05d6843e5ac6e28473ab0a23d0514277ad8995caa604e2",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxx86-64.zip",
        sha256 = "0ab38c12ec6810e5a8eff45b8cdf6a2156e89c5e0bafa01da7f4d8e439338404",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-linuxx86-64static.zip",
        sha256 = "c53638962c256af75b665227bae58e50629740ae0652231c3c21cec00bcdd1dd",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-osxuniversal.zip",
        sha256 = "e91707b4d38bf8d22e42225dd14276b0445fb3a529119045c3990d5db1360f97",
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
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-osxuniversalstatic.zip",
        sha256 = "2b861855d829d0db5a4cf552626191d22a291a0fbfefad93d351add281ef666d",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-windowsx86-64.zip",
        sha256 = "b0cfe4dfd96a62b18cfe6fcca2dd419ef1221b36537e6de4a8e5d5d96652c302",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.1/Studica-cpp-2025.0.1-windowsx86-64static.zip",
        sha256 = "a975035d83951222da28c10ac42a58c49c8c53b69415e5b393a4987c7a17b0af",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_headers",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-headers.zip",
        sha256 = "bd8cd382fb48dac51ff78e9dd9b1167bc1a617d3df9727fb53d96484fcd335f5",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathena",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxathena.zip",
        sha256 = "fb29f0220bf731306b279873821cda2503c397eb6b18986d7d62b91469097d42",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxathenastatic.zip",
        sha256 = "e3ab1e3fe455ca0324d0a00a3583a48b6057a449915d65fb2eca8b132c5aeaec",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxarm32.zip",
        sha256 = "53bcd66116c16f3a3222dc4bf2d9f2d0ce653478fb3fac6b2d09233ca6a1aea7",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxarm32static.zip",
        sha256 = "5147560de801ee55d01664d3e4b3943a49d94d99c170f431a9a7d64b627fbdea",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxarm64.zip",
        sha256 = "6888a1b318a9cfdae6b27c6cf37fd017c5542259f38ab69d241ed4f409d1608e",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxarm64static.zip",
        sha256 = "27d34c37bf08bc592f39356b95f82a7c1e69788ece8c569f3f544d230338de29",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxx86-64.zip",
        sha256 = "a05f4fb819e0d42ac9780b8e6696d3fd4570e73f3da0fac2407f47aa11afff80",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-linuxx86-64static.zip",
        sha256 = "974d2891dc41607511c64dfe69b5f8895bd014bc9d18fbc558edc8b2bcae9a7e",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_osxuniversal",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-osxuniversal.zip",
        sha256 = "4aad8fc1e77e52d5cad3e21ddc3c72c5f0376c826ff60072e7c5f4ea5c63ea2b",
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
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-osxuniversalstatic.zip",
        sha256 = "7d5decf15c097a376d0138cf9af3cbe89d1fa7b69ecbf879a35059d10ab63a72",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-windowsx86-64.zip",
        sha256 = "afa1695c37f2b9b5be56da81de88556024a986bfb67e88f38e1f33b7e08799ee",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.1/Studica-driver-2025.0.1-windowsx86-64static.zip",
        sha256 = "10d674466ccc021537b9ede726d3e76fa4ee48e5981844fed9cae1a9632a5df3",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_studica_cpp_dependencies():
    __setup_bzlmodrio_studica_cpp_dependencies(None)

setup_bzlmodrio_studica_cpp_dependencies = module_extension(
    __setup_bzlmodrio_studica_cpp_dependencies,
)
