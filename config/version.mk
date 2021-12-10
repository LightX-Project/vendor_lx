# Versioning System
LIGHTX_BUILD_VERSION = v12.0

ifndef LIGHTX_BUILD_TYPE
    LIGHTX_BUILD_TYPE := Vanilla
endif

# Set all versions
LIGHTX_DATE := $(shell date -u +%Y%m%d-%H%M)
LIGHTX_VERSION := LightX_$(LIGHTX_BUILD)-$(LIGHTX_BUILD_VERSION)-$(LIGHTX_DATE)-$(LIGHTX_BUILD_TYPE)
SYBERIA_FINGERPRINT := LightX/$(LIGHTX_BUILD_VERSION)/$(PLATFORM_VERSION)/$(BUILD_ID)/$(LIGHTX_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.lx.version=$(LIGHTX_BUILD_VERSION) \
    com.lx.fingerpring=$(LIGHTX_FINGERPRINT) \
    ro.lx.display.version=LightX-$(LIGHTX_BUILD_VERSION) \
    ro.lx.releasetype=$(SYBERIA_BUILD_TYPE) \
    ro.modversion=$(LIGHTX_VERSION)
