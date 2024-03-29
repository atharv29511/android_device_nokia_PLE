#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Pixel Experience stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from PLE device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 6 2017
PRODUCT_DEVICE := PLE
PRODUCT_MANUFACTURER := Nokia
PRODUCT_NAME := lineage_PLE

PRODUCT_GMS_CLIENTID_BASE := android-nokia

TARGET_VENDOR_PRODUCT_NAME := PLE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TA-1021_00WW-user 9 PKQ1.181105.001 00WW_6_19F release-keys"

BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys
