load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_frc_java",
        artifact = "com.kauailabs.navx.frc:navx_frc-java:2025.1.1-beta-1",
        artifact_sha256 = "8c0f98dc881f821928fa33b4375ad1458708035a9cb878c20fc7357e5d82e1bf",
        server_urls = ["https://dev.studica.com/maven/release/2025"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
