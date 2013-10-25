
#
# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Speed up scrolling
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=60

# Default network type.
# 0 => WCDMA preferred, 3 => GSM/AUTO (PRL) preferred
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.2_r5 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory \

#TODO may cause fault?
PRODUCT_LOCALES += en_US ru_RU hdpi

PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

#TODO is there a RAM header for me?
#for boot.img and recovery.img
#PRODUCT_COPY_FILES += \
#    device/lenovo/A800/ram_header:ram_header \
#    device/lenovo/A800/ram_header_recovery:ram_header_recovery \

#root
#PRODUCT_COPY_FILES += \
#    device/lenovo/A800/root/advanced_meta_init.project.rc:root/advanced_meta_init.project.rc \
#    device/lenovo/A800/root/advanced_meta_init.rc:root/advanced_meta_init.rc \
#    device/lenovo/A800/root/default.prop:root/default.prop \
#    device/lenovo/A800/root/init.aee.customer.rc:root/init.aee.customer.rc \
#    device/lenovo/A800/root/init.factory.rc:root/init.factory.rc \
#    device/lenovo/A800/root/init.goldfish.rc:root/init.goldfish.rc \
#    device/lenovo/A800/root/init.project.rc:root/init.project.rc \
#    device/lenovo/A800/root/init.rc:root/init.rc \
#    device/lenovo/A800/root/init.usb.rc:root/init.usb.rc \
#    device/lenovo/A800/root/init.xlog.rc:root/init.xlog.rc \
#    device/lenovo/A800/root/meta_init.rc:root/meta_init.rc\
#    device/lenovo/A800/root/ueventd.goldfish.rc:root/ueventd.goldfish.rc\
#    device/lenovo/A800/root/ueventd.rc:root/ueventd.rc
#TODO didnot include symbolic link file /root/res. Guess, it's not necessary

#permissions
#TODO check when source is downloaded
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

#fs table
#TODO vold.fstab files are empty. Is there any need for them?
PRODUCT_COPY_FILES += \
    device/lenovo/A800/prebuilt/vold.fstab:system/etc/vold.fstab \
    device/lenovo/A800/prebuilt/vold.fstab:system/etc/vold.fstab.nand

PRODUCT_COPY_FILES += \
    device/lenovo/A800/prebuilt/BPLGUInfoCustomAppSrcP_MT6577_S00_MAUI_11AMD_W12_22_SP_V5_P16:system/etc/mddb/BPLGUInfoCustomAppSrcP_MT6577_S00_MAUI_11AMD_W12_22_SP_V5_P16

#wifi/BT
#TODO remove 6620 files IF they are not neccessary
PRODUCT_COPY_FILES += \
    device/lenovo/A800/prebuilt/modules/wlan.ko:system/lib/modules/wlan.ko \
    device/lenovo/A800/prebuilt/modules/wlan_mt6620.ko:system/lib/modules/wlan_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/wlan_mt6628.ko:system/lib/modules/wlan_mt6628.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_wmt.ko:system/lib/modules/mtk_stp_wmt.ko \
    device/lenovo/A800/prebuilt/modules/mtk_wmt_wifi.ko:system/lib/modules/mtk_wmt_wifi.ko \
    device/lenovo/A800/prebuilt/modules/mtk_wmt_wifi_mt6620.ko:system/lib/modules/mtk_wmt_wifi_mt6620.ko \
    device/lenovo/A800/prebuilt/firmware/WIFI_RAM_CODE:system/etc/firmware/WIFI_RAM_CODE \
    device/lenovo/A800/prebuilt/firmware/WIFI_RAM_CODE_E6:system/etc/firmware/WIFI_RAM_CODE_E6 \
    device/lenovo/A800/prebuilt/firmware/WMT.cfg:system/etc/firmware/WMT.cfg

PRODUCT_COPY_FILES += \
    device/lenovo/A800/prebuilt/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/lenovo/A800/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

#TODO include all the stupid stuff from system/lib/* and etc/*

