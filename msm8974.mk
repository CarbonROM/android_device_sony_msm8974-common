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

PLATFORM_PATH := device/sony/msm8974-common

# Include msm8974-common system properties
include $(PLATFORM_PATH)/system_prop.mk

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(PLATFORM_PATH)/overlay \
    $(PLATFORM_PATH)/overlay-carbon

ifneq ($(BOARD_HAVE_RADIO),false)
    $(call inherit-product, $(PLATFORM_PATH)/radio.mk)
else
    DEVICE_PACKAGE_OVERLAYS += $(PLATFORM_PATH)/overlay-wifionly
endif

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libtinycompress \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(PLATFORM_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl

PRODUCT_PACKAGES += \
    camera.qcom \
    libshims_signal

PRODUCT_PACKAGES += \
    Snap

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.renderscript@1.0-impl

PRODUCT_PACKAGES += \
    hwcomposer.msm8974 \
    gralloc.msm8974 \
    memtrack.msm8974 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# FM
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.legacy \
    android.hardware.gnss@1.0-service.legacy \
    gps.msm8974

PRODUCT_COPY_FILES += \
    $(PLATFORM_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(PLATFORM_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(PLATFORM_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(PLATFORM_PATH)/gps/etc/sap.conf:system/etc/sap.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Ion
PRODUCT_PACKAGES += \
    libion

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.msm8974

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    librmnetctl \
    libxml2 \
    netutils-wrapper-1.0

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libstagefrighthw

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
    $(PLATFORM_PATH)/configs/permissions_sony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/permissions_sony.xml

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2-service-qti

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0-impl \
    android.hardware.radio.deprecated@1.0-impl

# Seccomp
PRODUCT_COPY_FILES += \
    $(PLATFORM_PATH)/configs/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(PLATFORM_PATH)/configs/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Thermal management
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

PRODUCT_PACKAGES += \
    thermal.msm8974 \
    thermanager

# TimeKeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service.legacy

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/sony/msm8974-common/msm8974-common-vendor.mk)
