# Boot LoongArch64-based Arch Linux

This project provides an environment for running LoongArch64-based Arch Linux on amd64.

## Usage
It is recommended to use docker
```
docker run -it --rm merore/archlinux-loongarch64
```
or you can clone this project and run
```
./start.sh
```

## Notice
1. The default user/password is `root/loongarch64`
2. The qemu-system-loongarch64 may runs very slowly, so please prepare a cup of coffee.
