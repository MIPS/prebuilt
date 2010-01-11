LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Explicitly mark ntpdate as "eng" so that it doesn't
# get included in user or SDK builds. (GPL issues)
#
LOCAL_SRC_FILES := ntpdate
LOCAL_MODULE := ntpdate
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := debug
include $(BUILD_PREBUILT)

# Any prebuilt files with default TAGS can use the below:
prebuilt_files :=

$(call add-prebuilt-files, EXECUTABLES, $(prebuilt_files))
