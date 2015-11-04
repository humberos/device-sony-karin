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

# Kernel
TARGET_KERNEL_SOURCE := kernel/sony/msm

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 960x640

# Don't use DSPManager
TARGET_NO_DSPMANAGER := true

# Inherit AOSP Kitakami common device parts
$(call inherit-product, device/sony/karin/aosp_sgp771.mk)

# Inherit Omni Kitakami common device parts
$(call inherit-product, device/sony/kitakami-common/device_omni.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/karin/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device

# Override Product Name for OmniROM
PRODUCT_NAME := omni_karin
PRODUCT_MODEL := Xperia Z4 Tablet

# Assert
TARGET_OTA_ASSERT_DEVICE := SGP771,karin
