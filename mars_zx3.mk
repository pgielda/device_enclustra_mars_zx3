# Copyright (C) 2012 The Android Open Source Project
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

$(call inherit-product, build/target/product/full.mk)

PRODUCT_PACKAGES += gralloc.zynq hwcomposer.zynq
## PRODUCT_PACKAGES += busybox

PRODUCT_NAME := mars_zx3
TARGET_BOOTLOADER_BOARD_NAME := zynq
TARGET_BOARD_PLATFORM := zynq

PRODUCT_DEVICE := mars_zx3
PRODUCT_BRAND := Android
PRODUCT_MODEL := Enclustra Mars ZX3

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/generic/armv7-a-neon/overlay
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_COPY_FILES := \
	device/enclustra/mars_zx3/init.xilinxzynqplatform.rc:root/init.xilinxzynqplatform.rc \
	device/enclustra/mars_zx3/vold.fstab:system/etc/vold.fstab \
	frameworks/base/data/fonts/system_fonts.xml:system/etc/system_fonts.xml \
	device/enclustra/mars_zx3/EP0700M06.idc:system/usr/idc/EP0700M06.idc


