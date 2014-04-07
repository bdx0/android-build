 #
  # This file should set PRODUCT_MAKEFILES to a list of product makefiles
  # to expose to the build system.  LOCAL_DIR will already be set to
  # the directory containing this file. 
  #
  # This file may not rely on the value of any variable other than
  # LOCAL_DIR; do not use any conditionals, and do not look up the
  # value of any variable that isn't set in this file or in a file that
  # it includes.
  #
ifneq ($(TARGET_BUILD_APPS),)
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/core.mk \
    $(LOCAL_DIR)/emu.mk
else
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/core.mk \
    $(LOCAL_DIR)/emu.mk
endif