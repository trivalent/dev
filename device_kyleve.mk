$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/kyleve/kyleve-vendor.mk)

# Use high-density artwork where available
PRODUCT_LOCALES += hdpi

DEVICE_PACKAGE_OVERLAYS += device/samsung/kyleve/overlay

LOCAL_PATH := device/samsung/kyleve
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Init files
PRODUCT_COPY_FILES += \
device/samsung/kyleve/init.hawaii_ss_kyleve.rc:root/init.hawaii_ss_kyleve.rc \
device/samsung/kyleve/init.bcm2166x.usb.rc:root/init.bcm2166x.usb.rc \
device/samsung/kyleve/init.log.rc:root/init.log.rc \
device/samsung/kyleve/init.recovery.kyleve.rc:root/init.recovery.kyleve.rc \
device/samsung/kyleve/lpm.rc:root/lpm.rc \
device/samsung/kyleve/ueventd.hawaii_ss_kyleve.rc:root/ueventd.hawaii_ss_kyleve.rc \
device/samsung/kyleve/fstab.hawaii_ss_kyleve:root/fstab.hawaii_ss_kyleve \

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
device/samsung/kyleve/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
device/samsung/kyleve/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
device/samsung/kyleve/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
device/samsung/kyleve/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl

# Prebuilt kcm keychars
PRODUCT_COPY_FILES += \
device/samsung/kyleve/bcm_keypad_v2.kcm:system/usr/keychars/bcm_keypad_v2.kcm

# Prebuilt icu
PRODUCT_COPY_FILES += \
device/samsung/kyleve/icudt48l.dat:system/usr/icu/icudt48l.dat

# Prebuilt idc
PRODUCT_COPY_FILES += \
device/samsung/kyleve/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
	
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungBCMRIL
	
# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

#$(call inherit-product, build/target/product/full.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kyleve
PRODUCT_DEVICE := kyleve
