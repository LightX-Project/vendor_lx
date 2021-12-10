include vendor/lx/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/lx/config/BoardConfigQcom.mk
endif

include vendor/lx/config/BoardConfigSoong.mk
