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
device/samsung/kyleve/prop/etc/permissions/access.control.xml:system/etc/permissions/access.control.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.camera.flash.xml:system/etc/permissions/android.hardware.camera.flash.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
device/samsung/kyleve/prop/etc/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
device/samsung/kyleve/prop/etc/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
device/samsung/kyleve/prop/etc/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
device/samsung/kyleve/prop/etc/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
device/samsung/kyleve/prop/etc/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
device/samsung/kyleve/prop/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
device/samsung/kyleve/prop/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
device/samsung/kyleve/prop/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
device/samsung/kyleve/prop/etc/permissions/com.samsung.device.xml:system/etc/permissions/com.samsung.device.xml \
device/samsung/kyleve/prop/etc/permissions/com.sec.android.app.minimode.xml:system/etc/permissions/com.sec.android.app.minimode.xml \
device/samsung/kyleve/prop/etc/permissions/com.sec.feature.minimode.xml:system/etc/permissions/com.sec.feature.minimode.xml \
device/samsung/kyleve/prop/etc/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
device/samsung/kyleve/prop/etc/permissions/org.simalliance.openmobileapi.xml:system/etc/permissions/org.simalliance.openmobileapi.xml \
device/samsung/kyleve/prop/etc/permissions/platform.xml:system/etc/permissions/platform.xml \
device/samsung/kyleve/prop/etc/permissions/seccamera.xml:system/etc/permissions/seccamera.xml \
device/samsung/kyleve/prop/etc/permissions/sec_edm.xml:system/etc/permissions/sec_edm.xml \
device/samsung/kyleve/prop/etc/permissions/sec_feature.xml:system/etc/permissions/sec_feature.xml \
device/samsung/kyleve/prop/etc/permissions/sec_hardware_library.xml:system/etc/permissions/sec_hardware_library.xml \
device/samsung/kyleve/prop/etc/permissions/sec_mdm.xml:system/etc/permissions/sec_mdm.xml \
device/samsung/kyleve/prop/etc/permissions/secmediarecorder.xml:system/etc/permissions/secmediarecorder.xml \
device/samsung/kyleve/prop/etc/permissions/sec_platform_library.xml:system/etc/permissions/sec_platform_library.xml \
device/samsung/kyleve/prop/etc/permissions/vtmanager_library.xml:system/etc/permissions/vtmanager_library.xml \
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
	device/samsung/kyleve/prop/lib/libbralloc.so:system/lib/libbralloc.so \
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
	device/samsung/kyleve/config/vold.fstab:system/etc/vold.fstab \
	device/samsung/kyleve/prop/etc/gps/glconfig.xml:system/etc/gps/glconfig.xml \
	device/samsung/kyleve/prop/etc/asound.conf:system/etc/asound.conf \
    device/samsung/kyleve/prop/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/kyleve/prop/etc/DiamondVoice_Filter_NB.txt:system/etc/DiamondVoice_Filter_NB.txt \
    device/samsung/kyleve/prop/etc/DiamondVoice_Filter_WB.txt:system/etc/DiamondVoice_Filter_WB.txt \
    device/samsung/kyleve/prop/etc/DiamondVoice_NB.txt:system/etc/DiamondVoice_NB.txt \
    device/samsung/kyleve/prop/etc/DiamondVoice_WB.txt:system/etc/DiamondVoice_WB.txt \
    device/samsung/kyleve/prop/etc/gps.conf:system/etc/gps.conf \
    device/samsung/kyleve/prop/etc/srm.bin:system/etc/srm.bin \
    device/samsung/kyleve/prop/etc/Volume.db:system/etc/Volume.db \
    device/samsung/kyleve/prop/etc/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    device/samsung/kyleve/prop/etc/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    device/samsung/kyleve/prop/etc/wifi/bcmdhd_p2p.bin:system/etc/wifi/bcmdhd_p2p.bin \
    device/samsung/kyleve/prop/etc/wifi/bcmdhd_mfg.bin:system/etc/wifi/bcmdhd_mfg.bin \
    device/samsung/kyleve/prop/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/kyleve/prop/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/kyleve/prop/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/kyleve/prop/lib/hw/alsa.default.so:system/lib/hw/alsa.default.so \
    device/samsung/kyleve/prop/lib/hw/audio.primary.hawaii.so:system/lib/hw/audio.primary.hawaii.so \
    device/samsung/kyleve/prop/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so \
    device/samsung/kyleve/prop/lib/hw/audio_policy.hawaii.so:system/lib/hw/audio_policy.hawaii.so \
    device/samsung/kyleve/prop/lib/hw/camera.hawaii.so:system/lib/hw/camera.hawaii.so \
    device/samsung/kyleve/prop/lib/hw/gps.hawaii.so:system/lib/hw/gps.hawaii.so \
    device/samsung/kyleve/prop/lib/hw/hwcomposer.hawaii.so:system/lib/hw/hwcomposer.hawaii.so \
    device/samsung/kyleve/prop/lib/hw/sensors.hawaii.so:system/lib/hw/sensors.hawaii.so \
    device/samsung/kyleve/prop/lib/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so \
    device/samsung/kyleve/prop/lib/lib_Samsung_SB_AM_for_ICS_v04004.so:system/lib/lib_Samsung_SB_AM_for_ICS_v04004.so \
    device/samsung/kyleve/prop/lib/lib_SamsungRec_V01006.so:system/lib/lib_SamsungRec_V01006.so \
    device/samsung/kyleve/prop/lib/lib_SoundAlive_V01013p.so:system/lib/lib_SoundAlive_V01013p.so \
    device/samsung/kyleve/prop/lib/libaacdecoderwrapper.so:system/lib/libaacdecoderwrapper.so \
    device/samsung/kyleve/prop/lib/libaudiopolicy_sec.so:system/lib/libaudiopolicy_sec.so \
    device/samsung/kyleve/prop/lib/libbrcmaacenc.so:system/lib/libbrcmaacenc.so \
    device/samsung/kyleve/prop/lib/libbrcmamrnbaridec.so:system/lib/libbrcmamrnbaridec.so \
    device/samsung/kyleve/prop/lib/libbrcmamrnbarienc.so:system/lib/libbrcmamrnbarienc.so \
    device/samsung/kyleve/prop/lib/libbrcmamrwbaridec.so:system/lib/libbrcmamrwbaridec.so \
    device/samsung/kyleve/prop/lib/libbrcmamrwbarienc.so:system/lib/libbrcmamrwbarienc.so \
    device/samsung/kyleve/prop/lib/libbrcmcutils.so:system/lib/libbrcmcutils.so \
    device/samsung/kyleve/prop/lib/libbrcmheaacdecoder.so:system/lib/libbrcmheaacdecoder.so \
    device/samsung/kyleve/prop/lib/libbrcmmp3dec.so:system/lib/libbrcmmp3dec.so \
    device/samsung/kyleve/prop/lib/libbrcmmp3enc.so:system/lib/libbrcmmp3enc.so \
    device/samsung/kyleve/prop/lib/libBrcmOMX_Component.so:system/lib/libBrcmOMX_Component.so \
    device/samsung/kyleve/prop/lib/libBrcmOMX_Core.so:system/lib/libBrcmOMX_Core.so \
    device/samsung/kyleve/prop/lib/libbrcmparser.so:system/lib/libbrcmparser.so \
    device/samsung/kyleve/prop/lib/libcapi2.so:system/lib/libcapi2.so \
    device/samsung/kyleve/prop/lib/libcate_rpc.so:system/lib/libcate_rpc.so \
    device/samsung/kyleve/prop/lib/libchip_state.so:system/lib/libchip_state.so \
    device/samsung/kyleve/prop/lib/libclcore.bc:system/lib/libclcore.bc \
    device/samsung/kyleve/prop/lib/libclcore_neon.bc:system/lib/libclcore_neon.bc \
    device/samsung/kyleve/prop/lib/libcontainers.so:system/lib/libcontainers.so \
    device/samsung/kyleve/prop/lib/libcontrolcsc.so:system/lib/libcontrolcsc.so \
    device/samsung/kyleve/prop/lib/libremotedesktop_client.so:system/lib/libremotedesktop_client.so \
    device/samsung/kyleve/prop/lib/libremotedesktopservice.so:system/lib/libremotedesktopservice.so \
    device/samsung/kyleve/prop/lib/libfmradio_jni.so:system/lib/libfmradio_jni.so \
    device/samsung/kyleve/prop/lib/libhdcp2.so:system/lib/libhdcp2.so \
    device/samsung/kyleve/prop/lib/libImmVibeJ.so:system/lib/libImmVibeJ.so \
    device/samsung/kyleve/prop/lib/libisp2.so:system/lib/libisp2.so \
    device/samsung/kyleve/prop/lib/libISP.so:system/lib/libISP.so \
    device/samsung/kyleve/prop/lib/libjpeg_turbo.so:system/lib/libjpeg_turbo.so \
    device/samsung/kyleve/prop/lib/libnvaccessor.so:system/lib/libnvaccessor.so \
    device/samsung/kyleve/prop/lib/libps_dunmgr.so:system/lib/libps_dunmgr.so \
    device/samsung/kyleve/prop/lib/lib_SamsungRec_V01006.so:system/lib/lib_SamsungRec_V01006.so \
    device/samsung/kyleve/prop/lib/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so \
    device/samsung/kyleve/prop/lib/lib_Samsung_SB_AM_for_ICS_v04004.so:system/lib/lib_Samsung_SB_AM_for_ICS_v04004.so \
    device/samsung/kyleve/prop/lib/libsamsungpowersound.so:system/lib/libsamsungpowersound.so \
    device/samsung/kyleve/prop/lib/libsamsungRecord.so:system/lib/libsamsungRecord.so \
    device/samsung/kyleve/prop/lib/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so \
    device/samsung/kyleve/prop/lib/libseckeyprov.so:system/lib/libseckeyprov.so \
    device/samsung/kyleve/prop/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    device/samsung/kyleve/prop/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/kyleve/prop/lib/libsoc.so:system/lib/libsoc.so \
    device/samsung/kyleve/prop/lib/libsoundalive.so:system/lib/libsoundalive.so \
    device/samsung/kyleve/prop/lib/lib_SoundAlive_V01013p.so:system/lib/lib_SoundAlive_V01013p.so \
    device/samsung/kyleve/prop/lib/libSoundAlive_VSP_ver312a.so:system/lib/libSoundAlive_VSP_ver312a.so \
    device/samsung/kyleve/prop/lib/libsoundspeed.so:system/lib/libsoundspeed.so \
    device/samsung/kyleve/prop/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
    device/samsung/kyleve/prop/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so \
    device/samsung/kyleve/prop/lib/libsthmb.so:system/lib/libsthmb.so \
    device/samsung/kyleve/prop/lib/libui.so:system/lib/libui.so \
    device/samsung/kyleve/prop/lib/libuip.so:system/lib/libuip.so \
    device/samsung/kyleve/prop/lib/libuecodec.so:system/lib/libuecodec.so \
    device/samsung/kyleve/prop/lib/libusb_config.so:system/lib/libusb_config.so \
    device/samsung/kyleve/prop/lib/libv3d.so:system/lib/libv3d.so \
    device/samsung/kyleve/prop/lib/libV3D_csc.so:system/lib/libV3D_csc.so \
    device/samsung/kyleve/prop/lib/libV3D_driver.so:system/lib/libV3D_driver.so \
    device/samsung/kyleve/prop/lib/libV3D_server.so:system/lib/libV3D_server.so \
    device/samsung/kyleve/prop/lib/libVCE_csl.so:system/lib/libVCE_csl.so \
	device/samsung/kyleve/prop/lib/libVCE_driver.so:system/lib/libVCE_driver.so \
	device/samsung/kyleve/prop/lib/libVCE_imageconv.so:system/lib/libVCE_imageconv.so \
	device/samsung/kyleve/prop/lib/libVCOS.so:system/lib/libVCOS.so \
	device/samsung/kyleve/prop/lib/libvtqinit.so:system/lib/libvtqinit.so \
	device/samsung/kyleve/prop/lib/libwvdrm_L3.so:system/lib/libwvdrm_L3.so \
	device/samsung/kyleve/prop/lib/libwvm.so:system/lib/libwvm.so \
	device/samsung/kyleve/prop/lib/libWVStreamControlAPI_L3.so:system/lib/libWVStreamControlAPI_L3.so \
	device/samsung/kyleve/prop/lib/modules/VoiceSolution.ko:system/lib/modules/VoiceSolution.ko \
	device/samsung/kyleve/prop/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	device/samsung/kyleve/prop/usr/lib/alsa-lib/libasound_module_pcm_bcmfilter.so:system/usr/lib/alsa-lib/libasound_module_pcm_bcmfilter.so \
	device/samsung/kyleve/prop/usr/lib/alsa-lib/libbcm_hp_filter.so:system/usr/lib/alsa-lib/libbcm_hp_filter.so \
	device/samsung/kyleve/prop/usr/lib/alsa-lib/libbcm_test_filter.so:system/usr/lib/alsa-lib/libbcm_test_filter.so \
	device/samsung/kyleve/prop/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
	device/samsung/kyleve/prop/lib/egl/libGLES_hawaii.so:system/lib/egl/libGLES_hawaii.so \
	device/samsung/kyleve/prop/lib/hw/camera.hawaii.so:system/lib/hw/camera.hawaii.so \
	device/samsung/kyleve/prop/lib/hw/gralloc.hawaii.so:system/lib/hw/gralloc.hawaii.so \
	device/samsung/kyleve/prop/lib/hw/hwcomposer.hawaii.so:system/lib/hw/hwcomposer.hawaii.so \
	device/samsung/kyleve/prop/lib/hw/lights.hawaii.so:system/lib/hw/lights.hawaii.so \
	device/samsung/kyleve/prop/etc/tinyucm.conf:system/etc/tinyucm.conf \
	device/samsung/kyleve/prop/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
    

