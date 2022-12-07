#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lemonades device
$(call inherit-product, device/oneplus/lemonades/device.mk)

PRODUCT_DEVICE := lemonades
PRODUCT_NAME := omni_lemonades
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := LE2101
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_lemonades-eng 99.87.36 SP2A.220405.004 eng.lmaosi.20220827.192352 test-keys"

BUILD_FINGERPRINT := oneplus/twrp_lemonades/lemonades:99.87.36/SP2A.220405.004/lmaosid08271923:eng/test-keys
