////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_translate.v
// /___/   /\     Timestamp: Thu Dec 14 18:31:30 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim top.ngd top_translate.v 
// Device	: 3s700anfgg484-4
// Input file	: top.ngd
// Output file	: /home/lab_jos/HDL_bor_jec/sejf/netgen/translate/top_translate.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : /opt/xilinx/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk, openCls, reset, a, b, doorCls, E, outUp, outDirch, RS, RW, lock, actuateLock, open, outCnten, DB
);
  input clk;
  output openCls;
  input reset;
  input a;
  input b;
  input doorCls;
  output E;
  output outUp;
  output outDirch;
  output RS;
  output RW;
  input lock;
  output actuateLock;
  input open;
  output outCnten;
  output [7 : 0] DB;
  wire DB_0_OBUF_11;
  wire DB_1_OBUF_12;
  wire DB_2_OBUF_13;
  wire DB_3_OBUF_14;
  wire DB_4_OBUF_15;
  wire DB_6_OBUF_16;
  wire N0;
  wire N10;
  wire N101;
  wire N102;
  wire N103;
  wire N104;
  wire N105;
  wire N106;
  wire N107;
  wire N110;
  wire N111;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N24;
  wire N26;
  wire N32;
  wire N33;
  wire N35;
  wire N37;
  wire N38;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N49;
  wire N54;
  wire N56;
  wire N57;
  wire N59;
  wire N6;
  wire N63;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N71;
  wire N73;
  wire N75;
  wire N8;
  wire N81;
  wire N82;
  wire N84;
  wire N85;
  wire N87;
  wire N89;
  wire N91;
  wire N93;
  wire N95;
  wire N97;
  wire N99;
  wire NlwRenamedSig_IO_a;
  wire a_IBUF_79;
  wire NlwRenamedSig_IO_b;
  wire b_IBUF_82;
  wire clk_BUFGP;
  wire doorCls_IBUF_86;
  wire NlwRenamedSig_IO_lock;
  wire lock_IBUF_88;
  wire \my_bcd_2dec/N111 ;
  wire \my_bcd_2dec/N9 ;
  wire \my_bcd_2dec/bcd0_and0000 ;
  wire \my_bcd_2dec/bcd0_and0003_98 ;
  wire \my_bcd_2dec/bcd0_cmp_eq0001 ;
  wire \my_bcd_2dec/bcd0_cmp_eq0002 ;
  wire \my_bcd_2dec/bcd0_cmp_eq0003 ;
  wire \my_bcd_2dec/bcd0_not0001 ;
  wire \my_bcd_2dec/bcd1_mux0000<2>2_115 ;
  wire \my_bcd_2dec/bcd1_mux0000<2>21_116 ;
  wire \my_bcd_2dec/bcd1_mux0000<3>14_118 ;
  wire \my_bcd_2dec/bcd1_mux0000<3>2_119 ;
  wire \my_bcd_2dec/bcd1_not0001 ;
  wire \my_bcd_2dec/bcd1_not000124_121 ;
  wire \my_clkdiv/clk_slow_122 ;
  wire \my_clkdiv/clk_slow1 ;
  wire \my_clkdiv/clk_slow_not0001 ;
  wire \my_clkdiv/cnt_0_0_125 ;
  wire \my_clkdiv/cnt_0_Q_mux0000 ;
  wire \my_dig_compare/Mmux_eq279_127 ;
  wire \my_dig_compare/Mmux_eq284_128 ;
  wire \my_fake_decoder/_mux0000 ;
  wire \my_fake_decoder/_mux0002 ;
  wire \my_fake_decoder/cnten_131 ;
  wire \my_fake_decoder/dirch_132 ;
  wire \my_fake_decoder/st_FSM_FFd1_133 ;
  wire \my_fake_decoder/st_FSM_FFd1-In ;
  wire \my_fake_decoder/st_FSM_FFd2_135 ;
  wire \my_fake_decoder/st_FSM_FFd2-In ;
  wire \my_fake_decoder/st_FSM_FFd3_137 ;
  wire \my_fake_decoder/st_FSM_FFd3-In_138 ;
  wire \my_fake_decoder/up_139 ;
  wire \my_lcd_driver/N5 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In_154 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_155 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux00001 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_or0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_166 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/mode_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_169 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000_170 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_182 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_183 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3_184 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_186 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish_188 ;
  wire \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12_189 ;
  wire \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21_190 ;
  wire \my_master_fsm/_mux0000 ;
  wire \my_master_fsm/actuateLock_193 ;
  wire \my_master_fsm/actuateLock_mux0000 ;
  wire \my_master_fsm/blank_195 ;
  wire \my_master_fsm/countEn_196 ;
  wire \my_master_fsm/openCls_197 ;
  wire \my_master_fsm/st_FSM_FFd1_200 ;
  wire \my_master_fsm/st_FSM_FFd1-In_201 ;
  wire \my_master_fsm/st_FSM_FFd2_202 ;
  wire \my_master_fsm/st_FSM_FFd2-In ;
  wire \my_master_fsm/st_FSM_FFd2-In1_204 ;
  wire \my_master_fsm/st_FSM_FFd2-In2_205 ;
  wire \my_master_fsm/st_FSM_FFd3_206 ;
  wire \my_master_fsm/st_FSM_FFd3-In ;
  wire \my_master_fsm/st_FSM_FFd3-In1_208 ;
  wire \my_master_fsm/st_FSM_FFd3-In2_209 ;
  wire \my_master_fsm/st_FSM_FFd4_210 ;
  wire \my_master_fsm/st_FSM_FFd4-In ;
  wire \my_master_fsm/st_FSM_FFd4-In1_212 ;
  wire \my_master_fsm/st_FSM_FFd4-In2_213 ;
  wire \my_master_fsm/st_cmp_eq0000 ;
  wire \my_master_fsm/st_cmp_eq0003 ;
  wire \my_master_fsm/st_cmp_eq0004 ;
  wire \my_master_fsm/st_cmp_eq0005 ;
  wire NlwRenamedSig_IO_open;
  wire open_IBUF_220;
  wire NlwRenamedSig_IO_reset;
  wire reset_IBUF_225;
  wire \my_master_fsm/st_FSM_FFd1-In_SW0/O ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0/O ;
  wire \my_dig_compare/Mmux_eq279/O ;
  wire \my_bcd_2dec/bcd0_mux0000<0>_SW1/O ;
  wire \my_bcd_2dec/bcd1_not000124_SW0/O ;
  wire \my_bcd_2dec/bcd1_mux0000<0>_SW0/O ;
  wire \my_bcd_2dec/bcd1_mux0000<3>2/O ;
  wire \my_bcd_2dec/bcd1_mux0000<0>1_SW1/O ;
  wire \my_bcd_2dec/bcd0_mux0000<3>_SW1/O ;
  wire \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/O ;
  wire \my_bcd_2dec/bcd0_mux0000<1>11_SW2_SW0/O ;
  wire \my_bcd_2dec/bcd0_mux0000<1>11_SW0_SW0/O ;
  wire \my_bcd_2dec/bcd0_mux0000<1>11_SW1/O ;
  wire \my_bcd_2dec/bcd1_mux0000<2>2_SW0/O ;
  wire \my_bcd_2dec/bcd0_mux0000<0>_SW0_SW0/O ;
  wire \my_bcd_2dec/bcd1_mux0000<2>47_SW0/O ;
  wire \my_bcd_2dec/bcd0_mux0000<1>11_SW3/O ;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [1 : 1] \my_bcd_2dec/Maddsub_bcd1_share0000_cy ;
  wire [2 : 2] \my_bcd_2dec/Maddsub_bcd1_share0000_lut ;
  wire [3 : 0] \my_bcd_2dec/bcd0 ;
  wire [3 : 0] \my_bcd_2dec/bcd0_mux0000 ;
  wire [3 : 3] \my_bcd_2dec/bcd0_share0000 ;
  wire [3 : 0] \my_bcd_2dec/bcd1 ;
  wire [3 : 0] \my_bcd_2dec/bcd1_mux0000 ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 ;
  wire [5 : 0] \my_lcd_driver/my_LCD_controller/my_main_controller/st ;
  wire [5 : 1] \my_lcd_driver/my_LCD_controller/my_main_controller/ust ;
  wire [1 : 1] \my_lcd_driver/my_LCD_dp/init_reset_mux ;
  wire [1 : 0] \my_master_fsm/sel ;
  assign
    NlwRenamedSig_IO_reset = reset,
    NlwRenamedSig_IO_a = a,
    NlwRenamedSig_IO_b = b,
    NlwRenamedSig_IO_lock = lock,
    NlwRenamedSig_IO_open = open;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_fake_decoder/cnten  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_fake_decoder/_mux0002 ),
    .SET(reset_IBUF_225),
    .O(\my_fake_decoder/cnten_131 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_fake_decoder/dirch  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_fake_decoder/st_FSM_FFd1_133 ),
    .O(\my_fake_decoder/dirch_132 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_fake_decoder/up  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_fake_decoder/_mux0000 ),
    .SET(reset_IBUF_225),
    .O(\my_fake_decoder/up_139 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_0_0  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_225),
    .I(\my_clkdiv/cnt_0_Q_mux0000 ),
    .O(\my_clkdiv/cnt_0_0_125 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/clk_slow  (
    .CLK(clk_BUFGP),
    .CE(\my_clkdiv/cnt_0_0_125 ),
    .RST(reset_IBUF_225),
    .I(\my_clkdiv/clk_slow_not0001 ),
    .O(\my_clkdiv/clk_slow1 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_fake_decoder/st_FSM_FFd3  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_fake_decoder/st_FSM_FFd3-In_138 ),
    .O(\my_fake_decoder/st_FSM_FFd3_137 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_fake_decoder/st_FSM_FFd1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_fake_decoder/st_FSM_FFd1-In ),
    .O(\my_fake_decoder/st_FSM_FFd1_133 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_fake_decoder/st_FSM_FFd2  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_fake_decoder/st_FSM_FFd2-In ),
    .O(\my_fake_decoder/st_FSM_FFd2_135 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_3  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd1_mux0000 [0]),
    .O(\my_bcd_2dec/bcd1 [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_2  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd1_mux0000 [1]),
    .O(\my_bcd_2dec/bcd1 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd1_mux0000 [2]),
    .O(\my_bcd_2dec/bcd1 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_0  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd1_mux0000 [3]),
    .O(\my_bcd_2dec/bcd1 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_3  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd0_mux0000 [0]),
    .O(\my_bcd_2dec/bcd0 [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_2  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd0_mux0000 [1]),
    .O(\my_bcd_2dec/bcd0 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd0_mux0000 [2]),
    .O(\my_bcd_2dec/bcd0 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_0  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_225),
    .I(\my_bcd_2dec/bcd0_mux0000 [3]),
    .O(\my_bcd_2dec/bcd0 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/st_FSM_FFd4  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/st_FSM_FFd4-In ),
    .O(\my_master_fsm/st_FSM_FFd4_210 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/st_FSM_FFd3  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/st_FSM_FFd3-In ),
    .O(\my_master_fsm/st_FSM_FFd3_206 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/st_FSM_FFd2  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/st_FSM_FFd2-In ),
    .O(\my_master_fsm/st_FSM_FFd2_202 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/st_FSM_FFd1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/st_FSM_FFd1-In_201 ),
    .O(\my_master_fsm/st_FSM_FFd1_200 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/openCls  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/st_cmp_eq0005 ),
    .O(\my_master_fsm/openCls_197 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/sel_1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/st_cmp_eq0004 ),
    .O(\my_master_fsm/sel [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/sel_0  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/st_cmp_eq0003 ),
    .O(\my_master_fsm/sel [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/blank  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/_mux0000 ),
    .O(\my_master_fsm/blank_195 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_master_fsm/countEn  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_master_fsm/st_cmp_eq0000 ),
    .SET(reset_IBUF_225),
    .O(\my_master_fsm/countEn_196 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/actuateLock  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_master_fsm/actuateLock_mux0000 ),
    .O(\my_master_fsm/actuateLock_193 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_or0000 ),
    .SET(reset_IBUF_225),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_166 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_0  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 [1]),
    .SET(reset_IBUF_225),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 [0]),
    .SET(reset_IBUF_225),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [1]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_mux0000 ),
    .SET(reset_IBUF_225),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/mode  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_mux0000 ),
    .SET(reset_IBUF_225),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/data_sel  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_mux0000 ),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000_170 ),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_169 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_4  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_3  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [3]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_5  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [5]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_0  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(N0),
    .SET(reset_IBUF_225),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_2  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_0  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_0  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux0000 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In_154 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_182 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_183 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In ),
    .SET(reset_IBUF_225),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_186 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3_184 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_183 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish_188 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/E_out  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3_184 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_182 ),
    .CE(VCC),
    .SET(GND)
  );
  X_LUT4 #(
    .INIT ( 16'hC888 ))
  \my_lcd_driver/DB<5>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(DB_4_OBUF_15)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_155 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_186 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<4>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [3]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [4])
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \my_master_fsm/st_FSM_Out51  (
    .ADR0(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR1(\my_master_fsm/st_FSM_FFd3_206 ),
    .ADR2(\my_master_fsm/st_FSM_FFd1_200 ),
    .O(\my_master_fsm/_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \my_master_fsm/st_FSM_Out21  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR2(\my_master_fsm/st_FSM_FFd3_206 ),
    .O(\my_master_fsm/st_cmp_eq0004 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \my_master_fsm/st_FSM_Out11  (
    .ADR0(\my_master_fsm/st_FSM_FFd3_206 ),
    .ADR1(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR2(\my_master_fsm/st_FSM_FFd4_210 ),
    .O(\my_master_fsm/st_cmp_eq0003 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \my_master_fsm/st_FSM_Out01  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR2(\my_master_fsm/st_FSM_FFd3_206 ),
    .O(\my_master_fsm/st_cmp_eq0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_186 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_155 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_183 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<5>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [5])
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<3>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [3]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [3])
  );
  X_LUT3 #(
    .INIT ( 8'hC8 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<2>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [2])
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<1>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [1])
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/mode_mux00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_or00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_or0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_mux00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEFE ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000<1>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hEEFE ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000<0>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [1]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hEEFE ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_mux00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \my_master_fsm/st_FSM_FFd1-In  (
    .ADR0(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR1(\my_master_fsm/st_FSM_FFd1_200 ),
    .ADR2(N6),
    .ADR3(\my_master_fsm/st_FSM_FFd2_202 ),
    .O(\my_master_fsm/st_FSM_FFd1-In_201 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_fake_decoder/st_FSM_FFd3-In21  (
    .ADR0(\my_fake_decoder/st_FSM_FFd1_133 ),
    .ADR1(\my_fake_decoder/st_FSM_FFd2_135 ),
    .O(\my_fake_decoder/_mux0002 )
  );
  X_LUT3 #(
    .INIT ( 8'h08 ))
  \my_master_fsm/st_FSM_Out31  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR2(\my_master_fsm/st_FSM_FFd3_206 ),
    .O(\my_master_fsm/st_cmp_eq0005 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF8A ))
  \my_master_fsm/actuateLock_mux00001  (
    .ADR0(\my_master_fsm/st_FSM_FFd1_200 ),
    .ADR1(\my_master_fsm/actuateLock_193 ),
    .ADR2(doorCls_IBUF_86),
    .ADR3(\my_master_fsm/st_cmp_eq0005 ),
    .O(\my_master_fsm/actuateLock_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hE040 ))
  \my_fake_decoder/st_FSM_FFd2-In1  (
    .ADR0(\my_fake_decoder/st_FSM_FFd3_137 ),
    .ADR1(a_IBUF_79),
    .ADR2(\my_fake_decoder/_mux0002 ),
    .ADR3(b_IBUF_82),
    .O(\my_fake_decoder/st_FSM_FFd2-In )
  );
  X_LUT4 #(
    .INIT ( 16'h1800 ))
  \my_fake_decoder/st_FSM_FFd1-In1  (
    .ADR0(a_IBUF_79),
    .ADR1(\my_fake_decoder/st_FSM_FFd3_137 ),
    .ADR2(b_IBUF_82),
    .ADR3(\my_fake_decoder/_mux0002 ),
    .O(\my_fake_decoder/st_FSM_FFd1-In )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .O(N8)
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_169 ),
    .ADR1(N8),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000_170 )
  );
  X_LUT3 #(
    .INIT ( 8'hB2 ))
  \my_fake_decoder/st_FSM_FFd3-In_SW0  (
    .ADR0(b_IBUF_82),
    .ADR1(a_IBUF_79),
    .ADR2(\my_fake_decoder/st_FSM_FFd3_137 ),
    .O(N10)
  );
  X_LUT4 #(
    .INIT ( 16'hABA8 ))
  \my_fake_decoder/st_FSM_FFd3-In  (
    .ADR0(\my_fake_decoder/st_FSM_FFd3_137 ),
    .ADR1(\my_fake_decoder/st_FSM_FFd2_135 ),
    .ADR2(\my_fake_decoder/st_FSM_FFd1_133 ),
    .ADR3(N10),
    .O(\my_fake_decoder/st_FSM_FFd3-In_138 )
  );
  X_LUT4 #(
    .INIT ( 16'hE444 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [1]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'hABA8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ),
    .ADR3(N12),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hE444 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [1]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'hDC8C ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ),
    .ADR3(N14),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \my_lcd_driver/my_LCD_dp/mymux6/init_reset_mux<2>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(\my_lcd_driver/my_LCD_dp/init_reset_mux [1])
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>111  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR2(\my_master_fsm/blank_195 ),
    .O(\my_lcd_driver/N5 )
  );
  X_LUT4 #(
    .INIT ( 16'hE040 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<2>_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR1(\my_bcd_2dec/bcd1 [2]),
    .ADR2(\my_lcd_driver/N5 ),
    .ADR3(\my_bcd_2dec/bcd0 [2]),
    .O(N16)
  );
  X_LUT4 #(
    .INIT ( 16'hBAFF ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<2>  (
    .ADR0(N16),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .ADR2(\my_lcd_driver/my_LCD_dp/init_reset_mux [1]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .O(DB_2_OBUF_13)
  );
  X_LUT4 #(
    .INIT ( 16'hE040 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<1>_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(\my_lcd_driver/N5 ),
    .ADR3(\my_bcd_2dec/bcd0 [1]),
    .O(N18)
  );
  X_LUT4 #(
    .INIT ( 16'hCC40 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<1>  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .ADR2(\my_lcd_driver/my_LCD_dp/init_reset_mux [1]),
    .ADR3(N18),
    .O(DB_1_OBUF_12)
  );
  X_LUT4 #(
    .INIT ( 16'hE040 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_lcd_driver/N5 ),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12_189 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .O(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21_190 )
  );
  X_LUT3 #(
    .INIT ( 8'hC8 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>33  (
    .ADR0(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12_189 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .ADR2(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21_190 ),
    .O(DB_0_OBUF_11)
  );
  X_LUT4 #(
    .INIT ( 16'hC8CA ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_146 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDD8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ),
    .ADR1(N20),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'h44E4 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .O(N24)
  );
  X_LUT4 #(
    .INIT ( 16'hABA8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ),
    .ADR3(N24),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8DAF ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(N26)
  );
  X_LUT4 #(
    .INIT ( 16'hA2AE ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_167 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .ADR3(N26),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \my_bcd_2dec/Maddsub_bcd1_share0000_lut<2>1  (
    .ADR0(\my_bcd_2dec/bcd1 [2]),
    .ADR1(\my_fake_decoder/up_139 ),
    .O(\my_bcd_2dec/Maddsub_bcd1_share0000_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'hEF20 ))
  \my_bcd_2dec/bcd0_mux0000<3>  (
    .ADR0(N33),
    .ADR1(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR2(\my_bcd_2dec/N111 ),
    .ADR3(N32),
    .O(\my_bcd_2dec/bcd0_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8AAA ))
  \my_bcd_2dec/bcd1_mux0000<0>111  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(\my_bcd_2dec/bcd0 [3]),
    .ADR2(\my_bcd_2dec/bcd0_cmp_eq0001 ),
    .ADR3(N112),
    .O(\my_bcd_2dec/N111 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \my_bcd_2dec/bcd0_cmp_eq00011  (
    .ADR0(\my_bcd_2dec/bcd1 [3]),
    .ADR1(\my_bcd_2dec/bcd1 [2]),
    .ADR2(\my_bcd_2dec/bcd1 [1]),
    .ADR3(\my_bcd_2dec/bcd1 [0]),
    .O(\my_bcd_2dec/bcd0_cmp_eq0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h5202 ))
  \my_master_fsm/st_FSM_FFd2-In2  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(\my_master_fsm/st_FSM_FFd1_200 ),
    .ADR2(\my_master_fsm/st_FSM_FFd3_206 ),
    .ADR3(\my_fake_decoder/dirch_132 ),
    .O(\my_master_fsm/st_FSM_FFd2-In2_205 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \my_master_fsm/st_FSM_FFd3-In2  (
    .ADR0(\my_fake_decoder/cnten_131 ),
    .ADR1(\my_fake_decoder/up_139 ),
    .ADR2(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR3(\my_master_fsm/st_FSM_FFd4_210 ),
    .O(\my_master_fsm/st_FSM_FFd3-In2_209 )
  );
  X_LUT3 #(
    .INIT ( 8'h23 ))
  \my_master_fsm/st_FSM_FFd4-In2  (
    .ADR0(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR1(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR2(open_IBUF_220),
    .O(\my_master_fsm/st_FSM_FFd4-In2_213 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \my_dig_compare/Mmux_eq284  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(\my_bcd_2dec/bcd1 [3]),
    .ADR2(\my_bcd_2dec/bcd1 [1]),
    .ADR3(\my_dig_compare/Mmux_eq279_127 ),
    .O(\my_dig_compare/Mmux_eq284_128 )
  );
  X_LUT4 #(
    .INIT ( 16'h028A ))
  \my_bcd_2dec/bcd0_mux0000<0>  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(\my_bcd_2dec/bcd0_share0000 [3]),
    .ADR2(N37),
    .ADR3(N38),
    .O(\my_bcd_2dec/bcd0_mux0000 [0])
  );
  X_BUF   reset_IBUF (
    .I(NlwRenamedSig_IO_reset),
    .O(reset_IBUF_225)
  );
  X_BUF   a_IBUF (
    .I(NlwRenamedSig_IO_a),
    .O(a_IBUF_79)
  );
  X_BUF   b_IBUF (
    .I(NlwRenamedSig_IO_b),
    .O(b_IBUF_82)
  );
  X_BUF   doorCls_IBUF (
    .I(doorCls),
    .O(doorCls_IBUF_86)
  );
  X_BUF   lock_IBUF (
    .I(NlwRenamedSig_IO_lock),
    .O(lock_IBUF_88)
  );
  X_BUF   open_IBUF (
    .I(NlwRenamedSig_IO_open),
    .O(open_IBUF_220)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable  (
    .CLK(\my_clkdiv/clk_slow_122 ),
    .CE(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .RST(reset_IBUF_225),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux00001 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_155 ),
    .SET(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \my_bcd_2dec/bcd0_and0003  (
    .ADR0(\my_bcd_2dec/bcd1 [0]),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(N42),
    .ADR3(N111),
    .O(\my_bcd_2dec/bcd0_and0003_98 )
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \my_bcd_2dec/Maddsub_bcd1_share0000_cy<1>11  (
    .ADR0(\my_bcd_2dec/bcd1 [1]),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_fake_decoder/up_139 ),
    .O(\my_bcd_2dec/Maddsub_bcd1_share0000_cy [1])
  );
  X_LUT4 #(
    .INIT ( 16'h4500 ))
  \my_bcd_2dec/bcd1_mux0000<0>1_SW0_SW0  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(N42),
    .ADR2(N114),
    .ADR3(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .O(N44)
  );
  X_LUT3 #(
    .INIT ( 8'hD7 ))
  \my_bcd_2dec/bcd1_mux0000<0>1_SW0  (
    .ADR0(N110),
    .ADR1(\my_bcd_2dec/Maddsub_bcd1_share0000_lut [2]),
    .ADR2(\my_bcd_2dec/Maddsub_bcd1_share0000_cy [1]),
    .O(N48)
  );
  X_LUT4 #(
    .INIT ( 16'h02CE ))
  \my_bcd_2dec/bcd1_mux0000<1>1  (
    .ADR0(\my_bcd_2dec/N111 ),
    .ADR1(N44),
    .ADR2(N49),
    .ADR3(N48),
    .O(\my_bcd_2dec/bcd1_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0091 ))
  \my_bcd_2dec/bcd1_not000124  (
    .ADR0(\my_bcd_2dec/bcd0 [0]),
    .ADR1(\my_fake_decoder/up_139 ),
    .ADR2(\my_bcd_2dec/bcd0_cmp_eq0001 ),
    .ADR3(N54),
    .O(\my_bcd_2dec/bcd1_not000124_121 )
  );
  X_LUT4 #(
    .INIT ( 16'h08A8 ))
  \my_bcd_2dec/bcd1_mux0000<0>  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(N56),
    .ADR2(N35),
    .ADR3(N57),
    .O(\my_bcd_2dec/bcd1_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h1110 ))
  \my_bcd_2dec/bcd1_mux0000<3>24  (
    .ADR0(\my_master_fsm/countEn_196 ),
    .ADR1(\my_fake_decoder/cnten_131 ),
    .ADR2(\my_bcd_2dec/bcd1_mux0000<3>14_118 ),
    .ADR3(\my_bcd_2dec/bcd1_mux0000<3>2_119 ),
    .O(\my_bcd_2dec/bcd1_mux0000 [3])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_bcd_2dec/bcd1_not000150_SW0  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(N115),
    .O(N59)
  );
  X_LUT4 #(
    .INIT ( 16'hFCF8 ))
  \my_bcd_2dec/bcd1_not000163  (
    .ADR0(\my_bcd_2dec/bcd1_not000124_121 ),
    .ADR1(\my_bcd_2dec/bcd0_and0000 ),
    .ADR2(\my_master_fsm/blank_195 ),
    .ADR3(N59),
    .O(\my_bcd_2dec/bcd1_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hBAFF ))
  \my_bcd_2dec/bcd1_mux0000<0>_SW2  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(N113),
    .ADR2(N46),
    .ADR3(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .O(N57)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \my_bcd_2dec/bcd1_mux0000<0>_SW1  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(\my_bcd_2dec/N9 ),
    .ADR2(\my_bcd_2dec/bcd0 [3]),
    .O(N56)
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \my_bcd_2dec/bcd1_mux0000<3>14  (
    .ADR0(\my_bcd_2dec/bcd1 [0]),
    .ADR1(\my_fake_decoder/up_139 ),
    .ADR2(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .O(\my_bcd_2dec/bcd1_mux0000<3>14_118 )
  );
  X_MUX2   \my_master_fsm/st_FSM_FFd2-In_f5  (
    .IA(\my_master_fsm/st_FSM_FFd2-In2_205 ),
    .IB(\my_master_fsm/st_FSM_FFd2-In1_204 ),
    .SEL(\my_master_fsm/st_FSM_FFd4_210 ),
    .O(\my_master_fsm/st_FSM_FFd2-In )
  );
  X_MUX2   \my_master_fsm/st_FSM_FFd3-In_f5  (
    .IA(\my_master_fsm/st_FSM_FFd3-In2_209 ),
    .IB(\my_master_fsm/st_FSM_FFd3-In1_208 ),
    .SEL(\my_master_fsm/st_FSM_FFd3_206 ),
    .O(\my_master_fsm/st_FSM_FFd3-In )
  );
  X_LUT4 #(
    .INIT ( 16'hFFBF ))
  \my_bcd_2dec/bcd1_mux0000<0>1_SW1_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [2]),
    .ADR1(\my_bcd_2dec/bcd0 [3]),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(\my_bcd_2dec/bcd0 [1]),
    .O(N63)
  );
  X_LUT4 #(
    .INIT ( 16'hBDFF ))
  \my_dig_compare/Mmux_eq288_SW1  (
    .ADR0(\my_master_fsm/sel [0]),
    .ADR1(\my_master_fsm/sel [1]),
    .ADR2(\my_bcd_2dec/bcd1 [0]),
    .ADR3(\my_bcd_2dec/bcd0 [2]),
    .O(N66)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_dig_compare/Mmux_eq288_SW2  (
    .ADR0(\my_master_fsm/st_FSM_FFd3_206 ),
    .ADR1(\my_fake_decoder/dirch_132 ),
    .O(N68)
  );
  X_LUT4 #(
    .INIT ( 16'hFEAE ))
  \my_master_fsm/st_FSM_FFd2-In1  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(N68),
    .ADR2(\my_dig_compare/Mmux_eq284_128 ),
    .ADR3(N69),
    .O(\my_master_fsm/st_FSM_FFd2-In1_204 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBEA ))
  \my_dig_compare/Mmux_eq288_SW4  (
    .ADR0(open_IBUF_220),
    .ADR1(\my_bcd_2dec/bcd0 [0]),
    .ADR2(N66),
    .ADR3(N116),
    .O(N71)
  );
  X_LUT4 #(
    .INIT ( 16'hDD5D ))
  \my_master_fsm/st_FSM_FFd3-In1  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR2(\my_dig_compare/Mmux_eq284_128 ),
    .ADR3(N71),
    .O(\my_master_fsm/st_FSM_FFd3-In1_208 )
  );
  X_LUT4 #(
    .INIT ( 16'h44E4 ))
  \my_master_fsm/st_FSM_FFd4-In1  (
    .ADR0(\my_fake_decoder/dirch_132 ),
    .ADR1(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR2(\my_dig_compare/Mmux_eq284_128 ),
    .ADR3(N73),
    .O(\my_master_fsm/st_FSM_FFd4-In1_212 )
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \my_bcd_2dec/bcd1_mux0000<2>21  (
    .ADR0(\my_bcd_2dec/bcd1 [0]),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(\my_fake_decoder/up_139 ),
    .O(\my_bcd_2dec/bcd1_mux0000<2>21_116 )
  );
  X_LUT4 #(
    .INIT ( 16'hDFFE ))
  \my_bcd_2dec/bcd1_mux0000<2>10_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(\my_bcd_2dec/bcd0 [1]),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(\my_fake_decoder/up_139 ),
    .O(N75)
  );
  X_LUT4 #(
    .INIT ( 16'h2733 ))
  \my_bcd_2dec/bcd0_mux0000<2>1  (
    .ADR0(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR1(N81),
    .ADR2(N82),
    .ADR3(\my_bcd_2dec/N111 ),
    .O(\my_bcd_2dec/bcd0_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h2733 ))
  \my_bcd_2dec/bcd0_mux0000<1>1  (
    .ADR0(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR1(N84),
    .ADR2(N85),
    .ADR3(\my_bcd_2dec/N111 ),
    .O(\my_bcd_2dec/bcd0_mux0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(N87),
    .O(\my_bcd_2dec/bcd0_share0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \my_bcd_2dec/bcd0_mux0000<1>11_SW2  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(\my_master_fsm/countEn_196 ),
    .ADR2(\my_fake_decoder/cnten_131 ),
    .ADR3(N89),
    .O(N84)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \my_bcd_2dec/bcd0_mux0000<1>11_SW0  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(\my_master_fsm/countEn_196 ),
    .ADR2(\my_fake_decoder/cnten_131 ),
    .ADR3(N91),
    .O(N81)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \my_bcd_2dec/bcd1_mux0000<2>2  (
    .ADR0(\my_bcd_2dec/bcd1 [3]),
    .ADR1(\my_bcd_2dec/bcd1 [2]),
    .ADR2(N93),
    .ADR3(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .O(\my_bcd_2dec/bcd1_mux0000<2>2_115 )
  );
  X_LUT4 #(
    .INIT ( 16'hBAFF ))
  \my_bcd_2dec/bcd0_mux0000<0>_SW0  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(\my_bcd_2dec/bcd1 [3]),
    .ADR2(N95),
    .ADR3(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'h1101 ))
  \my_bcd_2dec/bcd1_mux0000<2>47  (
    .ADR0(\my_master_fsm/countEn_196 ),
    .ADR1(\my_fake_decoder/cnten_131 ),
    .ADR2(N97),
    .ADR3(\my_bcd_2dec/bcd1_mux0000<2>2_115 ),
    .O(\my_bcd_2dec/bcd1_mux0000 [2])
  );
  X_LUT3 #(
    .INIT ( 8'h7E ))
  \my_bcd_2dec/bcd0_mux0000<1>11_SW3_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [1]),
    .ADR1(\my_bcd_2dec/bcd0 [0]),
    .ADR2(\my_fake_decoder/up_139 ),
    .O(N99)
  );
  X_MUX2   \my_master_fsm/st_FSM_FFd4-In_f5  (
    .IA(\my_master_fsm/st_FSM_FFd4-In2_213 ),
    .IB(\my_master_fsm/st_FSM_FFd4-In1_212 ),
    .SEL(\my_master_fsm/st_FSM_FFd3_206 ),
    .O(\my_master_fsm/st_FSM_FFd4-In )
  );
  X_MUX2   \my_dig_compare/Mmux_eq288_SW3  (
    .IA(N101),
    .IB(N102),
    .SEL(N66),
    .O(N69)
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ))
  \my_dig_compare/Mmux_eq288_SW3_F  (
    .ADR0(\my_fake_decoder/dirch_132 ),
    .ADR1(\my_master_fsm/st_FSM_FFd3_206 ),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(N65),
    .O(N101)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \my_dig_compare/Mmux_eq288_SW3_G  (
    .ADR0(\my_fake_decoder/dirch_132 ),
    .ADR1(\my_master_fsm/st_FSM_FFd3_206 ),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(N65),
    .O(N102)
  );
  X_MUX2   \my_dig_compare/Mmux_eq288_SW5  (
    .IA(N103),
    .IB(N104),
    .SEL(N66),
    .O(N73)
  );
  X_LUT4 #(
    .INIT ( 16'h6F66 ))
  \my_dig_compare/Mmux_eq288_SW5_F  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(N65),
    .O(N103)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF6 ))
  \my_dig_compare/Mmux_eq288_SW5_G  (
    .ADR0(\my_master_fsm/st_FSM_FFd2_202 ),
    .ADR1(\my_master_fsm/st_FSM_FFd4_210 ),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(N65),
    .O(N104)
  );
  X_MUX2   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In  (
    .IA(N105),
    .IB(N106),
    .SEL(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In_154 )
  );
  X_LUT4 #(
    .INIT ( 16'h2F2A ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In_F  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish_188 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_166 ),
    .O(N105)
  );
  X_LUT4 #(
    .INIT ( 16'h7F6E ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In_G  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_153 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish_188 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_166 ),
    .O(N106)
  );
  X_LUT4 #(
    .INIT ( 16'hE040 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<3>21_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR1(\my_bcd_2dec/bcd1 [3]),
    .ADR2(\my_lcd_driver/N5 ),
    .ADR3(\my_bcd_2dec/bcd0 [3]),
    .O(N107)
  );
  X_LUT4 #(
    .INIT ( 16'hBAFF ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<3>21  (
    .ADR0(N107),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_159 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .O(DB_3_OBUF_14)
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  \my_bcd_2dec/bcd0_not00011  (
    .ADR0(\my_fake_decoder/cnten_131 ),
    .ADR1(\my_master_fsm/countEn_196 ),
    .ADR2(\my_master_fsm/blank_195 ),
    .O(\my_bcd_2dec/bcd0_not0001 )
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  \my_fake_decoder/st_FSM_Out01  (
    .ADR0(\my_fake_decoder/st_FSM_FFd1_133 ),
    .ADR1(\my_fake_decoder/st_FSM_FFd2_135 ),
    .ADR2(\my_fake_decoder/st_FSM_FFd3_137 ),
    .O(\my_fake_decoder/_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \my_bcd_2dec/bcd0_mux0000<3>_SW0  (
    .ADR0(\my_fake_decoder/cnten_131 ),
    .ADR1(\my_master_fsm/countEn_196 ),
    .ADR2(\my_fake_decoder/up_139 ),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(N32)
  );
  X_CKBUF   \my_clkdiv/clk_slow_BUFG  (
    .I(\my_clkdiv/clk_slow1 ),
    .O(\my_clkdiv/clk_slow_122 )
  );
  X_INV   \my_lcd_driver/DB<7>1_INV_0  (
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_157 ),
    .O(DB_6_OBUF_16)
  );
  X_INV   \my_clkdiv/cnt_0_Q_mux00001_INV_0  (
    .I(\my_clkdiv/cnt_0_0_125 ),
    .O(\my_clkdiv/cnt_0_Q_mux0000 )
  );
  X_INV   \my_clkdiv/clk_slow_not00011_INV_0  (
    .I(\my_clkdiv/clk_slow1 ),
    .O(\my_clkdiv/clk_slow_not0001 )
  );
  X_INV   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux000011_INV_0  (
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_152 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux00001 )
  );
  X_BUF   \my_master_fsm/st_FSM_FFd1-In_SW0/LUT3_L_BUF  (
    .I(\my_master_fsm/st_FSM_FFd1-In_SW0/O ),
    .O(N6)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \my_master_fsm/st_FSM_FFd1-In_SW0  (
    .ADR0(\my_master_fsm/st_FSM_FFd3_206 ),
    .ADR1(lock_IBUF_88),
    .ADR2(doorCls_IBUF_86),
    .O(\my_master_fsm/st_FSM_FFd1-In_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_and00001/LUT2_D_BUF  (
    .I(\my_bcd_2dec/bcd0_and0000 ),
    .O(N110)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_bcd_2dec/bcd0_and00001  (
    .ADR0(\my_fake_decoder/cnten_131 ),
    .ADR1(\my_master_fsm/countEn_196 ),
    .O(\my_bcd_2dec/bcd0_and0000 )
  );
  X_BUF   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0/LUT2_L_BUF  (
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0/O ),
    .O(N20)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_cmp_eq00031/LUT4_D_BUF  (
    .I(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .O(N111)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \my_bcd_2dec/bcd0_cmp_eq00031  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(\my_bcd_2dec/bcd0 [2]),
    .ADR2(\my_bcd_2dec/bcd0 [1]),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(\my_bcd_2dec/bcd0_cmp_eq0003 )
  );
  X_BUF   \my_bcd_2dec/bcd0_cmp_eq000011/LUT3_D_BUF  (
    .I(\my_bcd_2dec/N9 ),
    .O(N112)
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \my_bcd_2dec/bcd0_cmp_eq000011  (
    .ADR0(\my_bcd_2dec/bcd0 [2]),
    .ADR1(\my_bcd_2dec/bcd0 [1]),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .O(\my_bcd_2dec/N9 )
  );
  X_BUF   \my_dig_compare/Mmux_eq279/LUT2_L_BUF  (
    .I(\my_dig_compare/Mmux_eq279/O ),
    .O(\my_dig_compare/Mmux_eq279_127 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_dig_compare/Mmux_eq279  (
    .ADR0(\my_bcd_2dec/bcd1 [2]),
    .ADR1(\my_bcd_2dec/bcd0 [1]),
    .O(\my_dig_compare/Mmux_eq279/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<0>_SW1/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<0>_SW1/O ),
    .O(N38)
  );
  X_LUT4 #(
    .INIT ( 16'hCF8A ))
  \my_bcd_2dec/bcd0_mux0000<0>_SW1  (
    .ADR0(\my_fake_decoder/up_139 ),
    .ADR1(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR2(\my_bcd_2dec/N111 ),
    .ADR3(\my_bcd_2dec/bcd0_and0003_98 ),
    .O(\my_bcd_2dec/bcd0_mux0000<0>_SW1/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_and0003_SW0_SW0/LUT2_D_BUF  (
    .I(N42),
    .O(N113)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \my_bcd_2dec/bcd0_and0003_SW0_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [3]),
    .ADR1(\my_bcd_2dec/bcd1 [2]),
    .O(N42)
  );
  X_BUF   \my_bcd_2dec/bcd0_and0003_SW0/LUT2_D_BUF  (
    .I(N46),
    .O(N114)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_bcd_2dec/bcd0_and0003_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [1]),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .O(N46)
  );
  X_BUF   \my_bcd_2dec/bcd1_not000124_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd1_not000124_SW0/O ),
    .O(N54)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \my_bcd_2dec/bcd1_not000124_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(\my_bcd_2dec/bcd0 [1]),
    .ADR2(\my_bcd_2dec/bcd0 [2]),
    .O(\my_bcd_2dec/bcd1_not000124_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_cmp_eq00021/LUT4_D_BUF  (
    .I(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .O(N115)
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ))
  \my_bcd_2dec/bcd0_cmp_eq00021  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(\my_bcd_2dec/bcd0 [2]),
    .ADR2(\my_bcd_2dec/bcd0 [1]),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(\my_bcd_2dec/bcd0_cmp_eq0002 )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<0>_SW0/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<0>_SW0/O ),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hA665 ))
  \my_bcd_2dec/bcd1_mux0000<0>_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [3]),
    .ADR1(\my_fake_decoder/up_139 ),
    .ADR2(\my_bcd_2dec/bcd1 [2]),
    .ADR3(\my_bcd_2dec/Maddsub_bcd1_share0000_cy [1]),
    .O(\my_bcd_2dec/bcd1_mux0000<0>_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<3>2/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<3>2/O ),
    .O(\my_bcd_2dec/bcd1_mux0000<3>2_119 )
  );
  X_LUT4 #(
    .INIT ( 16'h2800 ))
  \my_bcd_2dec/bcd1_mux0000<3>2  (
    .ADR0(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_fake_decoder/up_139 ),
    .ADR3(\my_bcd_2dec/N111 ),
    .O(\my_bcd_2dec/bcd1_mux0000<3>2/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<0>1_SW1/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<0>1_SW1/O ),
    .O(N49)
  );
  X_LUT4 #(
    .INIT ( 16'hFBBF ))
  \my_bcd_2dec/bcd1_mux0000<0>1_SW1  (
    .ADR0(N63),
    .ADR1(\my_bcd_2dec/bcd0_and0000 ),
    .ADR2(\my_bcd_2dec/Maddsub_bcd1_share0000_lut [2]),
    .ADR3(\my_bcd_2dec/Maddsub_bcd1_share0000_cy [1]),
    .O(\my_bcd_2dec/bcd1_mux0000<0>1_SW1/O )
  );
  X_BUF   \my_dig_compare/Mmux_eq288_SW0/LUT4_D_BUF  (
    .I(N65),
    .O(N116)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEF ))
  \my_dig_compare/Mmux_eq288_SW0  (
    .ADR0(\my_master_fsm/sel [0]),
    .ADR1(\my_master_fsm/sel [1]),
    .ADR2(\my_bcd_2dec/bcd1 [0]),
    .ADR3(\my_bcd_2dec/bcd0 [2]),
    .O(N65)
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<3>_SW1/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<3>_SW1/O ),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'h0105 ))
  \my_bcd_2dec/bcd0_mux0000<3>_SW1  (
    .ADR0(\my_master_fsm/countEn_196 ),
    .ADR1(\my_fake_decoder/up_139 ),
    .ADR2(\my_fake_decoder/cnten_131 ),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(\my_bcd_2dec/bcd0_mux0000<3>_SW1/O )
  );
  X_BUF   \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/LUT4_L_BUF  (
    .I(\my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/O ),
    .O(N87)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFE ))
  \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [2]),
    .ADR1(\my_bcd_2dec/bcd0 [1]),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(\my_fake_decoder/up_139 ),
    .O(\my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<1>11_SW2_SW0/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<1>11_SW2_SW0/O ),
    .O(N89)
  );
  X_LUT4 #(
    .INIT ( 16'h5657 ))
  \my_bcd_2dec/bcd0_mux0000<1>11_SW2_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [2]),
    .ADR1(\my_bcd_2dec/bcd0 [0]),
    .ADR2(\my_bcd_2dec/bcd0 [1]),
    .ADR3(\my_bcd_2dec/bcd0 [3]),
    .O(\my_bcd_2dec/bcd0_mux0000<1>11_SW2_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<1>11_SW0_SW0/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<1>11_SW0_SW0/O ),
    .O(N91)
  );
  X_LUT4 #(
    .INIT ( 16'h6667 ))
  \my_bcd_2dec/bcd0_mux0000<1>11_SW0_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [1]),
    .ADR1(\my_bcd_2dec/bcd0 [0]),
    .ADR2(\my_bcd_2dec/bcd0 [3]),
    .ADR3(\my_bcd_2dec/bcd0 [2]),
    .O(\my_bcd_2dec/bcd0_mux0000<1>11_SW0_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<1>11_SW1/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<1>11_SW1/O ),
    .O(N82)
  );
  X_LUT4 #(
    .INIT ( 16'h96FF ))
  \my_bcd_2dec/bcd0_mux0000<1>11_SW1  (
    .ADR0(\my_bcd_2dec/bcd0 [0]),
    .ADR1(\my_bcd_2dec/bcd0 [1]),
    .ADR2(\my_fake_decoder/up_139 ),
    .ADR3(\my_bcd_2dec/bcd0_and0000 ),
    .O(\my_bcd_2dec/bcd0_mux0000<1>11_SW1/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<2>2_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<2>2_SW0/O ),
    .O(N93)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \my_bcd_2dec/bcd1_mux0000<2>2_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [1]),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_fake_decoder/up_139 ),
    .O(\my_bcd_2dec/bcd1_mux0000<2>2_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<0>_SW0_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<0>_SW0_SW0/O ),
    .O(N95)
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \my_bcd_2dec/bcd0_mux0000<0>_SW0_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [2]),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(\my_bcd_2dec/bcd1 [0]),
    .O(\my_bcd_2dec/bcd0_mux0000<0>_SW0_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<2>47_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<2>47_SW0/O ),
    .O(N97)
  );
  X_LUT3 #(
    .INIT ( 8'hEF ))
  \my_bcd_2dec/bcd1_mux0000<2>47_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [2]),
    .ADR1(N75),
    .ADR2(\my_bcd_2dec/bcd1_mux0000<2>21_116 ),
    .O(\my_bcd_2dec/bcd1_mux0000<2>47_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<1>11_SW3/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<1>11_SW3/O ),
    .O(N85)
  );
  X_LUT4 #(
    .INIT ( 16'hEFFE ))
  \my_bcd_2dec/bcd0_mux0000<1>11_SW3  (
    .ADR0(\my_master_fsm/countEn_196 ),
    .ADR1(\my_fake_decoder/cnten_131 ),
    .ADR2(\my_bcd_2dec/bcd0 [2]),
    .ADR3(N99),
    .O(\my_bcd_2dec/bcd0_mux0000<1>11_SW3/O )
  );
  X_OPAD #(
    .LOC ( "Y13" ))
  \DB<0>  (
    .PAD(DB[0])
  );
  X_OPAD #(
    .LOC ( "AB18" ))
  \DB<1>  (
    .PAD(DB[1])
  );
  X_OPAD #(
    .LOC ( "AB17" ))
  \DB<2>  (
    .PAD(DB[2])
  );
  X_OPAD #(
    .LOC ( "AB12" ))
  \DB<3>  (
    .PAD(DB[3])
  );
  X_OPAD #(
    .LOC ( "AA12" ))
  \DB<4>  (
    .PAD(DB[4])
  );
  X_OPAD #(
    .LOC ( "Y16" ))
  \DB<5>  (
    .PAD(DB[5])
  );
  X_OPAD #(
    .LOC ( "AB16" ))
  \DB<6>  (
    .PAD(DB[6])
  );
  X_OPAD #(
    .LOC ( "Y15" ))
  \DB<7>  (
    .PAD(DB[7])
  );
  X_OPAD #(
    .LOC ( "AB4" ))
  E_244 (
    .PAD(E)
  );
  X_OPAD #(
    .LOC ( "Y14" ))
  RS_245 (
    .PAD(RS)
  );
  X_OPAD #(
    .LOC ( "W13" ))
  RW_246 (
    .PAD(RW)
  );
  X_IPAD #(
    .LOC ( "U15" ))
  a_247 (
    .PAD(NlwRenamedSig_IO_a)
  );
  X_OPAD #(
    .LOC ( "R20" ))
  actuateLock_248 (
    .PAD(actuateLock)
  );
  X_IPAD #(
    .LOC ( "T15" ))
  b_249 (
    .PAD(NlwRenamedSig_IO_b)
  );
  X_IPAD #(
    .LOC ( "E12" ))
  clk_250 (
    .PAD(clk)
  );
  X_IPAD #(
    .LOC ( "V8" ))
  doorCls_251 (
    .PAD(doorCls)
  );
  X_IPAD #(
    .LOC ( "T16" ))
  lock_252 (
    .PAD(NlwRenamedSig_IO_lock)
  );
  X_IPAD #(
    .LOC ( "T14" ))
  open_253 (
    .PAD(NlwRenamedSig_IO_open)
  );
  X_OPAD #(
    .LOC ( "T19" ))
  openCls_254 (
    .PAD(openCls)
  );
  X_OPAD #(
    .LOC ( "Y22" ))
  outCnten_255 (
    .PAD(outCnten)
  );
  X_OPAD #(
    .LOC ( "V19" ))
  outDirch_256 (
    .PAD(outDirch)
  );
  X_OPAD #(
    .LOC ( "V20" ))
  outUp_257 (
    .PAD(outUp)
  );
  X_IPAD #(
    .LOC ( "R13" ))
  reset_258 (
    .PAD(NlwRenamedSig_IO_reset)
  );
  X_PD   a_PULLDOWN (
    .O(NlwRenamedSig_IO_a)
  );
  X_PD   b_PULLDOWN (
    .O(NlwRenamedSig_IO_b)
  );
  X_PD   lock_PULLDOWN (
    .O(NlwRenamedSig_IO_lock)
  );
  X_PD   open_PULLDOWN (
    .O(NlwRenamedSig_IO_open)
  );
  X_PD   reset_PULLDOWN (
    .O(NlwRenamedSig_IO_reset)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   DB_0_OBUF (
    .I(DB_0_OBUF_11),
    .O(DB[0])
  );
  X_OBUF   DB_1_OBUF (
    .I(DB_1_OBUF_12),
    .O(DB[1])
  );
  X_OBUF   DB_2_OBUF (
    .I(DB_2_OBUF_13),
    .O(DB[2])
  );
  X_OBUF   DB_3_OBUF (
    .I(DB_3_OBUF_14),
    .O(DB[3])
  );
  X_OBUF   DB_4_OBUF (
    .I(DB_4_OBUF_15),
    .O(DB[4])
  );
  X_OBUF   DB_5_OBUF (
    .I(DB_4_OBUF_15),
    .O(DB[5])
  );
  X_OBUF   DB_6_OBUF (
    .I(DB_6_OBUF_16),
    .O(DB[6])
  );
  X_OBUF   DB_7_OBUF (
    .I(DB_6_OBUF_16),
    .O(DB[7])
  );
  X_OBUF   E_OBUF (
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_182 ),
    .O(E)
  );
  X_OBUF   RS_OBUF (
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_169 ),
    .O(RS)
  );
  X_OBUF   RW_OBUF (
    .I(N0),
    .O(RW)
  );
  X_OBUF   actuateLock_OBUF (
    .I(\my_master_fsm/actuateLock_193 ),
    .O(actuateLock)
  );
  X_OBUF   openCls_OBUF (
    .I(\my_master_fsm/openCls_197 ),
    .O(openCls)
  );
  X_OBUF   outCnten_OBUF (
    .I(\my_fake_decoder/cnten_131 ),
    .O(outCnten)
  );
  X_OBUF   outDirch_OBUF (
    .I(\my_fake_decoder/dirch_132 ),
    .O(outDirch)
  );
  X_OBUF   outUp_OBUF (
    .I(\my_fake_decoder/up_139 ),
    .O(outUp)
  );
  X_ONE   NlwBlock_top_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

