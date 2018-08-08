#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, vendor/huawei/cherry/cherry-vendor.mk)

# NFC
PRODUCT_PACKAGES += \
    libqnfc-nci \
    libqnfc_nci_jni \
    nfc_nci.qc199x.default \
    QNfc \
    Tag \
    GsmaNfcService \
    com.gsma.services.nfc \
    com.gsma.services.utils \
    com.gsma.services.nfc.xml \
    com.android.nfc_extras \
    com.android.qualcomm.qti.nfc_extras \
    com.android.qualcomm.qti.nfc_extras.xml \
    com.android.nfc.helper \
    com.android.nfc.helper.xml \
    SmartcardService \
    org.simalliance.openmobileapi \
    org.simalliance.openmobileapi.xml \
    com.vzw.nfc \
    com.vzw.nfc.xml \
    libassd

PRODUCT_PACKAGES += \
    Signedrompatch_v20.bin \
    Signedrompatch_v21.bin \
    Signedrompatch_v24.bin \
    Signedrompatch_v30.bin \
    nfc_test.bin \
    fused_nvm.bin \
    hardfault.cfg

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl-qc199x

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/nfc-nci.conf \
    $(LOCAL_PATH)/releasetools/device_check.sh:install/bin/device_check.sh

$(call inherit-product, device/huawei/msm8916-common/msm8916.mk)
