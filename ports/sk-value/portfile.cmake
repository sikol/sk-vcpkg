vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-value
  REF 6b6c9e6f6a131828114521faf68a8f8064604e77
  SHA512 3593d41b117ee46a119d1b5172d6c2bf5d33ffc7e2e61bdad82a3e77076052bc26b1c6583379c7c78fe18b1a7b52875fe3f0a52110e498700e688694caee8594
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
