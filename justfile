# Justfile with my saved commands

build_kernel_riscv:
    make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j14
    echo $(date) > .last-build # Touch file for automated watchers

dt_check_riscv:
    make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- dtbs_check W=1 -j14

config:
    make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- menuconfig
