### OpenBlas 学习笔记

#### 安装

```
# apt install -y gfortran
# yum install -y libgfortran-dev

wget https://github.com/xianyi/OpenBLAS/archive/v0.3.3.tar.gz
tar zxvf v0.3.3.tar.gz
cd OpenBLAS-0.3.3
make
make install PREFIX=/dir-to-install/

# 添加环境变量
export LD_LIBRARY_PATH=/home/chenx/Public/openblas/lib
```

