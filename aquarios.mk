# Copyright (C) 2018 AquariOS
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

# Inherit from the common product configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Include some AquariOS configs
include vendor/aquarios/configs/aquarios_phone.mk

# Screen Resolution for the Bootanimation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, device/huawei/angler/device.mk)
$(call inherit-product, vendor/huawei/angler/device-vendor.mk)

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    PRIVATE_BUILD_DESC="angler-user 8.1.0 OPM7.181205.001 5080180 release-keys"

BUILD_FINGERPRINT := google/angler/angler:8.1.0/OPM7.181205.001/5080180:user/release-keys
