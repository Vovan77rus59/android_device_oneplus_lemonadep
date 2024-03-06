#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonadep device
$(call inherit-product, device/oneplus/lemonadep/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

PRODUCT_NAME := derp_lemonadep
PRODUCT_DEVICE := lemonadep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2121

PRODUCT_SYSTEM_NAME := OnePlus9Pro_IND
PRODUCT_SYSTEM_DEVICE := OnePlus9Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 14 UKQ1.230924.001 1708683141791 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9Pro_IND/OnePlus9Pro:14/UKQ1.230924.001/R.1695d68-52ce-52cd:user/release-keys

# DERP Stuff
DERP_BUILDTYPE := Release
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
