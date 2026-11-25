#
# Copyright (C) 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/tecno/CN7c/device.mk)

PRODUCT_NAME := aosp_CN7c
PRODUCT_DEVICE := CN7c
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CN7c
PRODUCT_MANUFACTURER := TECNO
PRODUCT_GMS_CLIENTID_BASE := android-transsion

BUILD_FINGERPRINT := TECNO/CN7c-OP-M1/TECNO-CN7c:16/BP2A.250605.031.A3/301600072:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_cn7c_h788-user 16 BP2A.250605.031.A3 301600072 release-keys"
