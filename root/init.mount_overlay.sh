#!/system/bin/sh

#/system/xbin/losetup /dev/block/loop1 /data/b2g-userdata.img
/system/bin/mount -t overlayfs -olowerdir=/system,upperdir=/b2g overlayfs /system
/system/bin/mount -t overlayfs -olowerdir=/b2g-data,upperdir=/data overlayfs /data
