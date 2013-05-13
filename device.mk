# Init files in initramfs
PRODUCT_COPY_FILES += \
  device/kyocera/isw12k/root/init.rc:root/init.rc \
  device/kyocera/isw12k/root/init.target.rc:root/init.target.rc \
  device/kyocera/isw12k/root/init.qcom.rc:root/init.qcom.rc \
  device/kyocera/isw12k/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/kyocera/isw12k/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/kyocera/isw12k/root/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
  device/kyocera/isw12k/root/init.qcom.sh:root/init.qcom.sh \
  device/kyocera/isw12k/root/init.mount_overlay.sh:/root/init.mount_overlay.sh \
  device/kyocera/isw12k/root/initlogo.rle:root/initlogo.rle \
  device/kyocera/isw12k/root/ueventd.rc:root/ueventd.rc
