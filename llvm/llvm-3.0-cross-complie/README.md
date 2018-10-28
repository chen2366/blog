### 交叉编译llvm/clang (alpha平台)

- 将llvm3.0版本，从x86平台交叉编译到alpha平台

#### 依赖包

- cmake
- ninja-build (from backports in Ubuntu)
- gcc-4.7-arm-linux-gnueabihf
- gcc-4.7-multilib-arm-linux-gnueabihf
- binutils-arm-linux-gnueabihf
- libgcc1-armhf-cross
- libsfgcc1-armhf-cross
- libstdc++6-armhf-cross
- libstdc++6-4.7-dev-armhf-cross

#### 配置cmake

- DCMAKE_CROSSCOMPILING=True
- DCMAKE_INSTALL_PREFIX=<install-dir>
- DLLVM_TABLEGEN=<path-to-host-bin>/llvm-tblgen
- DCLANG_TABLEGEN=<path-to-host-bin>/clang-tblgen
- DLLVM_DEFAULT_TARGET_TRIPLE=arm-linux-gnueabihf
- DLLVM_TARGET_ARCH=ARM
- DLLVM_TARGETS_TO_BUILD=ARM
