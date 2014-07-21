#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262
TARGET_SPECIFIC_HEADER_PATH := device/samsung/i9300/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i9300/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_i9300_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9300/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/i9300/selinux

BOARD_SEPOLICY_UNION += \
    device.te \
    domain.te \
    file.te \
    file_contexts \
    init.te \
    mediaserver.te \
    rild.te \
    system.te \
    ueventd.te \
    wpa_supplicant.te

# assert
TARGET_OTA_ASSERT_DEVICE := m0,i9300,GT-I9300

COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# inherit from the proprietary version
-include vendor/samsung/i9300/BoardConfigVendor.mk

#TWRP flags
RECOVERY_VARIANT := twrp
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_USB_STORAGE := true
SP1_NAME := "efs"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INCLUDE_JB_CRYPTO := true
TW_INCLUDE_CRYPTO_SAMSUNG := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p12"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,discard,noauto_da_alloc,journal_async_commit,errors=panic"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
