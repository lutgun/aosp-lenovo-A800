$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# If you're using 4.2/Jelly Bean, use full_base.mk instead of full.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# The gps config appropriate for this device
#TODO is this OK?
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/A800/A800-vendor.mk)

#DEVICE_PACKAGE_OVERLAYS += device/lenovo/A800/overlay

#LOCAL_PATH := device/lenovo/A800
#ifeq ($(TARGET_PREBUILT_KERNEL),)
	#LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
	#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

#PRODUCT_PACKAGES += \


$(call inherit-product, device/lenovo/A800/A800.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0


PRODUCT_NAME := full_A800
PRODUCT_DEVICE := A800
PRODUCT_MODEL := Lenovo A800 Clean Droid
PRODUCT_RELEASE_NAME := A800
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := Lenovo
