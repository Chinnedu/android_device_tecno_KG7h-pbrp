#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from KG7h device
$(call inherit-product, device/tecno/KG7h/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, vendor/pb/config/gsm.mk)

# Extra required packages
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    libion.recovery

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KG7h
PRODUCT_NAME := omni_KG7h
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KG7h
PRODUCT_MANUFACTURER := tecno
