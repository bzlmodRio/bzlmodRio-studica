load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_studica_frc_studica_java",
        artifact = "com.studica.frc:Studica-java:2025.1.1-beta-4",
        artifact_sha256 = "266be0cadcaaa2c41334020831493355cd004dbdb02967c4acefbaaf05f74c55",
        server_urls = ["https://dev.studica.com/maven/release/2025"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
