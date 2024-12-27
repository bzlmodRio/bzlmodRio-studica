load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def download_dependencies():
    # Rules Java
    http_archive(
        name = "rules_java",
        sha256 = "8afd053dd2a7b85a4f033584f30a7f1666c5492c56c76e04eec4428bdb2a86cf",
        url = "https://github.com/bazelbuild/rules_java/releases/download/7.6.5/rules_java-7.6.5.tar.gz",
    )

    # JVM External
    http_archive(
        name = "rules_jvm_external",
        sha256 = "08ea921df02ffe9924123b0686dc04fd0ff875710bfadb7ad42badb931b0fd50",
        strip_prefix = "rules_jvm_external-6.1",
        url = "https://github.com/bazelbuild/rules_jvm_external/releases/download/6.1/rules_jvm_external-6.1.tar.gz",
    )

    # Bazelrio Rules
    http_archive(
        name = "rules_bazelrio",
        sha256 = "0c5a98476ac5b606689863b7b9ef3f7d685c47ce2681e448ca977e8e95de31c1",
        url = "https://github.com/bzlmodRio/rules_bazelrio/releases/download/0.0.14/rules_bazelrio-0.0.14.tar.gz",
    )

    # Roborio Toolchain
    http_archive(
        name = "rules_bzlmodrio_toolchains",
        sha256 = "fe267e2af53c1def1e962700a9aeda9e8fdfa9fb46b72167c615ec0e25447dd6",
        url = "https://github.com/wpilibsuite/rules_bzlmodRio_toolchains/releases/download/2025-1/rules_bzlmodRio_toolchains-2025-1.tar.gz",
    )

    ########################
    # bzlmodRio dependencies

    # bzlmodrio-allwpilib
    http_archive(
        name = "bzlmodrio-allwpilib",
        sha256 = "0e66d46695d90ab61a7a27b626d8a4c7496c780af83fcd75972cd1a93babc940",
        url = "https://github.com/bzlmodRio/bzlmodRio-allwpilib/releases/download/2025.1.1-beta-3/bzlmodRio-allwpilib-2025.1.1-beta-3.tar.gz",
    )

    # bzlmodrio-opencv
    http_archive(
        name = "bzlmodrio-opencv",
        sha256 = "4f4a607956ca8555618736c3058dd96e09d02df19e95088c1e352d2319fd70c7",
        url = "https://github.com/bzlmodRio/bzlmodRio-opencv/releases/download/2025.4.10.0-2/bzlmodRio-opencv-2025.4.10.0-2.tar.gz",
    )

    # bzlmodrio-ni
    http_archive(
        name = "bzlmodrio-ni",
        sha256 = "197fceac88bf44fb8427d5e000b0083118d3346172dd2ad31eccf83a5e61b3ce",
        url = "https://github.com/bzlmodRio/bzlmodRio-ni/releases/download/2025.0.0/bzlmodRio-ni-2025.0.0.tar.gz",
    )

    ########################
