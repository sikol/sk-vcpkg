vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-error
  REF c6ca1689e4c3427ae41e54de2feb31a6c7c9235f
  SHA512 dafea2f9e3e2fbaed1c35f767dd3ce0ae5e637a817e5830c292ccd0dec82918e23e2565a967e8279ed90e584c1e3868756f17a2bfd777f3bd5d2592789b6694b
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()
#vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

file(
	INSTALL "${SOURCE_PATH}/LICENSE.txt"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)