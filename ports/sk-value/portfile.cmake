vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-value
  REF 5db1fb8ecbbd9dffbb1a8840878299d27b6c47c1
  SHA512 96def651ea47bea238194eaeb035aa215ba06c0e180c0c0dc8556f2fc4593e54b4559e505aa1e90be2da1dc29cac84f780a79f59f48c5b577029a42c6c8ae83d
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
