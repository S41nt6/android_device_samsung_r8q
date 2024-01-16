#
# Copyright (C) 2024 The LineageOS Project
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

DEVICE_PATH := device/samsung/r8qxx

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/r8q-common/common.mk)

# Init files
PRODUCT_PACKAGES += \
    init.nfc.sh \
    init.r8q.rc

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc_snxxx@1.2-service

# Disabled NFC inits
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/android.hardware.nfc_snxxx@1.2-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.nfc_snxxx@1.2-service.rc \
    $(DEVICE_PATH)/configs/init/android.hardware.nfc@1.2-service.samsung.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.nfc@1.2-service.samsung.rc

# NFC configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp_RF.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-nci-NXP_SN100U.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci-NXP_SN100U.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-nci-SLSI.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci-SLSI.conf

# Secure Element
PRODUCT_PACKAGES += \
    libchrome.vendor

# Inherit r8qxx blobs
$(call inherit-product, vendor/samsung/r8qxx/r8qxx-vendor.mk)
