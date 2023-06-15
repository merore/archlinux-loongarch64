#!/bin/bash

QEMU=$(pwd)/archives/qemu-8.0.0
PATH=$QEMU/bin:$PATH

qemu-system-loongarch64 \
    -machine virt \
    -smp 4\
    -bios ./archives/edk2-loongarch64-code.fd \
    -serial mon:stdio \
    -net nic -net user \
    archives/archlinux.qcow2
