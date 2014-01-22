## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := kyleve

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kyleve/device_kyleve.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kyleve
PRODUCT_NAME := cm_kyleve
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S7392
PRODUCT_MANUFACTURER := samsung
