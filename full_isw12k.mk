# Release name
PRODUCT_RELEASE_NAME := isw12k

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/kyocera/isw12k/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := isw12k
PRODUCT_NAME := full_isw12k
PRODUCT_BRAND := kyocera
PRODUCT_MODEL := isw12k
PRODUCT_MANUFACTURER := kyocera
