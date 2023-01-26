load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_java",
        artifact = "com.kauailabs.navx.frc:navx-java:4.0.435",
        artifact_sha256 = "1e236ffef47740c2aef5ef2ee32209d3fde2eb4b96b8b38de0e9d5bd25007311",
        server_urls = ["https://repo1.maven.org/maven2"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
