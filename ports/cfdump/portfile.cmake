vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO kjhayes/cfdump
    REF 9e0a543d3fc8bef9c86c99a92d1c79304c3d3ed9
    SHA512 37acb7c695d50b53072b9e09ff423b2ec8e09fd4a0eabb579dabd1baeec56bbd946e3bd2123db3e6d68e94a81e45104b9fb96dd2933457e99bdd6016ac89654e
    HEAD_REF trunk
)
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")