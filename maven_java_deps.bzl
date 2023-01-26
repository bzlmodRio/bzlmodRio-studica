load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_navx_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_kauailabs_navx_frc_navx_java",
        artifact = "com.kauailabs.navx.frc:navx-java:4.0.442",
        artifact_sha256 = "fc6007e2ae048861db8b7050bac494f2c944a4803e2cf1d4b43ea0f953418563",
        server_urls = ["https://repo1.maven.org/maven2"],
    )

def setup_legacy_bzlmodrio_navx_java_dependencies():
    __setup_bzlmodrio_navx_java_dependencies(None)

setup_bzlmodrio_navx_java_dependencies = module_extension(
    __setup_bzlmodrio_navx_java_dependencies,
)
