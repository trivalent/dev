dev
===

Device Tree For Galaxy Trend Duos S7392.

Contains RIL Patches from pawitp : https://github.com/pawitp/android_device_samsung_i9082/tree/cm-10.1

I don't claim any license or copyright in any of the work done. All the sources are licensed as per their originals : AOSP or from CyanogenMod.

Build Instructions:
The following steps assume that you have already downloaded the sources (CM 10.1) using repo and repo sync. I ASSUME NO LIABILITY IF FLASHING ROM BRICKS YOUR DEVICE OR YOUR WARRANTY IS VOID. DO IT ON YOUR OWN.

1) Checkout the source code under /CM_Source/device/samsung/kyleve
2) Copy the init.rc file to /CM_Source/system/core/rootdir/. [This will replace the original init.rc file]
3) You can also force copying init.rc in the build script by editing device_kyleve.mk file. This way you don't have to replace the init.rc file in the system tree.
4) Copy the ril/com/android/internal/telephony/SamsungBCMRIL.java to /CM_Source/frameworks/base/telephony/java/com/android/internal/telephony/. You HAVE TO COPY IT. NO WAY AROUND.
5) Make (or search google for a sample) BoardConfigVendor.mk file under CM_Source/vendor/kyleve/. And all the below:
  USE_CAMERA_STUB := false
  YES just ONE LINE.
6) Go to /CM_Source/
7) . ./build/envsetup.sh
8) lunch cm_kyleve-fulldebug
9) Let it cook fully.
10) Flash using CWM.
