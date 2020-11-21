#!/bin/bash
echo -n "Waiting for DFU Device";
while [ -z "`dfu-util -l | grep 'Found DFU'`" ]
do
    echo -n ".";
done
echo "Gotcha!";
dfu-util -R -a all -D output/images/sysimage-sdcard.img
# dfu-util -a u-boot -D output/images/u-boot-sunxi-with-spl.bin
# dfu-util -a boot -D output/images/bootfs.vfat
# dfu-util -a rom -D output/images/rootfs.ext4
# dfu-util -a devicetree.dtb -D output/images/devicetree.dtb
# dfu-util -a zImage -D output/images/zImage
