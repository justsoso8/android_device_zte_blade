# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_HAS_FLIPPED_SCREEN := true

BOARD_NO_RGBX_8888 := true

TARGET_NO_BOOTLOADER := true

TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/n780/P020121010542808168083/kernel

BOARD_KERNEL_CMDLINE := androidboot.hardware=blade console=ttyMSM2,115200  g_android.product_id=0x1354

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := n780

BOARD_HAVE_BLUETOOTH := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME     := "ar6000"

WITH_JIT := true
ENABLE_JSC_JIT := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

JS_ENGINE := v8

# OpenGL drivers config file path
BOARD_EGL_CFG := device/zte/n780/egl.cfg

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

BOARD_GPS_LIBRARIES := libloc_api

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := n780
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_KERNEL_BASE := 0x02a00000
#BOARD_PAGE_SIZE := 0x00000800

TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00480000 00020000 "recovery"
# mtd1: 00480000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00060000 00020000 "misc"
# mtd4: 02940000 00020000 "cache"
# mtd5: 0cf80000 00020000 "system"
# mtd6: 0d020000 00020000 "userdata"
# mtd7: 00180000 00020000 "persist"
#RECOVERY:00 00 00 00 00 00 CC 01 00 00 28 00 00 00 00 00 00 00  -->1CC 28
#BOOT:00 00 00 00 00 00 00 00 00 00 F4 01 00 00 28 00 00 00 00 00 00 00  -->1F4 28
#SPLASH:00 00 00 00 00 00 00 00 1C 02 00 00 0C 00 00 00 00 00 00 00  -->21C 0C
#MISC: 00 00 00 00 00 00 00 00 00 00 28 02 00 00 04 00 00 00 00 00 00 00  -->228 04
#CACHE:00 00 00 00 00 00 00 00 00 2C 02 00 00 2C 01 00 00 00 00 00 00  -->22C 12C
#CACHE:00 00 00 00 00 00 00 00 00 2C 02 00 00 50 00 00 00 00 00 00 00  -->22C 50
#SYSTEM:00 00 00 00 00 00 00 00 58 03 00 00 E0 06 00 00 00 00 00 00  -->358 6E0
#SYSTEM:00 00 00 00 00 00 00 00 7c 02 00 00 b0 04 00 00 00 00 00 00  -->27c 4b0
#SYSTEM:00 00 00 00 00 00 00 00 7c 02 00 00 b0 04 00 00 00 00 00 00  -->27c 3c0
#USERDATA:00 00 00 00 00 00 38 0A 00 00 14 05 00 00 00 00 00 00  -->A38 514
#USERDATA:00 00 00 00 00 00 2c 07 00 00 20 08 00 00 00 00 00 00  -->72c 820
#USERDATA:00 00 00 00 00 00 2c 07 00 00 20 08 00 00 00 00 00 00  -->63c 910
#OEM:00 00 00 00 00 00 00 00 00 00 00 4C 0F 00 00 A8 00 00 00 00 00 00 00  -->F4C A8
#PERSIST:00 00 00 00 00 00 00 F4 0F 00 00 0C 00 00 00 00 00 00 00  -->FF4 0C

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00480000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0cf80000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0d020000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/n780/recovery/recovery_ui.c
