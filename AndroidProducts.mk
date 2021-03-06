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

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/hentai_discovery_RoW.mk \
    $(LOCAL_DIR)/hentai_discovery_DSDS.mk \
    $(LOCAL_DIR)/hentai_discovery_RoW_Go.mk \
    $(LOCAL_DIR)/hentai_discovery_DSDS_Go.mk \
    
COMMON_LUNCH_CHOICES += \
    hentai_discovery_RoW-eng \
    hentai_discovery_RoW-userdebug \
    hentai_discovery_RoW-user \
    hentai_discovery_DSDS-eng \
    hentai_discovery_DSDS-userdebug \
    hentai_discovery_DSDS-user \
    hentai_discovery_RoW_Go-eng \
    hentai_discovery_RoW_Go-userdebug \
    hentai_discovery_RoW_Go-user \
    hentai_discovery_DSDS_Go-eng \
    hentai_discovery_DSDS_Go-userdebug \
    hentai_discovery_DSDS_Go-user \
