#
# Copyright (C) 2021 The LineageOS Project
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

include device/samsung/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a70q

# Assert
TARGET_OTA_ASSERT_DEVICE := a70q

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Board
BOARD_HEADER_VERSION     := 1
TARGET_BOARD_NAME := SRPRL06C005

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.a70q

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Kernel
BOARD_MKBOOTIMG_ARGS += --board $(TARGET_BOARD_NAME) --header_version $(BOARD_HEADER_VERSION)
TARGET_KERNEL_CONFIG := a70q_defconfig

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(DEVICE_PATH)/sepolicy/private
