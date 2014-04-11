$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/board/generic/device.mk)

#include $(SRC_TARGET_DIR)/product/emulator.mk

#
# Overrides
PRODUCT_NAME := emu
PRODUCT_DEVICE := dbd
PRODUCT_BRAND := Android-dbd
PRODUCT_MODEL := AOSP on ARM Emulator

LOCAL_KERNEL := prebuilts/qemu-kernel/arm/kernel-qemu-armv7
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel