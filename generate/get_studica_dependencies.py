import os

from bazelrio_gentool.deps.dependency_container import ModuleDependency
from bazelrio_gentool.load_vendordep_dependency import vendordep_dependency
from get_allwpilib_dependencies import get_allwpilib_dependencies


def get_studica_dependencies(
    use_local_allwpilib=False,
    use_local_opencv=False,
    use_local_ni=False,
    allwpilib_version_override="2025.1.1",
    opencv_version_override="2025.4.10.0-3",
    ni_version_override="2025.2.0",
):
    SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))

    allwpilib_dependency = ModuleDependency(
        get_allwpilib_dependencies(
            use_local_opencv=use_local_opencv,
            use_local_ni=use_local_ni,
            opencv_version_override=opencv_version_override,
            ni_version_override=ni_version_override,
        ),
        use_local_version=use_local_allwpilib,
        local_rel_folder="../../libraries/bzlmodRio-allwpilib",
        remote_repo="bzlmodRio-allwpilib",
        override_version=allwpilib_version_override,
    )

    group = vendordep_dependency(
        "bzlmodrio-studica",
        os.path.join(SCRIPT_DIR, f"vendor_dep.json"),
        fail_on_hash_miss=False,
        has_static_libraries=True,
        install_name_lookup={
            "Studica-driver": dict(
                artifact_install_name="StudicaDriver",
                deps=[
                    allwpilib_dependency.container.get_cc_dependency("hal-cpp"),
                ], 
            ),
            "Studica-cpp": dict(
                artifact_install_name="Studica",
                deps=[
                    allwpilib_dependency.container.get_cc_dependency("wpiutil-cpp"),
                    allwpilib_dependency.container.get_cc_dependency("ntcore-cpp"),
                ], 
            )
        },
    )
    group.add_module_dependency(allwpilib_dependency)

    group.add_cc_meta_dependency(
        "studica-driver",
        deps=[
            "Studica-driver",
            "hal-cpp",
        ],
        platform_deps={},
    )

    group.add_cc_meta_dependency(
        "studica-cpp",
        deps=[
            "Studica-cpp",
            "Studica-driver",
            "wpilibc-cpp",
        ],
        platform_deps={},
    )

    group.add_java_meta_dependency(
        "studica-java",
        group_id=f"com_studica_frc",
        deps=[
            "wpilibj-java",
            "studica-driver",
        ],
    )

    return group
