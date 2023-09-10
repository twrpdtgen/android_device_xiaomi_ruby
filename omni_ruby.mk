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

# Inherit from ruby device
$(call inherit-product, device/xiaomi/ruby/device.mk)

PRODUCT_DEVICE := ruby
PRODUCT_NAME := omni_ruby
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_ruby-eng 99.87.36 SP2A.220405.004 eng.runner.20230710.165930 test-keys"

BUILD_FINGERPRINT := Redmi/vnd_ruby/ruby:12/SP1A.210812.016/V14.0.2.0.TKTRUXM:user/release-keys
