LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=               \
    AudioFlinger.cpp            \
    AudioMixer.cpp.arm          \
    AudioResampler.cpp.arm      \
    AudioPolicyService.cpp      \
    AudioBufferProvider.cpp     \
    ServiceUtilities.cpp
#   AudioResamplerSinc.cpp.arm
#   AudioResamplerCubic.cpp.arm

LOCAL_C_INCLUDES := \
    system/media/audio_effects/include \
    system/media/audio_utils/include

LOCAL_SHARED_LIBRARIES := \
    libaudioutils \
    libcommon_time_client \
    libcutils \
    libutils \
    libbinder \
    libmedia \
    libhardware \
    libhardware_legacy \
    libeffects \
    libdl \
    libpowermanager

LOCAL_STATIC_LIBRARIES := \
    libcpustats \
    libmedia_helper

LOCAL_MODULE:= libaudioflinger

include $(BUILD_SHARED_LIBRARY)
