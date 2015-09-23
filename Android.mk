LOCAL_PATH := $(call my-dir)
ifeq ($(HOST_OS), linux)

include $(CLEAR_VARS)
LOCAL_MODULE := libxmlrpc++

LOCAL_CPPFLAGS := -Wall -fexceptions
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/src

xmlrpc_src_files := \
	$(wildcard $(LOCAL_PATH)/src/*.cpp)
LOCAL_SRC_FILES := \
	$(xmlrpc_src_files:$(LOCAL_PATH)/%=%)
include $(BUILD_SHARED_LIBRARY)

endif # HOST_OS == linux
