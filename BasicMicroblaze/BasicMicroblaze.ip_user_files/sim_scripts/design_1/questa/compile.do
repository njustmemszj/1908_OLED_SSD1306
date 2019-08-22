vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v10_0_5
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_10
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/mdm_v3_2_12
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_iic_v2_0_18
vlib questa_lib/msim/axi_gpio_v2_0_17
vlib questa_lib/msim/dist_mem_gen_v8_0_12
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_1
vlib questa_lib/msim/lib_fifo_v1_0_10
vlib questa_lib/msim/axi_quad_spi_v3_2_14
vlib questa_lib/msim/axi_timer_v2_0_17
vlib questa_lib/msim/axi_uartlite_v2_0_19
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_15
vlib questa_lib/msim/axi_data_fifo_v2_1_14
vlib questa_lib/msim/axi_crossbar_v2_1_16
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vlib questa_lib/msim/blk_mem_gen_v8_4_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap microblaze_v10_0_5 questa_lib/msim/microblaze_v10_0_5
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_10 questa_lib/msim/axi_intc_v4_1_10
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap mdm_v3_2_12 questa_lib/msim/mdm_v3_2_12
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_iic_v2_0_18 questa_lib/msim/axi_iic_v2_0_18
vmap axi_gpio_v2_0_17 questa_lib/msim/axi_gpio_v2_0_17
vmap dist_mem_gen_v8_0_12 questa_lib/msim/dist_mem_gen_v8_0_12
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_1 questa_lib/msim/fifo_generator_v13_2_1
vmap lib_fifo_v1_0_10 questa_lib/msim/lib_fifo_v1_0_10
vmap axi_quad_spi_v3_2_14 questa_lib/msim/axi_quad_spi_v3_2_14
vmap axi_timer_v2_0_17 questa_lib/msim/axi_timer_v2_0_17
vmap axi_uartlite_v2_0_19 questa_lib/msim/axi_uartlite_v2_0_19
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_15 questa_lib/msim/axi_register_slice_v2_1_15
vmap axi_data_fifo_v2_1_14 questa_lib/msim/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 questa_lib/msim/axi_crossbar_v2_1_16
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_14 questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_5 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_10 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/cf04/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_12 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_18 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4185/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_iic_0_0/sim/design_1_axi_iic_0_0.vhd" \

vcom -work axi_gpio_v2_0_17 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_12 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_10 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_14 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/9db7/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \

vcom -work axi_timer_v2_0_17 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/38c3/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_timer_0_0/sim/design_1_axi_timer_0_0.vhd" \

vcom -work axi_uartlite_v2_0_19 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_uartlite_1_0/sim/design_1_axi_uartlite_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_14 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -64 -93 \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../BasicMicroblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \
"../../../bd/design_1/ip/design_1_SSD1306_OLED_ML_0_0/IPSRC/charLib/charLib/sim/charLib.v" \
"../../../bd/design_1/ipshared/a15e/IPSRC/Delay.v" \
"../../../bd/design_1/ipshared/a15e/IPSRC/SSD1306_OLED_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/a15e/IPSRC/SpiCtrl.v" \
"../../../bd/design_1/ipshared/a15e/IPSRC/SSD1306_OLED_ML.v" \
"../../../bd/design_1/ip/design_1_SSD1306_OLED_ML_0_0/sim/design_1_SSD1306_OLED_ML_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

