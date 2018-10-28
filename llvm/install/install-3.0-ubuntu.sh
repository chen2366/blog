#!/bin/bash

apt install wget gcc g++ make cmake  perl  -y

wget http://releases.llvm.org/3.0/llvm-3.0.tar.gz
wget http://releases.llvm.org/3.0/clang-3.0.tar.gz

tar --no-same-owner -zxvf llvm-3.0.tar.gz
tar --no-same-owner -zxvf clang-3.0.tar.gz

mv llvm-3.0.src llvm
mv clang-3.0.src llvm/tools/clang

mkdir build
cd build/
cmake -DCMAKE_BUILD_TYPE=Release ../llvm/
make -j${CPU_NUM}
make install

