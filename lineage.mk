# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from h811 device
$(call inherit-product, device/lge/h811/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h811
PRODUCT_NAME := lineage_h811
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H811
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4__tmo_us" \
    BUILD_FINGERPRINT="lge/p1__tmo_us/p1:7.0/NRD90U/1717709471d0f:user/release-keys" \
    PRIVATE_BUILD_DESC="p1__tmo_us-user 7.0 NRD90U 1717709471d0f release-keys"
