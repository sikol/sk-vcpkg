vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sikol/sk-lazy
  REF 9eb60348497b29aeed36155a10a5ba0b53b53ffd
  SHA512 18be3f7000a36102ed995295d4550aedfcedba0d98b13a2c90602956b076808055eb0adb16772a41b1b8f048bdeba2a4fac10d6fc13651af7aaf52d183623bd5
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
