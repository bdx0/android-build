# make file for new hardware  from 
#
LOCAL_PATH := $(call my-dir)
#
# this is here to use the pre-built kernel
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
#endif
#
#file := $(INSTALLED_KERNEL_TARGET)
#ALL_PREBUILT += $(file)
#$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
#	$(transform-prebuilt-to-target)
#
# no boot loader, so we don't need any of that stuff..  
#
#LOCAL_PATH := vendor/dbd/dbd
#
#include $(CLEAR_VARS)
#
# include more board specific stuff here? Such as Audio parameters.      
#

#
# Set up product-global definitions and include product-specific rules.
#

-include $(TARGET_DEVICE_DIR)/AndroidBoard.mk

# Generate a file that contains various information about the
# device we're building for.  This file is typically packaged up
# with everything else.
#
# If TARGET_BOARD_INFO_FILE (which can be set in BoardConfig.mk) is
# defined, it is used, otherwise board-info.txt is looked for in
# $(TARGET_DEVICE_DIR).
#
INSTALLED_ANDROID_INFO_TXT_TARGET := $(PRODUCT_OUT)/android-info.txt
board_info_txt := $(TARGET_BOARD_INFO_FILE)
ifndef board_info_txt
board_info_txt := $(wildcard $(TARGET_DEVICE_DIR)/board-info.txt)
endif
$(INSTALLED_ANDROID_INFO_TXT_TARGET): $(board_info_txt)
  #  @echo "$(TARGET_DEVICE_DIR)"
	$() build/tools/check_radio_versions.py $< $(BOARD_INFO_CHECK)
	$(call pretty,"Generated: ($@)")
ifdef board_info_txt
	$() grep -v '#' $< > $@
else
	$() echo "board=$(TARGET_BOOTLOADER_BOARD_NAME)" > $@
endif