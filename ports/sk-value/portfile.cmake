vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-value
  REF 5594b6bb3921b7b8413babea413d83507b438df5
  SHA512 f6af5c94e443313db5b506fb3abb5823d89e7010e75486ca09f44a7d7673d1d2d3b014a3e5a68c06c2e0628ee82899edabdde9f041489c8efcfcc92fb7a82283
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
