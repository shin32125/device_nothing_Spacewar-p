# Copyright (C) 2022 PixysOS
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Spacewar device
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing
PRODUCT_SYSTEM_NAME := Spacewar
PRODUCT_SYSTEM_DEVICE := Spacewar
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Override device name
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=Spacewar \
    DeviceProduct=Spacewar \
    BuildFingerprint=Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1666412462:user/release-keys \
    BuildDesc="Spacewar-user 12 SKQ1.211230.001 1666412462 release-keys"
