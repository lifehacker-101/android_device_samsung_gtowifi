#
# Copyright (C) 2018-2021 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from gtowifi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gtowifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_gtowifi
PRODUCT_MODEL := SM-T290

PRODUCT_SYSTEM_NAME := gtowifixx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := gtowifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gtowifixx-user 11 RP1A.200720.012 T290XXU3CVG3 release-keys" \
    BuildFingerprint="samsung/gtowifixx/gtowifi:11/RP1A.200720.012/T290XXU3CVG3:user/release-keys"
