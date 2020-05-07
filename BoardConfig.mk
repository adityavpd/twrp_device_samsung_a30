#
# Copyright (C) 2020 crazo7924
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
#

DEVICE_PATH := device/samsung/a30

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Build fails without this
ALLOW_MISSING_DEPENDENCIES=true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7904
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)

# mkbootimg arguments
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01000000
BOARD_MKBOOTIMG_ARGS += --tags_offset 0x00000100
BOARD_MKBOOTIMG_ARGS += --header_version 1
BOARD_MKBOOTIMG_ARGS += --board SRPRL14A004RU

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos7904
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g72

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
AB_OTA_UPDATER := false

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# TWRP specific build flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 163
TW_USE_TOOLBOX := true
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_TWRPAPP := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
PLATFORM_SECURITY_PATCH := 2025-12-31

# SHRP-specific flags
SHRP_PATH := device/samsung/a30
# Maintainer name
SHRP_MAINTAINER := crazo7924
# Device codename
SHRP_DEVICE_CODE := a30
# Storage paths
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
# Enable use of flashlight
SHRP_FLASH := 1
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/devices/virtual/camera/flash/rear_torch_flash
# The device's recovery path, dont use blindly
SHRP_REC := /dev/block/13500000.dwmmc0/by-name/recovery
# Recovery Type [Only for About Section]
SHRP_REC_TYPE := Treble
# Recovery Type [Only for About Section]
SHRP_DEVICE_TYPE := A_Only
# SHRP Padding Flag (Only for rounded corner devices.)
SHRP_STATUSBAR_RIGHT_PADDING := 80
SHRP_STATUSBAR_LEFT_PADDING := 80
# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock
SHRP_EXPRESS := true
