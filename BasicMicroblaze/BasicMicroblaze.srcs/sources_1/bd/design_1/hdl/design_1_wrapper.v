//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Aug 22 14:00:57 2019
//Host        : Masterzj running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DC_0,
    RES_0,
    SCLK_0,
    SDIN_0,
    VBAT_0,
    VDD_0,
    clk_50MHz,
    ext_reset_in,
    gpio_led_tri_o,
    iic_rtl_0_scl_io,
    iic_rtl_0_sda_io,
    pwm0_0,
    spi_rtl_0_io0_io,
    spi_rtl_0_io1_io,
    spi_rtl_0_sck_io,
    spi_rtl_0_ss_io,
    uart_rtl_0_rxd,
    uart_rtl_0_txd,
    uart_rtl_1_rxd,
    uart_rtl_1_txd);
  output DC_0;
  output RES_0;
  output SCLK_0;
  output SDIN_0;
  output VBAT_0;
  output VDD_0;
  input clk_50MHz;
  input ext_reset_in;
  output [7:0]gpio_led_tri_o;
  inout iic_rtl_0_scl_io;
  inout iic_rtl_0_sda_io;
  output pwm0_0;
  inout spi_rtl_0_io0_io;
  inout spi_rtl_0_io1_io;
  inout spi_rtl_0_sck_io;
  inout [0:0]spi_rtl_0_ss_io;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;
  input uart_rtl_1_rxd;
  output uart_rtl_1_txd;

  wire DC_0;
  wire RES_0;
  wire SCLK_0;
  wire SDIN_0;
  wire VBAT_0;
  wire VDD_0;
  wire clk_50MHz;
  wire ext_reset_in;
  wire [7:0]gpio_led_tri_o;
  wire iic_rtl_0_scl_i;
  wire iic_rtl_0_scl_io;
  wire iic_rtl_0_scl_o;
  wire iic_rtl_0_scl_t;
  wire iic_rtl_0_sda_i;
  wire iic_rtl_0_sda_io;
  wire iic_rtl_0_sda_o;
  wire iic_rtl_0_sda_t;
  wire pwm0_0;
  wire spi_rtl_0_io0_i;
  wire spi_rtl_0_io0_io;
  wire spi_rtl_0_io0_o;
  wire spi_rtl_0_io0_t;
  wire spi_rtl_0_io1_i;
  wire spi_rtl_0_io1_io;
  wire spi_rtl_0_io1_o;
  wire spi_rtl_0_io1_t;
  wire spi_rtl_0_sck_i;
  wire spi_rtl_0_sck_io;
  wire spi_rtl_0_sck_o;
  wire spi_rtl_0_sck_t;
  wire [0:0]spi_rtl_0_ss_i_0;
  wire [0:0]spi_rtl_0_ss_io_0;
  wire [0:0]spi_rtl_0_ss_o_0;
  wire spi_rtl_0_ss_t;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;
  wire uart_rtl_1_rxd;
  wire uart_rtl_1_txd;

  design_1 design_1_i
       (.DC_0(DC_0),
        .RES_0(RES_0),
        .SCLK_0(SCLK_0),
        .SDIN_0(SDIN_0),
        .VBAT_0(VBAT_0),
        .VDD_0(VDD_0),
        .clk_50MHz(clk_50MHz),
        .ext_reset_in(ext_reset_in),
        .gpio_led_tri_o(gpio_led_tri_o),
        .iic_rtl_0_scl_i(iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o(iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t(iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i(iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o(iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t(iic_rtl_0_sda_t),
        .pwm0_0(pwm0_0),
        .spi_rtl_0_io0_i(spi_rtl_0_io0_i),
        .spi_rtl_0_io0_o(spi_rtl_0_io0_o),
        .spi_rtl_0_io0_t(spi_rtl_0_io0_t),
        .spi_rtl_0_io1_i(spi_rtl_0_io1_i),
        .spi_rtl_0_io1_o(spi_rtl_0_io1_o),
        .spi_rtl_0_io1_t(spi_rtl_0_io1_t),
        .spi_rtl_0_sck_i(spi_rtl_0_sck_i),
        .spi_rtl_0_sck_o(spi_rtl_0_sck_o),
        .spi_rtl_0_sck_t(spi_rtl_0_sck_t),
        .spi_rtl_0_ss_i(spi_rtl_0_ss_i_0),
        .spi_rtl_0_ss_o(spi_rtl_0_ss_o_0),
        .spi_rtl_0_ss_t(spi_rtl_0_ss_t),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .uart_rtl_1_rxd(uart_rtl_1_rxd),
        .uart_rtl_1_txd(uart_rtl_1_txd));
  IOBUF iic_rtl_0_scl_iobuf
       (.I(iic_rtl_0_scl_o),
        .IO(iic_rtl_0_scl_io),
        .O(iic_rtl_0_scl_i),
        .T(iic_rtl_0_scl_t));
  IOBUF iic_rtl_0_sda_iobuf
       (.I(iic_rtl_0_sda_o),
        .IO(iic_rtl_0_sda_io),
        .O(iic_rtl_0_sda_i),
        .T(iic_rtl_0_sda_t));
  IOBUF spi_rtl_0_io0_iobuf
       (.I(spi_rtl_0_io0_o),
        .IO(spi_rtl_0_io0_io),
        .O(spi_rtl_0_io0_i),
        .T(spi_rtl_0_io0_t));
  IOBUF spi_rtl_0_io1_iobuf
       (.I(spi_rtl_0_io1_o),
        .IO(spi_rtl_0_io1_io),
        .O(spi_rtl_0_io1_i),
        .T(spi_rtl_0_io1_t));
  IOBUF spi_rtl_0_sck_iobuf
       (.I(spi_rtl_0_sck_o),
        .IO(spi_rtl_0_sck_io),
        .O(spi_rtl_0_sck_i),
        .T(spi_rtl_0_sck_t));
  IOBUF spi_rtl_0_ss_iobuf_0
       (.I(spi_rtl_0_ss_o_0),
        .IO(spi_rtl_0_ss_io[0]),
        .O(spi_rtl_0_ss_i_0),
        .T(spi_rtl_0_ss_t));
endmodule
