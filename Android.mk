LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR),sony)
ifeq ($(TARGET_BOARD_PLATFORM),msm8974)
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
    include hardware/qcom/gps/msm8974/Android.mk
endif
endif
