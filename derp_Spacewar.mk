#
# Copyright (C) 2022 The Derp-AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit from the Nameless AOSP configuration.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit some common DerpFest stuff
EXTRA_UDFPS_ANIMATIONS := true

# Bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_EXCLUDE_BACKUPTOOL := true
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := Spacewar
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A063
PRODUCT_NAME := derp_Spacewar
PRODUCT_SYSTEM_DEVICE := Spacewar
PRODUCT_SYSTEM_NAME := Spacewar

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Override device name
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
    PRIVATE_BUILD_DESC="Spacewar-user 12 SKQ1.211230.001 1673511218 release-keys"

BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1673511218:user/release-keys
