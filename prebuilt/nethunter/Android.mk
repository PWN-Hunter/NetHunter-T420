LOCAL_PATH := $(call my-dir)

# Kali nhapps

include $(CLEAR_VARS)
LOCAL_MODULE := NetHunter-T420
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := apk/nethunter.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Term-420
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := apk/terminal.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

# Kali bin files

include $(CLEAR_VARS)
LOCAL_MODULE := NScripts
LOCAL_SRC_FILES := bin/bootkali \
		bin/bootkali_bash \
		bin/bootkali_env \
		bin/bootkali_init \
		bootkali_log \
		bootkali_login \
		changemac \
		chrootmgr \
		killkali
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)
