import os

from bazelrio_gentool.load_vendordep_dependency import vendordep_dependency
from get_allwpilib_dependencies import get_allwpilib_dependencies
from bazelrio_gentool.deps.dependency_container import (
    ModuleDependency,
)


def get_navx_dependencies(
    use_local_allwpilib=False,
    use_local_opencv=False,
    use_local_ni=False,
    allwpilib_version_override="2024.1.1-beta-4",
    opencv_version_override="2024.4.8.0-1",
    ni_version_override="2024.2.0",
):
    SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
    group = vendordep_dependency(
        "bzlmodrio-navx",
        os.path.join(SCRIPT_DIR, f"vendor_dep.json"),
        fail_on_hash_miss=False,
        has_static_libraries=True,
        install_name_lookup={
            "navx-frc-cpp": dict(deps=[], artifact_install_name="navx-frc")
        },
    )

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
    group.add_module_dependency(allwpilib_dependency)

    return group
