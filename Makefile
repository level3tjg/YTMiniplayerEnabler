TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = YouTube

ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMiniplayerEnabler

YTMiniplayerEnabler_FILES = Tweak.x
YTMiniplayerEnabler_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
