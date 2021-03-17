vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-config
  REF d8963312e9f95389b339ffe11560370933850f61
  SHA512 d11003e1d0d5edd7f5ea82ef3059bcbacfe28d953998838e3325d709415c84f53d4fc4180fea8ca82fccacab0d6a20fa9e99c5d80f4a3a435109af0afd27cb8b
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
