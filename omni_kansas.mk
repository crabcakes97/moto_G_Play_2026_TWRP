# Inherit from the TWRP product yooo
$(call inherit-product, $(LOCAL_PATH)/twrp_kansas.mk)

# Override product name for OrangeFox
PRODUCT_NAME := omni_kansas
