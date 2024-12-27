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
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-headers.zip",
        sha256 = "37b9a6a22a65f21c1fe6c389caa4590d32ff0f1347bf4d1c1c685eea1a00d1a7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxathena.zip",
        sha256 = "64bfd303a2f5ea00a30a61257c62cec4ee86525c3da66355baefe23bd787b46f",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxathenastatic.zip",
        sha256 = "0744d03799935d088df8425284cd2817d340be510feda7e5f3ab9fbbae0fe0f4",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxarm32.zip",
        sha256 = "0d52d61a370c835db0a18ec9fa1978bd40cb6f6d944d8f369532b7ec98ce279f",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxarm32static.zip",
        sha256 = "b2e336cdcf0a7201b4bfb10f1ce266c171f23a282b01cf4172c7fe14b049de28",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxarm64.zip",
        sha256 = "0e666795fcf70b34a3c7bd5326b6932bc2b4baa5e2545b527e40da60f2eed85f",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxarm64static.zip",
        sha256 = "5a40ff70ca8b05d798caf2f265838767714dca7e5da7c4edbc4830735fd87698",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxx86-64.zip",
        sha256 = "10c6f2a5d2850a5dd5e8c1b45669b4c599fb2f0120860edf91d455bd8374bcae",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-linuxx86-64static.zip",
        sha256 = "8298964a85e7fbfc13cddf7d103aa15365c8bb37eb7a4e6b11138705f1d54daa",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-osxuniversal.zip",
        sha256 = "c2a4b5373c00ace6f6d10ad5f9f50275632aa089bf9f0f03ea4c0635020929be",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-osxuniversalstatic.zip",
        sha256 = "276a2fcef1cac6af97728787f0ed9536094ac6ebf997331a3b4964f72ea9ba79",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-windowsx86-64.zip",
        sha256 = "653d0994465e8975644eb2182451576390c2455ca3b385918e3c1eece1b02fbf",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-cpp/2025.1.1-beta-4/Studica-cpp-2025.1.1-beta-4-windowsx86-64static.zip",
        sha256 = "02549c8bd73bf2bce34b0f7399b689e478c6405f792af473198af921561401ea",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_headers",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-headers.zip",
        sha256 = "4c7719852be9e007f710ad230beab3cfcf36653c9467a81b422b68b5d4e5150a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathena",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxathena.zip",
        sha256 = "76ada9f89077db3e7367889871218ed683d56f3ba36cdb43184f6a63fee911f7",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxathenastatic.zip",
        sha256 = "f70fa2e594a55351282afbd7ec405f66226b786419e89fe779625060ae08ac2e",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxarm32.zip",
        sha256 = "8a60deca2d86f11d7a85afab8e73bdafec95bf9b55bc3325b5312573193f1c46",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxarm32static.zip",
        sha256 = "4ebb5920d9da93d40c14188cae641c0ca95f422aaca9aa848e57b62298b7a532",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxarm64.zip",
        sha256 = "26957c5293a34b5b71fcc0fedb5d5feb926f297bae360fd01d1ea7c184c57d6d",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxarm64static.zip",
        sha256 = "08b7d5cb1b4dfdebef835bffd03d28b1ecccddaac4dc296580fffb0c70181a43",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxx86-64.zip",
        sha256 = "72754d090cef25aeb0931eeece2498550f3379c9d4adb5782ea1667c77ae4b18",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-linuxx86-64static.zip",
        sha256 = "abbd0bb4159aad9108e39717c19b1bcfbfa4ccb4fc7207a05327b8649269f99d",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_osxuniversal",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-osxuniversal.zip",
        sha256 = "c91fd4453fc660fbd2a37069540e8e100ce0e81cd90efaf3465fb2f38f9ef5aa",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-osxuniversalstatic.zip",
        sha256 = "518a31fe3cf7bca749090f44152b1ebb764a8046e2f3b70fe64749e23e7d78a5",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-windowsx86-64.zip",
        sha256 = "e13eb9975a969a9724b418677a9ba10616d293e8ea360db33541bd674040a8f1",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_studica_frc_studica-driver_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2025/com/studica/frc/Studica-driver/2025.1.1-beta-4/Studica-driver-2025.1.1-beta-4-windowsx86-64static.zip",
        sha256 = "2d314e85d1baecd01942d3c35e72010c4b821599901008626e3d99ae34f8d473",
        build_file = "@bzlmodrio-studica//private/cpp/Studica-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_studica_cpp_dependencies():
    __setup_bzlmodrio_studica_cpp_dependencies(None)

setup_bzlmodrio_studica_cpp_dependencies = module_extension(
    __setup_bzlmodrio_studica_cpp_dependencies,
)
