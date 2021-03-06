# Inherit common meta stuff
$(call inherit-product, vendor/meta/config/common_full.mk)

# Required meta packages
PRODUCT_PACKAGES += \
    LatinIME

# Include meta LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/meta/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/meta/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
