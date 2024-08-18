#
# Copyright (C) 2024 The LineageOS Project
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

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/gts7l/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gts7l
PRODUCT_DEVICE := gts7l
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T875
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
PRODUCT_CHARACTERISTICS := tablet

# Vendor fingerprint
BUILD_FINGERPRINT := "samsung/gts7lxx/gts7l:11/RP1A.200720.012/T875XXS7DXE6:user/release-keys"
PRIVATE_BUILD_DESC := "gts7lxx-user 11 RP1A.200720.012 T875XXS7DXE6 release-keys"
