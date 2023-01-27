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
static_srcs = glob(["**/*.lib", "**/*.a"], exclude=["**/*jni.lib"])
shared_srcs = glob(["**/*.dll", "**/*.so*", "**/*.dylib"], exclude=["**/*jni.dll", "**/*jni.so", "**/*.so.debug", "**/libopencv_java*.dylib"])
shared_jni_srcs = glob(["**/*jni.dll", "**/*jni.so*", "**/*.jni.dylib", "**/libopencv_java*.dylib"], exclude=["**/*.so.debug"])

cc_library(
    name = "static_libs",
    srcs = static_srcs,
    visibility = ["//visibility:public"],
)

cc_library(
    name = "shared_libs",
    srcs = shared_srcs,
    visibility = ["//visibility:public"],
    deps = [
        ":static_libs",
    ]
)

cc_library(
    name = "shared_jni_libs",
    srcs = shared_jni_srcs,
    visibility = ["//visibility:public"],
)
"""

def __setup_bzlmodrio_navx_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-headers.zip",
        sha256 = "2b14eaa1df96dc749453e69807b01734e8674311ba63b430d772312ce507b4d5",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-sources.zip",
        sha256 = "c8a8031ad787da493c989dfc5af8381f7c0a7fb2b8c6bad52e4c699215c2da7a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxathena.zip",
        sha256 = "2ce10dc27c331e55b3bb3210f1b5cc2f0c24609c5a2e3ffd793a5e625c2c4feb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxathenastatic.zip",
        sha256 = "d9de721680aefcdb09dc0bf38de7884673d5c2490e232b988bb4b088085327d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm32.zip",
        sha256 = "de5e582a9e1bf34cb8f16ad69cb7363565ef0179e3b54d80bbea7c8924aded27",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm32static.zip",
        sha256 = "260e29b9db922a619bda51777cd1877ee455072f59ca04a8ce90195e5c205354",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm64.zip",
        sha256 = "a190f674ca19f3ededca2aa611431c4459153696ed4977a22f7dd5fbaee665c3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm64static.zip",
        sha256 = "d8ecdc1652eee0583594b64cbe89c373465daf85e197906e13484d2ae1d75a26",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxx86-64.zip",
        sha256 = "434c48aa3904b3e8e856442546932f9b6c3aa014df99bc891f3950c37e010265",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxx86-64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxx86-64static.zip",
        sha256 = "75015c1346f674e8e3ae06612800d6d313c94e2664e425380ec4a4b8f8644600",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-osxuniversal.zip",
        sha256 = "7c4fb66b9c0075c45931c5ebbcebf0b56e4eaa52f1bfedbc10ad50bf9ee897dc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-osxuniversalstatic.zip",
        sha256 = "9cc9907daccdd7f8d4797b34debb1e5f4ae372fa1a9faf875500a52e6f11ffe6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-windowsx86-64.zip",
        sha256 = "3e5007c5f5130943177fff8aea93d240fd06eae4758de89f451d9bc925c88431",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-windowsx86-64static.zip",
        sha256 = "a2bb81741c5a5eebebc2b32d29f5aabfafa6599fab3c11de43712f761af447da",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_navx_cpp_dependencies():
    __setup_bzlmodrio_navx_cpp_dependencies(None)

setup_bzlmodrio_navx_cpp_dependencies = module_extension(
    __setup_bzlmodrio_navx_cpp_dependencies,
)
