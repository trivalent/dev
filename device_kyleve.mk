$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/kyleve/kyleve-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/kyleve/overlay

LOCAL_PATH := device/samsung/kyleve
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kyleve
PRODUCT_DEVICE := kyleve


# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
        device/samsung/kyleve/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
        device/samsung/kyleve/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
        device/samsung/kyleve/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
                device/samsung/kyleve/qwerty.kl:system/usr/keylayout/qwerty.kl \
                device/samsung/kyleve/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl


