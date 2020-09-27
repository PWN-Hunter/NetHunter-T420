# Separate mk for KekHunterOS

# Include TWRP
$(call inherit-product-if-exists, vendor/lineage/config/twrp.mk)

# Include Firmware
$(call inherit-product-if-exists, vendor/firmware/atheros/atheros.mk)
$(call inherit-product-if-exists, vendor/firmware/zd1211/zd1211.mk)

# Include some gnu bin libraries for ANDROID!!!!
$(call inherit-product-if-exists, vendor/libraries/ncurses/ncurses.mk)
$(call inherit-product-if-exists, vendor/libraries/bash/bash.mk)
$(call inherit-product-if-exists, vendor/libraries/intl/intl.mk)

#
# Prebuilt nethunter packages
#
PRODUCT_PACKAGES += \
    NetHunter-T420 \
    Term-420 \

#
# Include firmware
#

PRODUCT_PACKAGES += \
    firmware

#
# NH Scripts for otherr terminals
#

PRODUCT_PACKAGES += \
    bootkali \
    bootkali_bash \
    bootkali_env \
    bootkali_init \
    bootkali_log \
    bootkali_login \
    chrootmgr \
    killkali

#
# Custom apps like launchers and stores
#

PRODUCT_PACKAGES += \
    fdroid
