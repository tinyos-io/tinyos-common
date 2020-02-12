#!/bin/sh
rm -rf src/tinyos-main
git clone https://github.com/tinyos/tinyos-main src/tinyos-main


echo "======> Patching for tinyos-tools"
chmod +x ./common/patchs/tinyos_tools_build_toolchain_patch.sh
./common/patchs/tinyos_tools_build_toolchain_patch.sh


echo "======> Patching for tossim"
chmod +x ./common/patchs/tossim_build_toolchain_patch.sh
./common/patchs/tossim_build_toolchain_patch.sh


echo "======> Patching for documentations"
chmod +x ./common/patchs/documentation_patch.sh
./common/patchs/documentation_patch.sh


cd src/tinyos-main/tools


echo "======> Building tinyos-tools"
./Bootstrap
./configure
make



echo "======> Building doc"
cd ../doc
make all




