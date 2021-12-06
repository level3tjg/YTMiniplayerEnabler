TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = YouTube

ARCHS = arm64 arm64e

THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMiniplayerEnabler

YTMiniplayerEnabler_FILES = Tweak.x
YTMiniplayerEnabler_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
