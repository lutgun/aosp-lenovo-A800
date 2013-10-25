LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
ifneq ($(filter A800,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
