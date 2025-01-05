load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_studica_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_studica_frc_studica_java",
        artifact = "com.studica.frc:Studica-java:2025.0.0",
        artifact_sha256 = "781a93b242889b0da2bbbbf83fad26917f4c7a4b39610849f6136aa3798b7d8d",
        server_urls = ["https://dev.studica.com/maven/release/2025"],
    )

def setup_legacy_bzlmodrio_studica_java_dependencies():
    __setup_bzlmodrio_studica_java_dependencies(None)

setup_bzlmodrio_studica_java_dependencies = module_extension(
    __setup_bzlmodrio_studica_java_dependencies,
)
