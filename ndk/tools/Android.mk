#
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


LOCAL_PATH:= $(call my-dir)

ifneq ($(TARGET_BUILD_APPS),)
##################################
include $(CLEAR_VARS)

LOCAL_MODULE := apriori
LOCAL_SRC_FILES := $(HOST_OS)/apriori$(HOST_EXECUTABLE_SUFFIX)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_SUFFIX := $(HOST_EXECUTABLE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := apriori$(HOST_EXECUTABLE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE := soslim
LOCAL_SRC_FILES := $(HOST_OS)/soslim$(HOST_EXECUTABLE_SUFFIX)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_SUFFIX := $(HOST_EXECUTABLE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := soslim$(HOST_EXECUTABLE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)

##################################
endif # TARGET_BUILD_APPS
