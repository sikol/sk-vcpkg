vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-config
  REF ada0c72ac5703763b1f1d9aadc2cc3850bf11acc
  SHA512 10817152fb0116ec4141f57bb7765b6fa3a5b7e674202590e6da36b42926ad8cfae4df3eb28355cf86c5e677893f473fdc69c4efd44359f8a43c33e0fa591af6
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
