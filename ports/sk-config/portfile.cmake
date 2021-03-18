vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-config
  REF 7668f1857454a20c17866c8f2edf6675e592d413
  SHA512 87289903892a342a25031ad069efd619d671782a3fe21f5440f88e1e0c66465db7cbce3880f06a0e790de4a22a794a6895cb55a511193ed3d36f6c85fb9e5d7e
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
