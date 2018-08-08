#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# config.mk
#
# Product-specific compile-time definitions.
#

# inherit from msm8916-common
include device/huawei/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/huawei/cherry

# Assert
TARGET_OTA_ASSERT_DEVICE := c8817d,g620s,C8817D,C8817E,G621-TL00,G620S-UL00,G620S-L01,Che1-CL20,Che1-L04

# NFC
NFC_ANTENNA := c8817d
TARGET_USES_QCA_NFC := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# inherit from the proprietary version
include vendor/huawei/cherry/BoardConfigVendor.mk
