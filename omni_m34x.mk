#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m34x device
$(call inherit-product, device/samsung/m34x/device.mk)

PRODUCT_DEVICE := m34x
PRODUCT_NAME := omni_m34x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M346B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m34xnsxx-user 12 SP1A.210812.016 M346BXXU2AWH4 release-keys"

BUILD_FINGERPRINT := samsung/m34xnsxx/m34x:12/SP1A.210812.016/M346BXXU2AWH4:user/release-keys
