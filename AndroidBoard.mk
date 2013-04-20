LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include kernel/kyocera/isw12k/AndroidKernel.mk

file := $(INSTALLED_KERNEL_TARGET)
$(file) : $(TARGET_PREBUILT_KERNEL) | $(ACP)
  $(transform-prebuilt-to-target)

# include the non-open-source counterpart to this file
-include vendor/kyocera/isw12k/AndroidBoardVendor.mk
