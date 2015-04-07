#LOGI_HARD_PATH=

project = wishbone_gpio_6
vendor = xilinx
family = Spartan6
part = xc6slx9-2tqg144
top_module = wishbone_gpio_6
intstyle = -intstyle ise
libdir = $(LOGI_HARD_PATH)/build_lib

ucf = ./logibone_ra3.ucf
vfiles = wishbone_gpio_6.vhd
vfiles += $(LOGI_HARD_PATH)/hdl/wishbone/logi_wishbone_pack.vhd
vfiles += $(LOGI_HARD_PATH)/hdl/wishbone/peripherals/logi_wishbone_peripherals_pack.vhd
vfiles += $(LOGI_HARD_PATH)/hdl/wishbone/gpmc_wishbone_wrapper.vhd
vfiles += $(LOGI_HARD_PATH)/hdl/wishbone/wishbone_intercon.vhd
vfiles += $(LOGI_HARD_PATH)/hdl/utils/logi_utils_pack.vhd
vfiles += $(LOGI_HARD_PATH)/hdl/wishbone/peripherals/wishbone_gpio.vhd

include $(libdir)/synth/xilinx.mk
