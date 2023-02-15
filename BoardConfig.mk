#
# Copyright (C) 2018-2023 The LineageOS Project
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

# Inherit from sony sm8150-common
-include device/sony/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/bahamut
PREBUILT_PATH := device/sony/bahamut-prebuilt

# Display
TARGET_SCREEN_DENSITY := 420

BOARD_KERNEL_CMDLINE += buildproduct=bahamut
TARGET_KERNEL_CONFIG := vendor/bahamut_defconfig
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_OTA_ASSERT_DEVICE := 901SO,SOV41,SO-01M

BUILD_WITHOUT_VENDOR := true
BOARD_PREBUILT_VENDORIMAGE := $(PREBUILT_PATH)/vendor.img


TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb

BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114994094080

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/rootdir/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/rootdir/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/rootdir/system.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/rootdir/system_ext.prop

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# inherit from the proprietary version
-include vendor/sony/bahamut/BoardConfigVendor.mk
