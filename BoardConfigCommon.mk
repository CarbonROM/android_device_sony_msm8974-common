# Copyright (C) 2014 The CyanogenMod Project
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

BOARD_VENDOR := sony

PLATFORM_PATH := device/sony/msm8974-common

TARGET_SPECIFIC_HEADER_PATH += $(PLATFORM_PATH)/include

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := krait

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000
TARGET_KERNEL_SOURCE := kernel/sony/msm8974

# Platform
TARGET_BOARD_PLATFORM := msm8974

# Audio
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Camera Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/bin/credmgrd|/system/vendor/lib/libshims_signal.so \
    /system/vendor/bin/mm-qcamera-daemon|libandroid.so \
    /system/vendor/bin/suntrold|/system/vendor/lib/libshims_signal.so \
    /system/lib/hw/camera.vendor.qcom.so|libsensor.so \
    /system/lib/libcammw.so|libsensor.so

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Filesystem
TARGET_FS_CONFIG_GEN += $(PLATFORM_PATH)/config.fs

# Graphics
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
TARGET_USES_ION := true

# Legacy memfd
TARGET_HAS_MEMFD_BACKPORT := true

# Lights HAL
TARGET_PROVIDES_LIBLIGHT := true

# Partition information
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Power
TARGET_USES_INTERACTION_BOOST := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
LZMA_RAMDISK_TARGETS := recovery

# Security patch level
VENDOR_SECURITY_PATCH := 2016-05-01

# SELinux
include device/qcom/sepolicy-legacy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    $(PLATFORM_PATH)/sepolicy

# SODP build barrier
PRODUCT_PLATFORM_SOD := true

# Treble
DEVICE_MANIFEST_FILE := $(PLATFORM_PATH)/manifest.xml
