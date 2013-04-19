## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := isw12k

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/kyocera/isw12k/device_isw12k.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := isw12k
PRODUCT_NAME := cm_isw12k
PRODUCT_BRAND := kyocera
PRODUCT_MODEL := isw12k
PRODUCT_MANUFACTURER := kyocera