#firmware stuff
PRODUCT_COPY_FILES += \
    device/lenovo/A800/prebuilt/firmware/catcher_filter.bin:system/etc/firmware/catcher_filter.bin \
    device/lenovo/A800/prebuilt/firmware/DSP_ROM:system/etc/firmware/DSP_ROM \
    device/lenovo/A800/prebuilt/firmware/modem.img:system/etc/firmware/modem.img \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_rom.bin:system/etc/firmware/mt6628_fm_rom.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v1_coeff.bin:system/etc/firmware/mt6628_fm_v1_coeff.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v1_patch.bin:system/etc/firmware/mt6628_fm_v1_patch.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v2_coeff.bin:system/etc/firmware/mt6628_fm_v2_coeff.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v2_patch.bin:system/etc/firmware/mt6628_fm_v2_patch.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v3_coeff.bin:system/etc/firmware/mt6628_fm_v3_coeff.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v3_patch.bin:system/etc/firmware/mt6628_fm_v3_patch.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v4_coeff.bin:system/etc/firmware/mt6628_fm_v4_coeff.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v4_patch.bin:system/etc/firmware/mt6628_fm_v4_patch.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v5_coeff.bin:system/etc/firmware/mt6628_fm_v5_coeff.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_fm_v5_patch.bin:system/etc/firmware/mt6628_fm_v5_patch.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_patch_e1_hdr.bin:system/etc/firmware/mt6628_patch_e1_hdr.bin \
    device/lenovo/A800/prebuilt/firmware/mt6628_patch_e2_hdr.bin:system/etc/firmware/mt6628_patch_e2_hdr.bin \
    device/lenovo/A800/prebuilt/firmware/S_ANDRO_SFL.ini:system/etc/firmware/S_ANDRO_SFL.ini \

#other modules stuff

PRODUCT_COPY_FILES += \
    device/lenovo/A800/prebuilt/modules/aed.ko:system/lib/modules/aed.ko \
    device/lenovo/A800/prebuilt/modules/alps_core.ko:system/lib/modules/alps-core.ko \
    device/lenovo/A800/prebuilt/modules/ccci.ko:system/lib/modules/ccci.ko \
    device/lenovo/A800/prebuilt/modules/ccci_plat.ko:system/lib/modules/ccci_plat.ko \
    device/lenovo/A800/prebuilt/modules/ccmni.ko:system/lib/modules/ccmni.ko \
    device/lenovo/A800/prebuilt/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/lenovo/A800/prebuilt/modules/devapc.ko:system/lib/modules/devapc.ko \
    device/lenovo/A800/prebuilt/modules/devinfo.ko:system/lib/modules/devinfo.ko \
    device/lenovo/A800/prebuilt/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
    device/lenovo/A800/prebuilt/modules/lowmemorydetect.ko:system/lib/modules/lowmemorydetect.ko \
    device/lenovo/A800/prebuilt/modules/m4u.ko:system/lib/modules/m4u.ko \
    device/lenovo/A800/prebuilt/modules/mtk_drvb_77.ko:system/lib/modules/mtk_drvb_77.ko \
    device/lenovo/A800/prebuilt/modules/mtk_fm_drv.ko:system/lib/modules/mtk_fm_drv.ko \
    device/lenovo/A800/prebuilt/modules/mtk_fm_priv.ko:system/lib/modules/mtk_fm_priv.ko \
    device/lenovo/A800/prebuilt/modules/mtk_hif_sdio.ko:system/lib/modules/mtk_hif_sdio.ko \
    device/lenovo/A800/prebuilt/modules/mtk_hif_sdio_mt6620.ko:system/lib/modules/mtk_hif_sdio_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/mtklfb.ko:system/lib/modules/mtklfb.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_bt.ko:system/lib/modules/mtk_stp_bt.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_bt_mt6620.ko:system/lib/modules/mtk_stp_bt_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_gps.ko:system/lib/modules/mtk_stp_gps.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_gps_mt6620.ko:system/lib/modules/mtk_stp_gps_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_sdio.ko:system/lib/modules/mtk_stp_sdio.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_sdio_mt6620.ko:system/lib/modules/mtk_stp_sdio_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_uart.ko:system/lib/modules/mtk_stp_uart.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_uart_mt6620.ko:system/lib/modules/mtk_stp_uart_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/mtk_stp_wmt_mt6620.ko:system/lib/modules/mtk_stp_wmt_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/p2p.ko:system/lib/modules/p2p.ko \
    device/lenovo/A800/prebuilt/modules/p2p_mt6620.ko:system/lib/modules/p2p_mt6620.ko \
    device/lenovo/A800/prebuilt/modules/p2p_mt6628.ko:system/lib/modules/p2p_mt6628.ko \
    device/lenovo/A800/prebuilt/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
    device/lenovo/A800/prebuilt/modules/scsi_tgt.ko:system/lib/modules/scsi_tgt.ko \
    device/lenovo/A800/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/lenovo/A800/prebuilt/modules/sec.ko:system/lib/modules/sec.ko \
    device/lenovo/A800/prebuilt/modules/vcodec_kernel_driver.ko:system/lib/modules/vcodec_kernel_driver.ko
