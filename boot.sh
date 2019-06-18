#!/bin/bash

QVER=v2.12.0
KVER=v5.1
RVER=2016.05

./qemu/$QVER/bin/qemu-system-arm -M versatilepb -m 128M -smp 1 -no-reboot -nographic \
	-kernel kernel/$KVER/zImage \
	-dtb kernel/$KVER/versatile-pb.dtb \
	-initrd root/$RVER/rootfs.cpio.gz \
	-append 'route=172.17.0.5 root=/dev/ram0  console=ttyAMA0' \
	#-net nic,model=smc91c111 -net tap
