# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i9100/full_i9100.mk)
 
# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)
 
# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# SGS2 overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/i9100

# Setup device specific product configuration.
PRODUCT_NAME := xylon_i9100
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i9100
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100

# Copy galaxys2 specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
