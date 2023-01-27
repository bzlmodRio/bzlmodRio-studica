load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_frc_java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2023.0.3",
        artifact_sha256 = "51a99f1e58400716329db0a6d3114f5ebd637c9db6bc50d2cd12d6b895303f7b",
        server_urls = ["https://dev.studica.com/maven/release/2023"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
