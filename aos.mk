# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from h815 device
$(call inherit-product, device/lge/h811/device.mk)

# Inherit some common AOSCP stuff.
$(call inherit-product, vendor/aos/config/common.mk)

# Overlays (inherit after vendor/lineage to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := aos_h811
PRODUCT_DEVICE := h811
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H811
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4__tmo_us" \
    PRIVATE_BUILD_DESC="p1__tmo_us-user 6.0 MRA58K 152940055675e release-keys"

BUILD_FINGERPRINT := "lge/p1__tmo_us/p1:6.0/MRA58K/152940055675e:user/release-keys"
