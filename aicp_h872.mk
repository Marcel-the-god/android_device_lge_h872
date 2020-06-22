#
# Copyright 2017 The LineageOS Project
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

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit from h872 device
$(call inherit-product, device/lge/h872/device.mk)

#Bootanimation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Security patch level
PLATFORM_SECURITY_PATCH_OVERRIDE := 2018-10-01
	
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH_OVERRIDE)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h872
PRODUCT_NAME := aicp_h872
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H872
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Marcel (@LG_SUCKS)" \
    TARGET_DEVICE="lucye" \
    PRODUCT_DEVICE="lucye" \
    PRODUCT_NAME="lucye_tmo_us" \
    PRIVATE_BUILD_DESC="lucye_tmo_us-user 8.0.0 OPR1.170623.032 182841114a294 release-keys"

BUILD_FINGERPRINT := "lge/lucye_tmo_us/lucye:8.0.0/OPR1.170623.032/182841114a294:user/release-keys"
