vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-buffer
  REF 06cd387481aa3927fcdd934468db668113dc0d8e
  SHA512 3a5a920dac35238b3c229822711d24f7b193f1f0d161111e74d5bcfd50e4c82759aabfb7214d34277de651a656d79dbaf05f43f5edfcb2e36cbc990710b4439c
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
