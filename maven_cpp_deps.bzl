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
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-headers.zip",
        sha256 = "43d8595094a35846bcf67719d7e07fae15c1446fd68b623604901870a92765c4",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-sources.zip",
        sha256 = "2876476fe285aa92c1be42edce9710c6846d200d7e4dc19d93c5b54f41fbc5b2",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxathena.zip",
        sha256 = "ba50f97d5f26e019601cecf6a069378d90a76143f5aefe5151cb149ee45b15f0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxathenastatic.zip",
        sha256 = "20de4ce826a0ee33c01a2c7be9ef14db09dea249597afdd575026fa0b2e3c47a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxarm32.zip",
        sha256 = "8a482e2e4fe4f23b7643872f527ca011ea6bbf6559eead443a83690c8c8a5194",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxarm32static.zip",
        sha256 = "98c6ba599d16a6b316b14ed5f59910685b286dc08205436b083c550817c32436",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxarm64.zip",
        sha256 = "90cc90e37ebd1cc6e40d4af81bc9b5b307df35197d3e113efa8cbc7dd29a124c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxarm64static.zip",
        sha256 = "3f6056626c5215879be7d2e725fbe09bb91951a6b8a14af15b64ad50d00cb8a8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxx86-64.zip",
        sha256 = "4966986ba9014ff659b115b0c9b1d43e40a07b493f931fb211c54e4e464c5689",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-linuxx86-64static.zip",
        sha256 = "8002f5b3730e6990e0d2170e309eaccb5d42458a6a9f401de37164a016603382",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-osxuniversal.zip",
        sha256 = "978fd1aa7cfcac8cf8b79fea9c51099bd481d9faf94ec65f1c19712b83041304",
        build_file_content = cc_library_shared,
        patch_cmds = [
            "install_name_tool -id @rpath/libnavx-frc.dylib osx/universal/shared/libnavx-frc.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-osxuniversalstatic.zip",
        sha256 = "910df36d7a7838539a0e510444ff7f6c149cb646de8fe82b21d5d492408495e7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-windowsx86-64.zip",
        sha256 = "235dd815dfcc49937b6d50c7054d5fc7378228ef07a841032fc879ebdde7d3fe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.0.1-beta-4/navx-frc-cpp-2024.0.1-beta-4-windowsx86-64static.zip",
        sha256 = "ef41664496f0de7d274ffe6465519c71619862303b6d4f0815d3a1b96c6ffb85",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
