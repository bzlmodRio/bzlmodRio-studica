load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_frc_java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2023.0.2",
        artifact_sha256 = "081d86072fc51de851e0880265589079a5a7a9c5e008c0a1040051357a924cd8",
        server_urls = ["https://dev.studica.com/maven/release/2023"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
