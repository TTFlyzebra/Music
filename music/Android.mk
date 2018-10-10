LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_MANIFEST_FILE := src/main/AndroidManifest.xml
LOCAL_SRC_FILES := $(call all-java-files-under, src/main/java) \
    src/com/android/music/IMediaPlaybackService.aidl
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/src/main/res
#LOCAL_ASSET_DIR:= $(LOCAL_PATH)/src/main/assets

LOCAL_PACKAGE_NAME := Music

LOCAL_SDK_VERSION := current

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
