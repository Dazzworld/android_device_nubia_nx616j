#
# Copyright (C) 2018-2019 The MoKee Open Source Project
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

# Inherit from nx616j device
$(call inherit-product, device/nubia/nx616j/device.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_NAME := mk_nx616j
PRODUCT_DEVICE := nx616j
PRODUCT_MANUFACTURER := nubia
PRODUCT_BRAND := nubia
PRODUCT_MODEL := nx616j

PRODUCT_GMS_CLIENTID_BASE := android-nubia

TARGET_VENDOR_PRODUCT_NAME := NX616J
TARGET_VENDOR_DEVICE_NAME := NX616J

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX616J PRODUCT_NAME=NX616J PRODUCT_MODEL=NX616J

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX616J-user 9 PKQ1.180929.001 eng.nubia.20190328.222448 release-keys"

BUILD_FINGERPRINT := nubia/NX616J/NX616J:9/PKQ1.180929.001/eng.nubia.20190328.222448:user/release-keys
