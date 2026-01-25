load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_studica_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_studica_frc_studica_java",
        artifact = "com.studica.frc:Studica-java:2026.0.0",
        artifact_sha256 = "6428e309b1ecfdfdcbc58f671ced189874496adf1aec786a4f93554655e457c3",
        server_urls = ["https://dev.studica.com/maven/release/2026"],
    )

def setup_legacy_bzlmodrio_studica_java_dependencies():
    __setup_bzlmodrio_studica_java_dependencies(None)

setup_bzlmodrio_studica_java_dependencies = module_extension(
    __setup_bzlmodrio_studica_java_dependencies,
)
