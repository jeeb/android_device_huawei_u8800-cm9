#
# Copyright (C) 2011 The Android Open-Source Project
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Use the non-open-source part, if present
-include vendor/huawei/u8800/BoardConfigVendor.mk

# Huawei U8800 Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := u8800

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_QCOM_HARDWARE := true

# Camera
USE_CAMERA_STUB := true
BOARD_CAMERA_USE_GETBUFFERINFO := true

# Graphics
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/huawei/u8800/other/egl.cfg

# Kernel
TARGET_PREBUILT_KERNEL := device/huawei/u8800/other/kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# recovery filesystem table
#=========================
#  0 /tmp		ramdisk 	(null)			(null)
#  1 /boot		vfat 		/dev/block/mmcblk0p1	(null)
#  2 /fat		vfat 		/dev/block/mmcblk0p1	(null)
#  3 /cache		ext4 		/dev/block/mmcblk0p6	(null)
#  4 /data_pseudo	ext4 		/dev/block/mmcblk0p13	(null)
#  5 /misc		emmc 		/dev/block/mmcblk0p7	(null)
#  6 /recovery		vfat 		/dev/block/mmcblk0p1	(null)
#  7 /HWUserData	vfat 		/dev/block/mmcblk0p14	(null)
#  8 /system		ext4 		/dev/block/mmcblk0p12	(null)
#  9 /sdcard		vfat 		/dev/block/mmcblk1p1	/dev/block/mmcblk1

# Recovery
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_INITRC := device/huawei/u8800/recovery/init.rc

# File System
#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04200000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x05300000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0Fc60000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
#BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_BOOT_DEVICE := /dev/block/mmcblk0p1		#  1 /boot vfat /dev/block/mmcblk0p1
BOARD_BOOT_FILESYSTEM := vfat
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6		#  3 /cache ext4 /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13		#  4 /data_pseudo ext4 /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_MISC_DEVICE := /dev/block/mmcblk0p7		#  5 /misc emmc /dev/block/mmcblk0p7
BOARD_MISC_FILESYSTEM := emmc
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12		#  8 /system ext4 /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
#BOARD_HAS_NO_MISC_PARTITION := true

# SD Card
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1	#  9 /sdcard vfat /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1	#  9 /sdcard vfat /dev/block/mmcblk1		
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p14	#  7 /HWUserData vfat /dev/block/mmcblk0p14
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
