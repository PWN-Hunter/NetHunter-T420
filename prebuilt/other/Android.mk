LOCAL_PATH := $(call my-dir)

#
# custom apps
#

include $(CLEAR_VARS)
LOCAL_MODULE := fdroid
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := apk/fdroid.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
