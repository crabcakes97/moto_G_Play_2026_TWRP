#
# Copyright (C) 2025 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common TWRP configuration.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Kansas device tree.
$(call inherit-product, device/motorola/kansas/device.mk)

PRODUCT_DEVICE := kansas
PRODUCT_NAME := twrp_kansas
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G 2025
PRODUCT_MANUFACTURER := motorola
