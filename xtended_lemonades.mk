#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonades device
$(call inherit-product, device/oneplus/lemonades/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

PRODUCT_NAME := xtended_lemonades
PRODUCT_DEVICE := lemonades
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2101

WITH_GAPPS=true

TARGET_INCLUDE_EXTRA_GAPPS=true
TARGET_BOOT_ANIMATION_RES := 1080

XTENDED_BUILD_TYPE := UNOFFICIAL

XTENDED_BUILD_MAINTAINER := Nacho
PROCESSOR_MODEL := SM8250

PRODUCT_SYSTEM_NAME := OnePlus9R
PRODUCT_SYSTEM_DEVICE := OnePlus9R

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9R_IND-user 13 RKQ1.211119.001 R.103dfa6-1-58fae release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9R_IND/OnePlus9R:13/RKQ1.211119.001/R.103dfa6-1-58fae:user/release-keys
