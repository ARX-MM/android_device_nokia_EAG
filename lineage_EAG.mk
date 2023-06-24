#
# Copyright (C) 2016 - 2023 The LineageOS Project
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
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Todo: add this file.
# Inherit from EAG device
# $(call inherit-product, $(LOCAL_PATH)/device.mk)
# $(call inherit-product, device/nokia/EAG/device.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Asserts
TARGET_OTA_ASSERT_DEVICE := EAG

# Boot Animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1440

PRODUCT_NAME := lineage_EAG
PRODUCT_DEVICE := EAG
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 3.1 A

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=EAG \
    PRODUCT_NAME=Eagles_01N0 \
    PRIVATE_BUILD_DESC="Eagles_01N0-user 9 PPR1.180610.011 01N0_1_41R release-keys"

BUILD_FINGERPRINT := Nokia/Eagles_01N0/EAG:9/PPR1.180610.011/01N0_1_41R:user/release-keys