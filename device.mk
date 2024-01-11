#
# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
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

COMMON_PATH := device/samsung/msm8974-common

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/klte/klte-vendor.mk)
$(call inherit-product, vendor/samsung/klte-common/klte-common-vendor-ril-m.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
PRODUCT_ENFORCE_RRO_TARGETS := *

# Audio
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/audio/klte/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(COMMON_PATH)/audio/klte/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Display Device Config
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/displayconfig/klte/display_id_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_0.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayout/klte/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(COMMON_PATH)/keylayout/klte/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(COMMON_PATH)/keylayout/klte/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl

# Fingerprint
$(call inherit-product, device/samsung/msm8974-common/fingerprint/product.mk)

# NFC
$(call inherit-product, device/samsung/msm8974-common/nfc/pn547/product.mk)

# common msm8974
$(call inherit-product, device/samsung/msm8974-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/klte-common/klte-common-vendor.mk)
