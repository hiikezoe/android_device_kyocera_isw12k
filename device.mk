# Init files in initramfs
PRODUCT_COPY_FILES += \
  device/kyocera/isw12k/root/init.target.rc:root/init.target.rc \
  device/kyocera/isw12k/root/init.qcom.rc:root/init.qcom.rc \
  device/kyocera/isw12k/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/kyocera/isw12k/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/kyocera/isw12k/root/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
  device/kyocera/isw12k/root/init.qcom.sh:root/init.qcom.sh \
  device/kyocera/isw12k/root/initlogo.rle:root/initlogo.rle \
  device/kyocera/isw12k/root/ueventd.rc:root/ueventd.rc

PRODUCT_PACKAGES += \
  audio_policy.msm7630_surf \
  audio.primary.msm7630_surf \
  copybit.msm7630_surf \
  gralloc.msm7630_surf \
  hwcomposer.msm7630_surf \
  lights.msm7630_surf \
  libaudioalsa \
  libaudioutils \
  libgenlock \
  liboverlay \
  libstagefrighthw
