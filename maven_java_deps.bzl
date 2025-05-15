load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_studica_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_studica_frc_studica_java",
        artifact = "com.studica.frc:Studica-java:2025.0.1",
        artifact_sha256 = "1e0a6df659e2181fb00115f74e61a85ebc18e4dfab6a72d33c87a83e23d50e64",
        server_urls = ["https://dev.studica.com/maven/release/2025"],
    )

def setup_legacy_bzlmodrio_studica_java_dependencies():
    __setup_bzlmodrio_studica_java_dependencies(None)

setup_bzlmodrio_studica_java_dependencies = module_extension(
    __setup_bzlmodrio_studica_java_dependencies,
)
