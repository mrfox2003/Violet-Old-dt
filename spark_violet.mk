#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := spark_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi
SPARK_BUILD_TYPE := OFFICIAL
BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.211205.016.A1/7957957:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.211205.016.A1 7957957 release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/raven/raven:12/SQ1D.211205.016.A1/7957957:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

WITH_GAPPS := true

TARGET_NO_PREBUILT_CAMERA := true
