#CLK
set_property PACKAGE_PIN D27 [get_ports clk_50MHz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_50MHz]

#reset
set_property PACKAGE_PIN AG27 [get_ports ext_reset_in]
set_property IOSTANDARD LVCMOS33 [get_ports ext_reset_in]

#LED
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_tri_o[7]}]
set_property PACKAGE_PIN L16 [get_ports {gpio_led_tri_o[0]}]
set_property PACKAGE_PIN J11 [get_ports {gpio_led_tri_o[1]}]
set_property PACKAGE_PIN K11 [get_ports {gpio_led_tri_o[2]}]
set_property PACKAGE_PIN L11 [get_ports {gpio_led_tri_o[3]}]
set_property PACKAGE_PIN L12 [get_ports {gpio_led_tri_o[4]}]
set_property PACKAGE_PIN L13 [get_ports {gpio_led_tri_o[5]}]
set_property PACKAGE_PIN L15 [get_ports {gpio_led_tri_o[6]}]
set_property PACKAGE_PIN K16 [get_ports {gpio_led_tri_o[7]}]
#uart 0_16550
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_0_rxd]
set_property PACKAGE_PIN A21 [get_ports uart_rtl_0_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_0_txd]
set_property PACKAGE_PIN A22 [get_ports uart_rtl_0_txd]
#uart 1_lite
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_rxd]
set_property PACKAGE_PIN B19 [get_ports uart_rtl_1_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_txd]
set_property PACKAGE_PIN B22 [get_ports uart_rtl_1_txd]

#IIC_AXI
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_0_sda_io]
set_property PACKAGE_PIN A18 [get_ports iic_rtl_0_scl_io]
set_property PACKAGE_PIN A20 [get_ports iic_rtl_0_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports pwm0_0]
set_property PACKAGE_PIN L17 [get_ports pwm0_0]

#QSPI_AXI
set_property PACKAGE_PIN K15 [get_ports spi_rtl_0_io0_io]
set_property PACKAGE_PIN K13 [get_ports spi_rtl_0_io1_io]
set_property PACKAGE_PIN A12 [get_ports spi_rtl_0_sck_io]
set_property PACKAGE_PIN A13 [get_ports {spi_rtl_0_ss_io[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_0_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_0_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_0_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_rtl_0_ss_io[0]}]

#SSD1306_OLED
set_property IOSTANDARD LVCMOS33 [get_ports DC_0  ]
set_property IOSTANDARD LVCMOS33 [get_ports RES_0 ]
set_property IOSTANDARD LVCMOS33 [get_ports SCLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports SDIN_0]
set_property IOSTANDARD LVCMOS33 [get_ports VBAT_0]
set_property IOSTANDARD LVCMOS33 [get_ports VDD_0 ]

set_property PACKAGE_PIN H12 [get_ports DC_0  ]
set_property PACKAGE_PIN B13 [get_ports RES_0 ]
set_property PACKAGE_PIN B15 [get_ports SCLK_0]
set_property PACKAGE_PIN B14 [get_ports SDIN_0]
set_property PACKAGE_PIN J12 [get_ports VBAT_0]
set_property PACKAGE_PIN J13 [get_ports VDD_0 ]











set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 12 [current_design]




set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[0]]
set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[1]]
set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[2]]
set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[3]]
set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[4]]
set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[5]]
set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[6]]
set_property OFFCHIP_TERM NONE [get_ports gpio_led_tri_o[7]]
set_property OFFCHIP_TERM NONE [get_ports iic_rtl_0_scl_io]
set_property OFFCHIP_TERM NONE [get_ports iic_rtl_0_sda_io]
set_property OFFCHIP_TERM NONE [get_ports pwm0_0]
set_property OFFCHIP_TERM NONE [get_ports uart_rtl_0_txd]
set_property OFFCHIP_TERM NONE [get_ports uart_rtl_1_txd]
set_property PULLUP true [get_ports iic_rtl_0_scl_io]
set_property PULLUP true [get_ports iic_rtl_0_sda_io]
