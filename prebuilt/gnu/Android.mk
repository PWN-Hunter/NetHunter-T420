LOCAL_PATH := $(call my-dir)

#
# Gnu binaries for android (Also bit modified for android system path)
#

include $(CLEAR_VARS)
LOCAL_MODULE := make
LOCAL_SRC_FILES:= bin/make
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)
