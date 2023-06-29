#
# Copyright (C) 2022 Miku
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common Miku UI stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)
TARGET_MIKU_BUILD_VARIANT := UNOFFICIAL
TARGET_HAS_FOD := true
TARGET_FACE_UNLOCK_SUPPORTED := true
MIKU_GAPPS := true
# TARGET_MIKU_BOOST_FRAMEWORK_PLATFORM := lahaina

MIKU_MASTER := shin32

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := miku_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing
PRODUCT_SYSTEM_NAME := Spacewar
PRODUCT_SYSTEM_DEVICE := Spacewar
PRODUCT_CHARACTERISTICS := nosdcard

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Override device name
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1673511218:user/release-keys
