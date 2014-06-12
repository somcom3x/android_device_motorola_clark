# Copyright (C) 2014 The Android Open Source Project
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

$(call inherit-product, device/qcom/common/common.mk)

PRODUCT_NAME := msm8994
PRODUCT_DEVICE := msm8994
PRODUCT_BRAND := Android
PRODUCT_MODEL := MSM8994 for arm64

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

#Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/qcom/msm8994/audio_policy.conf:system/etc/audio_policy.conf \
    device/qcom/msm8994/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/qcom/msm8994/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/qcom/msm8994/mixer_paths_i2s.xml:system/etc/mixer_paths_i2s.xml \
    device/qcom/msm8994/audio_platform_info_i2s.xml:system/etc/audio_platform_info_i2s.xml

# Listen configuration file
PRODUCT_COPY_FILES += \
    device/qcom/msm8994/listen_platform_info.xml:system/etc/listen_platform_info.xml
