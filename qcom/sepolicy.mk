#
# This policy configuration will be used by all qcom products
# that inherit from PixelDust Project
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixeldust/sepolicy/qcom/dynamic \
    device/pixeldust/sepolicy/qcom/system-only
else
BOARD_SEPOLICY_DIRS += \
    device/pixeldust/sepolicy/qcom/vendor
endif
