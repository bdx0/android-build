#$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/board/generic/device.mk)

include $(SRC_TARGET_DIR)/product/emulator.mk
#
# Overrides
PRODUCT_NAME := aosp_emu
PRODUCT_DEVICE := dbd
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on ARM Emulator
