# Copyright 2014 The Android Open Source Project
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

DEVICE_PATH := device/sony/leo_aosp

# Kernel
TARGET_KERNEL_SOURCE := kernel/sony/msm

# Inherit AOSP Shinano common device parts
$(call inherit-product, $(DEVICE_PATH)/aosp_d6603.mk)

# Inherit Omni Shinano common device parts
$(call inherit-product, device/sony/shinano-common/device_omni.mk)

# Inherit Carbon phone configuration
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device

# Override Product Name for CarbonROM
PRODUCT_DEVICE := leo_aosp
PRODUCT_NAME := carbon_leo_aosp
PRODUCT_MODEL := Xperia Z3

# Assert
TARGET_OTA_ASSERT_DEVICE := D6602,D6603,D6633,D6643,z3,leo,leo_aosp
