# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/asus/Z00L/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/Z00L/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aicp_Z00L
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00L
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00L

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z00L \
	BUILD_FINGERPRINT="asus/WW_Z00L/ASUS_Z00L:5.0.2/LRX22G/WW_user_1.17.40.1234_20160304:user/release-keys" \
	PRIVATE_BUILD_DESC="Z00L-user 5.0.2 LRX22G WW_user_1.17.40.1234_20160304 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/aicp/configs/bootanimation.mk
