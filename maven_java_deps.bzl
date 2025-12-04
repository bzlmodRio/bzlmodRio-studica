load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_studica_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_studica_frc_studica_java",
        artifact = "com.studica.frc:Studica-java:2026.0.0-beta",
        artifact_sha256 = "9d9ca9f6d4a527aca32727045031cb2732b71a50152133655d719e406d961f0f",
        server_urls = ["https://dev.studica.com/maven/release/2026"],
    )

def setup_legacy_bzlmodrio_studica_java_dependencies():
    __setup_bzlmodrio_studica_java_dependencies(None)

setup_bzlmodrio_studica_java_dependencies = module_extension(
    __setup_bzlmodrio_studica_java_dependencies,
)
