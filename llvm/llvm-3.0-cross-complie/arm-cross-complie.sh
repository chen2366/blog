#!/bin/bash

# 安装依赖包
apt install -y cmake ninja-build gcc-4.7-arm-linux-gnueabihf gcc-4.7-multilib-arm-linux-gnueabihf binutils-arm-linux-gnueabihf libgcc1-armhf-cross libsfgcc1-armhf-cross libstdc++6-armhf-cross libstdc++6-4.7-dev-armhf-cross

mkdir -p build

cmake \
    -DCMAKE_CROSSCOMPILING=True \
    -DCMAKE_INSTALL_PREFIX=/root/alpha \
    -DLLVM_TABLEGEN=/root/build/bin/llvm-tblgen \
    -DCLANG_TABLEGEN=/root/build/bin/clang-tblgen \
    -DLLVM_TARGET_ARCH=Alpha \
    -DLLVM_TARGETS_TO_BUILD=Alpha ../llvm

make
