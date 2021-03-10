vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-error
  REF 5b53a4d9b1320899d88aed1d835eaa527613bda5
  SHA512 24f37b806f032d610fb2049f26d555d57b732cbaeffca434e542451f0470504120388bc5f01808fd91588a86ac333292f116711f1c786c87be655a9967ae5b4c
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