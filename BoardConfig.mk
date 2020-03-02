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

include device/sony/nile/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := unknown
ifneq (,$(filter %hentai_discovery_RoW,$(TARGET_PRODUCT)))
TARGET_BOOTLOADER_BOARD_NAME := H3213
else ifneq (,$(filter %hentai_discovery_DSDS,$(TARGET_PRODUCT)))
TARGET_BOOTLOADER_BOARD_NAME := H4213
else
TARGET_BOOTLOADER_BOARD_NAME := H3213
$(warning Unrecognized value for TARGET_PRODUCT: "$(TARGET_PRODUCT)", using default value: "$(TARGET_BOOTLOADER_BOARD_NAME)")
endif

# Platform
PRODUCT_PLATFORM := nile

BOARD_KERNEL_CMDLINE += androidboot.hardware=discovery

#Use Clang instead of Gcc 4.9
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_CLANG_VERSION := r353983c

#kernel
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/sony/msm-4.14/kernel
TARGET_NEEDS_DTBOIMAGE := false

# Partition information
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3036676096
BOARD_VENDORIMAGE_PARTITION_SIZE := 891289600
BOARD_ODMIMAGE_PARTITION_SIZE := 419430400
# Reserve space for data encryption (21474836480-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 21474820096
