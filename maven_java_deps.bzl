load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_frc_java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2024.0.1-beta-3",
        artifact_sha256 = "10a75bc4d5eed429670b373f5f8e6d3b5abbc75643a10f2bb00de943e315a4bb",
        server_urls = ["https://dev.studica.com/maven/release/2024"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
