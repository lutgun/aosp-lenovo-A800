#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/lenovo/a800/BoardConfigVendor.mk


#build recipe
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := true

#architecture
TARGET_BOARD_PLATFORM := A800
#TARGET_BOOTLOADER_BOARD_NAME := A800

TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

#system.img properties, 512Mb?/384Mb
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 402653184

# Wifi related defines
WIFI_DRIVER_MODULE_PATH          := /system/lib/modules/
WIFI_DRIVER_MODULE_NAME          := wlan

#BT
BOARD_HAVE_BLUETOOTH  := true

#EGL configuration
BOARD_EGL_CFG := device/lenovo/A800/prebuilt/egl.cfg
USE_OPENGL_RENDERER := true


#generate system.img ext4 format
TARGET_USERIMAGES_USE_EXT4 := true



#TODO cache???
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lenovo/A800/recovery/recovery_keys.c

BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_UMS_LUNFILE := /sys/devices/platform/mt_usb/gadget/lun%d/file

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

#########################
#all commented
########################

#TODO add processor specific strings, from tutorial

#TODO true????
#BOARD_HAS_NO_MISC_PARTITION := true

#TODO grab and put
#TARGET_PREBUILT_RECOVERY_KERNEL := device/lenovo/A800/recovery_kernel

#TODO check if kernel is valid
#TARGET_PREBUILT_KERNEL := device/lenovo/A800/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
#TODO check if it has
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# fix this up by examining /proc/mtd on a running device
#TODO
#BOARD_BOOTIMAGE_PARTITION_SIZE := 3913728 
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5476416#5311680
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 415000668
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 14946668
#TARGET_RECOVERY_FORCE_BACKUP_SIZE := 6291456
#BOARD_FLASH_BLOCK_SIZE := 131072

#BOARD_KERNEL_BASE := 0x10000000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/A800/custombootimg.mk

#TODO: provides or not?
#BOARD_PROVIDES_LIBRIL := true

