#
# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2021 The LegionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Inherit some common Legion stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dot_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := K30 5G
PRODUCT_MANUFACTURER := Xiaomi

# Adds face unlock if package is available on ROM source.
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

#Blur
TARGET_SUPPORTS_BLUR := true

# GApps
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_SUPPORTS_GOOGLE_RECORDER := true
WITH_GAPPS := true

REMOVE_GAPPS_PACKAGES += \
    GoogleOneTimeInitializer \
    WellbeingPrebuilt

# Device Maintainer
DEVICE_MAINTAINER := DinhSan
