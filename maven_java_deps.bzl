load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_java",
        artifact = "com.kauailabs.navx.frc:navx-java:4.0.447",
        artifact_sha256 = "fb5a8b4dd5f60725af6a1f9ce1236c10ad4227ab1f1ea6d854e88d6973590a8e",
        server_urls = ["https://repo1.maven.org/maven2"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