# Device Device BINS
PRODUCT_COPY_FILES += \
	device/samsung/kyleve/prop/bin/BCM4330B1.hcd:system/bin/BCM4330B1.hcd \
	device/samsung/kyleve/prop/bin/at_distributor:system/bin/at_distributor \
	device/samsung/kyleve/prop/bin/atx:system/bin/atx \
	device/samsung/kyleve/prop/bin/atxd:system/bin/atxd \
	device/samsung/kyleve/prop/bin/atrace:system/bin/atrace \
	device/samsung/kyleve/prop/bin/glgps:system/bin/glgps \
	device/samsung/kyleve/prop/bin/gps.cer:system/bin/gps.cer \
	device/samsung/kyleve/prop/bin/macloader:system/bin/macloader \
	device/samsung/kyleve/prop/bin/mfgloader:system/bin/mfgloader \
	device/samsung/kyleve/prop/bin/mttlogger:system/bin/mttlogger \
	device/samsung/kyleve/prop/bin/rild:system/bin/rild \
	device/samsung/kyleve/prop/bin/usb_portd:system/bin/usb_portd \
	device/samsung/kyleve/prop/bin/bkmgrd:system/bin/bkmgrd \
    device/samsung/kyleve/prop/bin/cate_rpc_util:system/bin/cate_rpc_util \
    device/samsung/kyleve/prop/bin/gpslogd:system/bin/gpslogd \
    device/samsung/kyleve/prop/bin/immvibed:system/bin/immvibed \
	device/samsung/kyleve/prop/bin/ndc:system/bin/ndc \
    device/samsung/kyleve/prop/bin/vdc:system/bin/vdc
    
	
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	hwui.render_dirty_regions=false \
	ro.telephony.ril_class=SamsungBCMRIL \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.usb.config=adb \
	ro.zygote.disable_gl_preload=true \
	rild.libpath=/system/lib/libbrcm_ril.so \
	wifi.interface=wlan0 \
	mobiledata.interfaces=rmnet0,pdp0,wlan0,eth0,gprs,ppp0
	
PRODUCT_PACKAGES += \
	libstagefrighthw \
    libSEC_OMX_Resourcemanager \
    libSEC_OMX_Core \
    libOMX.SEC.AVC.Decoder \
    libOMX.SEC.M4V.Decoder \
    libOMX.SEC.WMV.Decoder \
    libOMX.SEC.AVC.Encoder \
    libOMX.SEC.M4V.Encoder \
	e2fsck \
	make_ext4fs \
    setup_fs \
	libexifa \
	libjpega \
	libkeyutils \
	audio.a2dp.default \
	libasound \
	libasound_module_pcm_bcmfilter \
	bcm_dut \
	librs_jni \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	VisualizationWallpapers
	

# Device-specific packages
PRODUCT_PACKAGES += \
SamsungServiceMode \
libsecril-client \
libsecril-client-sap

	
# Charger
PRODUCT_PACKAGES += \
        charger \
        charger_res_images
        
# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kyleve
PRODUCT_DEVICE := kyleve
