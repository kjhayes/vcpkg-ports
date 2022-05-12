vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO kjhayes/cfdump
    REF b1cf7654c8b61498e6adc68c304d441bb00a5060
    SHA512 fd0eb30b082c5a15137b91bcd8f8327415ed85e316fb56afd20c65b7429432276ead53b1ac1e2c09e5afaf1d1aeca069a8c205594c9ad7f4157daf62c6b97e45
    HEAD_REF trunk
)
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")