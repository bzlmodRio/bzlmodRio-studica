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
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-headers.zip",
        sha256 = "2d88f0ff00bd14b78fc0d435d4ca4eb3f445668d61e3bcfe461165770b105148",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-sources.zip",
        sha256 = "16470dafd40a3a0a6c54a058eda0956774bd22a7f66d385a0a9430d4d906817b",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxathena.zip",
        sha256 = "884fcabfad8e51fb2b385cbafeb8b5dab8498542eb8259027b5fab458caf6fbf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxathenastatic.zip",
        sha256 = "1670fb48c78dad28cc67bf7aedf07b4ddcb42159fe1d5093688becf03270651a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxarm32.zip",
        sha256 = "852c7762b92ce8350956c1c18ffddc3b874990303bac65a778fc5e14c02f637f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxarm32static.zip",
        sha256 = "0a132e7e817680dc216ddc70436ef0f4cda5d66aaa937a03bf22d404fe429571",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxarm64.zip",
        sha256 = "9e3de6db6b2e955dcc0206a8f63d24cc74834bff9d41f271e13a85be7f650cf5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxarm64static.zip",
        sha256 = "3eae89f3d9af130ec232a82fee85adb6f9f42b9065c0a9144c1c31ef1ac290b2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxx86-64.zip",
        sha256 = "7badea99e0e17858e07fbf90fb0a304583a300e4d49cd0a518741e96f1eda0fe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-linuxx86-64static.zip",
        sha256 = "1833b73e93b82cd8848e3fbca1caae406b9ec26de2d9a9a6c7808badaf09b3cb",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-osxuniversal.zip",
        sha256 = "60ebf456e39be163074cfcd88771e3df3f5807804c2ad7cbaca7ca24ec3a5a02",
        build_file_content = cc_library_shared,
        patch_cmds = [
            "install_name_tool -id @rpath/libnavx-frc.dylib osx/universal/shared/libnavx-frc.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-osxuniversalstatic.zip",
        sha256 = "865a6d0a3b38a4f931a82db02be786458ee945d8842acc197efd6443d695ceaa",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-windowsx86-64.zip",
        sha256 = "d8243bbf7437591c2b3f3b1d05c641601d2278b35f40ed7a6d2507930b9e0535",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-3/navx-frc-cpp-2024.0.1-beta-3-windowsx86-64static.zip",
        sha256 = "8a53bbbac1efe86d84f4944e6ceb699ef054ba9abcc173faf5edae9a597ef0da",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
