LOCAL_PATH := $(call my-dir)

#
# custom apps
#

include $(CLEAR_VARS)
LOCAL_MODULE := bash
LOCAL_SRC_FILES:= xbin/bash
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)

etc_files := $(wildcard $(LOCAL_PATH)/etc/*)

BASH_ETC := $(TARGET_OUT)/etc/$(LOCAL_MODULE)
BASH_CONFIGS := $(addprefix $(BASH_ETC)/,$(notdir $(etc_files)))
$(BASH_CONFIGS): $(BASH_ETC)/%: $(LOCAL_PATH)/etc/% | $(LOCAL_BUILT_MODULE)
	@echo "Install: $@ -> $(BASH_ETC)"
	@mkdir -p $(dir $@)
	$(hide) cp $< $@

ALL_DEFAULT_INSTALLED_MODULES += $(BASH_CONFIGS)

ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
    $(ALL_MODULES.$(LOCAL_MODULE).INSTALLED) $(BASH_CONFIGS)

