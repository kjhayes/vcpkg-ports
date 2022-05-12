vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO kjhayes/iostream-util
    REF 05e1f76673292bb958fdd97c53fa42be0da4a760
    SHA512 2e514a41399a0dadab81ffca4fdfbae4a04722211928f2e91674c58bea81b5fa6454abc0bf2e745efd02de0892b72099fabfcc2002bb0850813e4f9ab3c741cf
    HEAD_REF trunk
)
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")