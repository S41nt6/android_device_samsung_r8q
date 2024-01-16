#
# Copyright (C) 2024 The LineageOS Project
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

DEVICE_PATH := device/samsung/r8qxx

include device/samsung/r8q-common/BoardConfigCommon.mk

# Kernel
BOARD_NAME                 := SRPUB26A007

# OTA assert
TARGET_OTA_ASSERT_DEVICE := r8qxx
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
