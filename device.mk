#
# Copyright (C) 2026 The LineageOS Project
# Maintainer: habNoir
#
# Universal Device Configuration for TECNO CAMON 50 Pro 5G & Ultra 5G (TECNO-CN7c)
#

DEVICE_PATH := device/tecno/CN7c

# 64-bit Only & Emulated Storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B with Vendor Ramdisk & XOR Compression
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression_with_xor.mk)

PRODUCT_USE_DYNAMIC_PARTITIONS := true
ENABLE_VIRTUAL_AB := true

# Shipping API Level (Vendor API 34 / System SDK 36 Android 16)
PRODUCT_SHIPPING_API_LEVEL := 34
BOARD_SHIPPING_API_LEVEL := 34

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6878 \
    ueventd.mt6878.rc

# Boot Control, Fastbootd & Update Engine
PRODUCT_PACKAGES += \
    android.hardware.boot-service.mtk \
    android.hardware.boot-service.mtk_recovery \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd \
    mtk_plpath_utils \
    update_engine \
    update_engine_sideload \
    update_verifier

# Copy Key Configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6878:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.mt6878 \
    $(DEVICE_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    $(DEVICE_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(DEVICE_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(DEVICE_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    $(DEVICE_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(DEVICE_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/configs/power/task_profiles.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Inherit Vendor Blobs if extracted
$(call inherit-product-if-exists, vendor/tecno/CN7c/CN7c-vendor.mk)
