vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-value
  REF ed48622c35cc3f398c3230a44b323e074a3587d2
  SHA512 08d59997bef207a2075f101b277155170584516151e73fd1e30876f9e6babeba6a9911fd4ae284b87c7677cb1f224c410dcbc394c0c94b200c5c3d09235cb61f
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
