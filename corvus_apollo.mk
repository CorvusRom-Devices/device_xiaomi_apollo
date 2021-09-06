#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common Corvus-OS stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Gapps
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

#Pixel offline charge animation
TARGET_INCLUDE_PIXEL_CHARGER := true

#Official
RAVEN_LAIR := Official

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.corvus.maintainer=sewa2k
CORVUS_MAINTAINER := sewa2k

# proton-clang
USE_PROTON := true


TARGET_FACE_UNLOCK_SUPPORTED := true
scr_resolution := 1080

PRODUCT_NAME := corvus_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
