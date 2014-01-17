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
device/samsung/kyleve/init.bt.rc:root/init.bt.rc \
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


# Device Device libs and Modules
PRODUCT_COPY_FILES += \
	device/samsung/kyleve/prop/lib/audio.primary.hawaii.so:system/lib/hw/audio.primary.hawaii.so \
	device/samsung/kyleve/prop/lib/libGLES_hawaii.so:system/lib/egl/libGLES_hawaii.so \
	device/samsung/kyleve/prop/lib/gralloc.hawaii.so:system/lib/hw/gralloc.hawaii.so \
	device/samsung/kyleve/prop/lib/hwcomposer.hawaii.so:system/lib/hw/hwcomposer.hawaii.so \
	device/samsung/kyleve/prop/lib/gps.hawaii.so:system/lib/hw/gps.hawaii.so \
	device/samsung/kyleve/prop/lib/libuip.so:system/lib/libuip.so \
	device/samsung/kyleve/prop/lib/libVCOS.so:system/lib/libVCOS.so \
	device/samsung/kyleve/prop/lib/libuecodec.so:system/lib/libuecodec.so \
	device/samsung/kyleve/prop/lib/libasound.so:system/lib/libasound.so \
	device/samsung/kyleve/prop/lib/libat.so:system/lib/libat.so \
	device/samsung/kyleve/prop/lib/libatlog.so:system/lib/libatlog.so \
	device/samsung/kyleve/prop/lib/libat_stubs.so:system/lib/libat_stubs.so \
	device/samsung/kyleve/prop/lib/libatparser.so:system/lib/libatparser.so \
	device/samsung/kyleve/prop/lib/libbrcmcutils.so:system/lib/libbrcmcutils.so \
	device/samsung/kyleve/prop/lib/libbrcmparser.so:system/lib/libbrcmparser.so \
	device/samsung/kyleve/prop/lib/libcapi2.so:system/lib/libcapi2.so \
	device/samsung/kyleve/prop/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
	device/samsung/kyleve/prop/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
	device/samsung/kyleve/prop/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
	device/samsung/kyleve/prop/lib/libsecril-client.so:system/lib/libsecril-client.so \
	device/samsung/kyleve/prop/lib/libsoc.so:system/lib/libsoc.so \
	device/samsung/kyleve/prop/lib/libbrcm_ril.so:system/lib/libbrcm_ril.so \
	device/samsung/kyleve/prop/lib/libril.so:system/lib/libril.so \
	device/samsung/kyleve/prop/lib/libnetutils.so:system/lib/libnetutils.so \
	device/samsung/kyleve/prop/lib/librpc.so:system/lib/librpc.so \
	device/samsung/kyleve/prop/lib/libusb_config.so:system/lib/libusb_config.so \
	device/samsung/kyleve/prop/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	device/samsung/kyleve/config/usb_portd.conf:system/etc/usb_portd.conf \
	device/samsung/kyleve/prop/etc/gps/glconfig.xml:system/etc/gps/glconfig.xml \
	

# Device Device BINS
PRODUCT_COPY_FILES += \
	device/samsung/kyleve/prop/bin/BCM4330B1.hcd:system/bin/BCM4330B1.hcd \
	device/samsung/kyleve/prop/bin/at_distributor:system/bin/at_distributor \
	device/samsung/kyleve/prop/bin/atx:system/bin/atx \
	device/samsung/kyleve/prop/bin/atxd:system/bin/atxd \
	device/samsung/kyleve/prop/bin/bcm_dut:system/bin/bcm_dut \
	device/samsung/kyleve/prop/bin/btld:system/bin/btld \
	device/samsung/kyleve/prop/bin/glgps:system/bin/glgps \
	device/samsung/kyleve/prop/bin/gps.cer:system/bin/gps.cer \
	device/samsung/kyleve/prop/bin/macloader:system/bin/macloader \
	device/samsung/kyleve/prop/bin/mfgloader:system/bin/mfgloader \
	device/samsung/kyleve/prop/bin/mttlogger:system/bin/mttlogger \
	device/samsung/kyleve/prop/bin/rild:system/bin/rild \
	device/samsung/kyleve/prop/bin/usb_portd:system/bin/usb_portd \
	
	
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.ril_class=SamsungBCMRIL \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.usb.config=adb \
	mobiledata.interfaces=rmnet0 \
	ro.zygote.disable_gl_preload=true \
	rild.libpath=/system/lib/libbrcm_ril.so \
	
PRODUCT_PACKAGES += \
        e2fsck \
        libexifa \
        libjpega \
        libkeyutils \
        audio.a2dp.default \
        libasound \
    	libasound_module_pcm_bcmfilter \
        bcm_dut

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
