#
# This policy configuration will be used by all qcom products
# that inherit from PixelDust Project
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixeldust/sepolicy/qcom/private

BOARD_SEPOLICY_DIRS += \
    device/pixeldust/sepolicy/qcom/common \
    device/pixeldust/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
