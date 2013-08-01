# Inherit AOSP device configuration for blade.
$(call inherit-product, device/alcatel/v860/full_v860.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_v860
PRODUCT_BRAND := Alcatel
PRODUCT_DEVICE := v860
PRODUCT_MODEL := v860
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=v860 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=Alcatel/v860/v860:2.3.6/GINGERBREAD/XWKTN:user/release-keys PRIVATE_BUILD_DESC="v860-user 2.3.6 GINGERBREAD XWKTN release-keys"

# Extra overlay for MDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/mdpi

# Copy bootanimation
PRODUCT_COPY_FILES += \
     vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := SmartII
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
