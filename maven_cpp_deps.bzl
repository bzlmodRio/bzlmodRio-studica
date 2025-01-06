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
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-headers.zip",
        sha256 = "8fe8108937ea15ce7aa5cdaa12d2ded3e03d421ce3161727f2fc54c491f609c1",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxathena.zip",
        sha256 = "2cd1d3cdcff1608fb15a1217ef57358a0d240f901395b425754f8a150bfeccaa",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxathenastatic.zip",
        sha256 = "0bf37f6a9c4313541f51a942e698cbed911f2d60c15aeee3095b87aa718e3d2c",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxarm32.zip",
        sha256 = "17706d9c9d202891d6ffb1a9c6a126ca0eeda2b56036ae19ac8d50a589ca7c19",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxarm32static.zip",
        sha256 = "04c6a82fec8964607ed63ccda887c2f5c8ef81fd73438e1e02c16f06d63e0412",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxarm64.zip",
        sha256 = "2ff07de7ed014096cbae3a4eeb8219945867d83da6de52fd23bfa4efd1d008c9",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxarm64static.zip",
        sha256 = "40af524487e25224e9d43eeb26533ceb8a3fbe4dcfaaf8d875b97b899494374c",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxx86-64.zip",
        sha256 = "5e71a7ef99cc1c151364ff0c5abcc7cdb7f39ccc132cef0e26766fa8d10a837a",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-linuxx86-64static.zip",
        sha256 = "327296f67288b0d7f5dcee94b2255d653348941c383b6bca8be27d55db1c8b51",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-osxuniversal.zip",
        sha256 = "a666584947174390ee2cba944f572ef9545275f31d5cf514d70ed1631b8c3968",
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
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-osxuniversalstatic.zip",
        sha256 = "7350e481c4c958b255c45b649b2170b8a784a4d1688ba36e76a7b89110b65d4a",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-windowsx86-64.zip",
        sha256 = "335355269813c4a47854a61f2221994c90a32decc3c5ec038319e61e7da86f93",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.0.0/Studica-cpp-2025.0.0-windowsx86-64static.zip",
        sha256 = "dc7d12f5e7b1bb6620146542ec5896ab068e8efe29b9bb5800c1d7f9f16e6111",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_headers",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-headers.zip",
        sha256 = "74a8d761d91d606a50af08114e4de47cbf34f09825ccaeebfb439a847d526ee0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathena",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxathena.zip",
        sha256 = "4c0579efb96bba282db0bd0c9d864b079dd90945cbaf188b3afedc76cf592d7d",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxathenastatic.zip",
        sha256 = "cd1a6728b1936d59ed8a086d1d472682c6fe887a66d7088ceb7cf33cc79d7350",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxarm32.zip",
        sha256 = "2a2ac3130141039110f06409f67f986696e1fc0946b88f91410302ae9d014d97",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxarm32static.zip",
        sha256 = "21b5d1cbf9edc0ea26f176eab1628925f30e8811b3d3bf0e886c4a0b87ecfd3e",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxarm64.zip",
        sha256 = "0a3cc9c84cc619aac5c9c24eb4f16b78350f791e6ac6561ba765ec2790a33c0b",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxarm64static.zip",
        sha256 = "3cdfb3295e10c588cb6138b012bcbb5adcc239ac83b2f1bf846370d92d479cad",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxx86-64.zip",
        sha256 = "13debc5bf01eae79829fc1bf24df76613699aece291b3e419e81041dbca12668",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-linuxx86-64static.zip",
        sha256 = "cf72705908820e91ff19e561254dace2a440937661760fe2ecfeb0ba1ee9ddca",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_osxuniversal",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-osxuniversal.zip",
        sha256 = "646c13b597680537ee72cc69c3c2c5af1a159a455bad89ae4758825dcf86e7be",
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
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-osxuniversalstatic.zip",
        sha256 = "9978989c58c0a3a52f993a33320383a7c6a2070bcb9ea2f55f79fa5110875a51",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-windowsx86-64.zip",
        sha256 = "d9e8cbacac31e9617e5d65e23313c0e595e9160845464da27ee78157205fd1e8",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.0.0/Studica-driver-2025.0.0-windowsx86-64static.zip",
        sha256 = "8ca7b39b32917b21d4b3abd27a038c841c771df046b51a5673eb4f8fb73b00f1",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_studica_cpp_dependencies():
    __setup_bzlmodrio_studica_cpp_dependencies(None)

setup_bzlmodrio_studica_cpp_dependencies = module_extension(
    __setup_bzlmodrio_studica_cpp_dependencies,
)
