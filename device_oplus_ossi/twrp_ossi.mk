#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk) # <-- FIXED PARENTHESIS HERE
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


# Inherit from ossi device
$(call inherit-product, device/oplus/ossi/device.mk)

# twrp_ossi.mk
PRODUCT_NAME := twrp_ossi
PRODUCT_DEVICE := ossi
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme Narzo 60X
PRODUCT_MANUFACTURER := realme

# TWRP Theme / Screen
TW_THEME := portrait_hdpi
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_DPI := 480

# Explicitly build recovery
PRODUCT_PACKAGES += \
    recovery

PRODUCT_GMS_CLIENTID_BASE := android-oplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 14 UKQ1.230924.001 1727254344348 release-keys"

BUILD_FINGERPRINT := oplus/ossi/ossi:14/UKQ1.230924.001/1727254344348:user/release-keys


