vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-buffer
  REF d4ed52a766058bff2c8a9792ca1b0debbd51cb5f
  SHA512 2ebaad63255ab67f41e590d48dc2471db0d525816560f53de8826e3ad4bc829e17addb073b6cec3067559632f5254ff2df56cae6112d360172c99c81cc39c935
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
