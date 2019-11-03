ARCHS = arm64 arm64e
TARGET = iphone:clang:13.2:13.2

include $(THEOS)/makefiles/common.mk

ADDITIONAL_OBJCFLAGS = -fobjc-arc

TWEAK_NAME = RoseAction
$(TWEAK_NAME)_FILES = Action.xm
$(TWEAK_NAME)_FRAMEWORKS += UIKit
$(TWEAK_NAME)_LIBRARIES += activator
$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk