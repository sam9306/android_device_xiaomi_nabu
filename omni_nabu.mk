#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from nabu device
$(call inherit-product, device/xiaomi/nabu/device.mk)

PRODUCT_DEVICE := nabu
PRODUCT_NAME := omni_nabu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 21051182G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nabu_in-user 11 RKQ1.200826.002 V13.0.6.0.RKXINXM release-keys"

BUILD_FINGERPRINT := Xiaomi/nabu_in/nabu:11/RKQ1.200826.002/V13.0.6.0.RKXINXM:user/release-keys
