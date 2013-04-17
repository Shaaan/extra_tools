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

PRODUCT_COPY_FILES += \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/camera.montblanc.so:system/lib/hw/camera.montblanc.so 

#LVVEFS config 
PRODUCT_COPY_FILES += \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/LVVEFS_Rx_Configuration.txt:system/etc/LVVEFS_tuning_parameters/LVVEFS_Rx_Configuration.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/LVVEFS_Tx_Configuration.txt:system/etc/LVVEFS_tuning_parameters/LVVEFS_Tx_Configuration.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_SPEAKER_WB.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_WB.txt:system/etc/LVVEFS_tuning_parameters/Tx_ControlParams_SPEAKER_WB.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VOIP.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_VT.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECOFF_WB.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VOIP.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VOIP.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VT.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_VT.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_WB.txt:system/etc/LVVEFS_tuning_parameters/Rx_ControlParams_BTNRECON_WB.txt \
    vendor/samsung/u8500-common/proprietary/system/etc/AGPS_CA.pem:system/etc/AGPS_CA.pem \
    vendor/samsung/u8500-common/proprietary/system/etc/Volume.db:system/etc/Volume.db \
    vendor/samsung/u8500-common/proprietary/system/etc/adm.sqlite-u8500:system/etc/adm.sqlite-u8500 \
    vendor/samsung/u8500-common/proprietary/system/etc/calib.dat:system/etc/calib.dat \
    vendor/samsung/u8500-common/proprietary/system/etc/param.dat:system/etc/param.dat \
    vendor/samsung/u8500-common/proprietary/system/etc/plmn.latam.list:system/etc/plmn.latam.list \
    vendor/samsung/u8500-common/proprietary/system/etc/plmn.operator.list:system/etc/plmn.operator.list \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/audio.primary.montblanc.so:system/lib/hw/audio.primary.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/audio_policy.montblanc.so:system/lib/hw/audio_policy.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/copybit.montblanc.so:system/lib/hw/copybit.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/sensors.montblanc.so:system/lib/hw/sensors.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/gralloc.montblanc.so:system/lib/hw/gralloc.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/hwcomposer.montblanc.so:system/lib/hw/hwcomposer.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/lights.montblanc.so:system/lib/hw/lights.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/camera.montblanc.so:system/lib/hw/camera.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/ste_omxcomponents/:system/lib/ste_omxcomponents/ \
    vendor/samsung/u8500-common/proprietary/system/lib/tee/cops_ta.sww:system/lib/tee/cops_ta.sww \
    vendor/samsung/u8500-common/proprietary/system/lib/tee/custom_ta.sww:system/lib/tee/custom_ta.sww \
    vendor/samsung/u8500-common/proprietary/system/lib/tee/smcl_ta_8500bx_secure.ssw:system/lib/tee/smcl_ta_8500bx_secure.sww \
    vendor/samsung/u8500-common/proprietary/system/lib/tee/libbassapp_ssw:system/lib/tee/libbassapp_sww \
    vendor/samsung/u8500-common/proprietary/system/lib/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so \
    vendor/samsung/u8500-common/proprietary/system/lib/libasound.so:system/lib/libasound.so \
    vendor/samsung/u8500-common/proprietary/system/lib/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    vendor/samsung/u8500-common/proprietary/system/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf \
    vendor/samsung/u8500-common/proprietary/system/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    vendor/samsung/u8500-common/proprietary/system/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    vendor/samsung/u8500-common/proprietary/system/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    vendor/samsung/u8500-common/proprietary/system/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    vendor/samsung/u8500-common/proprietary/system/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/gralloc.montblanc.so:system/lib/hw/gralloc.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/lib/libMali.so:system/lib/libMali.so \
    vendor/samsung/u8500-common/proprietary/system/lib/libUMP.so:system/lib/libUMP.so \
    vendor/samsung/u8500-common/proprietary/system/lib/hw/hwcomposer.montblanc.so:system/lib/hw/hwcomposer.montblanc.so \
    vendor/samsung/u8500-common/proprietary/system/bin/admsrv:system/bin/admsrv \
    vendor/samsung/u8500-common/proprietary/system/bin/at_core:system/bin/at_core \
    vendor/samsung/u8500-common/proprietary/system/bin/copsdaemon:system/bin/copsdaemon \
    vendor/samsung/u8500-common/proprietary/system/bin/cspsa-server:system/bin/cspsa-server \
    vendor/samsung/u8500-common/proprietary/system/bin/modem-supervisor:system/bin/modem-supervisor \
    vendor/samsung/u8500-common/proprietary/system/bin/modem_log_relay:system/bin/modem_log_relay \
    vendor/samsung/u8500-common/proprietary/system/bin/msa:system/bin/msa \
    vendor/samsung/u8500-common/proprietary/system/bin/stedump:system/bin/stedump \
    vendor/samsung/u8500-common/proprietary/system/xbin/battery_params:system/xbin/battery_params
