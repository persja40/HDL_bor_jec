////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_translate.v
// /___/   /\     Timestamp: Tue Dec  5 09:51:51 2017
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
  clk, openCls, reset, a, b, doorCls, E, RS, RW, lock, actuateLock, open, DB, outSt
);
  input clk;
  output openCls;
  input reset;
  input a;
  input b;
  input doorCls;
  output E;
  output RS;
  output RW;
  input lock;
  output actuateLock;
  input open;
  output [7 : 0] DB;
  output [3 : 0] outSt;
  wire DB_0_OBUF_11;
  wire DB_1_OBUF_12;
  wire DB_2_OBUF_13;
  wire DB_3_OBUF_14;
  wire DB_4_OBUF_15;
  wire DB_6_OBUF_16;
  wire N0;
  wire N1;
  wire N14;
  wire N16;
  wire N18;
  wire N33;
  wire N35;
  wire N36;
  wire N4;
  wire N40;
  wire N46;
  wire N50;
  wire N52;
  wire N56;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N67;
  wire N68;
  wire N69;
  wire N70;
  wire N71;
  wire N72;
  wire N73;
  wire NlwRenamedSig_IO_a;
  wire a_IBUF_64;
  wire NlwRenamedSig_IO_b;
  wire b_IBUF_67;
  wire clk_BUFGP;
  wire doorCls_IBUF_71;
  wire eq;
  wire NlwRenamedSig_IO_lock;
  wire lock_IBUF_74;
  wire \my_bcd_2dec/N01 ;
  wire \my_bcd_2dec/N11 ;
  wire \my_bcd_2dec/N111 ;
  wire \my_bcd_2dec/N9 ;
  wire \my_bcd_2dec/bcd0_and0000 ;
  wire \my_bcd_2dec/bcd0_and0003_88 ;
  wire \my_bcd_2dec/bcd0_cmp_eq0001 ;
  wire \my_bcd_2dec/bcd0_cmp_eq0002 ;
  wire \my_bcd_2dec/bcd0_cmp_eq0003 ;
  wire \my_bcd_2dec/bcd0_not0001 ;
  wire \my_bcd_2dec/bcd1_mux0000<2>10_105 ;
  wire \my_bcd_2dec/bcd1_mux0000<2>2_106 ;
  wire \my_bcd_2dec/bcd1_mux0000<2>21_107 ;
  wire \my_bcd_2dec/bcd1_mux0000<3>14_109 ;
  wire \my_bcd_2dec/bcd1_mux0000<3>2_110 ;
  wire \my_bcd_2dec/bcd1_not0001 ;
  wire \my_bcd_2dec/bcd1_not000124_112 ;
  wire \my_clkdiv/Mcount_cnt_cy<10>_rt_115 ;
  wire \my_clkdiv/Mcount_cnt_cy<11>_rt_117 ;
  wire \my_clkdiv/Mcount_cnt_cy<12>_rt_119 ;
  wire \my_clkdiv/Mcount_cnt_cy<13>_rt_121 ;
  wire \my_clkdiv/Mcount_cnt_cy<14>_rt_123 ;
  wire \my_clkdiv/Mcount_cnt_cy<15>_rt_125 ;
  wire \my_clkdiv/Mcount_cnt_cy<16>_rt_127 ;
  wire \my_clkdiv/Mcount_cnt_cy<1>_rt_129 ;
  wire \my_clkdiv/Mcount_cnt_cy<2>_rt_131 ;
  wire \my_clkdiv/Mcount_cnt_cy<3>_rt_133 ;
  wire \my_clkdiv/Mcount_cnt_cy<4>_rt_135 ;
  wire \my_clkdiv/Mcount_cnt_cy<5>_rt_137 ;
  wire \my_clkdiv/Mcount_cnt_cy<6>_rt_139 ;
  wire \my_clkdiv/Mcount_cnt_cy<7>_rt_141 ;
  wire \my_clkdiv/Mcount_cnt_cy<8>_rt_143 ;
  wire \my_clkdiv/Mcount_cnt_cy<9>_rt_145 ;
  wire \my_clkdiv/Mcount_cnt_eqn_0 ;
  wire \my_clkdiv/Mcount_cnt_eqn_1 ;
  wire \my_clkdiv/Mcount_cnt_eqn_10 ;
  wire \my_clkdiv/Mcount_cnt_eqn_11 ;
  wire \my_clkdiv/Mcount_cnt_eqn_12 ;
  wire \my_clkdiv/Mcount_cnt_eqn_13 ;
  wire \my_clkdiv/Mcount_cnt_eqn_14 ;
  wire \my_clkdiv/Mcount_cnt_eqn_15 ;
  wire \my_clkdiv/Mcount_cnt_eqn_16 ;
  wire \my_clkdiv/Mcount_cnt_eqn_17 ;
  wire \my_clkdiv/Mcount_cnt_eqn_2 ;
  wire \my_clkdiv/Mcount_cnt_eqn_3 ;
  wire \my_clkdiv/Mcount_cnt_eqn_4 ;
  wire \my_clkdiv/Mcount_cnt_eqn_5 ;
  wire \my_clkdiv/Mcount_cnt_eqn_6 ;
  wire \my_clkdiv/Mcount_cnt_eqn_7 ;
  wire \my_clkdiv/Mcount_cnt_eqn_8 ;
  wire \my_clkdiv/Mcount_cnt_eqn_9 ;
  wire \my_clkdiv/Mcount_cnt_xor<17>_rt_165 ;
  wire \my_clkdiv/clk_slow_166 ;
  wire \my_clkdiv/clk_slow1 ;
  wire \my_clkdiv/clk_slow_not0001 ;
  wire \my_clkdiv/comp ;
  wire \my_dig_compare/Mmux_eq211_197 ;
  wire \my_dig_compare/Mmux_eq250 ;
  wire \my_dig_compare/Mmux_eq2501_199 ;
  wire \my_dig_compare/Mmux_eq2502_200 ;
  wire \my_dig_compare/Mmux_eq255_201 ;
  wire \my_dig_compare/Mmux_eq299_202 ;
  wire \my_lcd_driver/N5 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>1_208 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>2_209 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>1_211 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>2_212 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>1_218 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>2_219 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>1_221 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>2_222 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_226 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In2_227 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_228 ;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux00001 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_or0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_239 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/mode_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_242 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00001_244 ;
  wire \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00002_245 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_257 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_258 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3_259 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_261 ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In ;
  wire \my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish_263 ;
  wire \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12_264 ;
  wire \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21_265 ;
  wire \my_master_fsm/Mmux_ust_mux0000_10_267 ;
  wire \my_master_fsm/Mmux_ust_mux0000_101_268 ;
  wire \my_master_fsm/Mmux_ust_mux0000_5_f5_269 ;
  wire \my_master_fsm/Mmux_ust_mux0000_5_f51 ;
  wire \my_master_fsm/Mmux_ust_mux0000_6_271 ;
  wire \my_master_fsm/Mmux_ust_mux0000_61_272 ;
  wire \my_master_fsm/Mmux_ust_mux0000_7_273 ;
  wire \my_master_fsm/Mmux_ust_mux0000_71_274 ;
  wire \my_master_fsm/Mmux_ust_mux0000_8_f5_275 ;
  wire \my_master_fsm/Mmux_ust_mux0000_8_f51 ;
  wire \my_master_fsm/Mmux_ust_mux0000_9_277 ;
  wire \my_master_fsm/Mmux_ust_mux0000_91_278 ;
  wire \my_master_fsm/actuateLock_279 ;
  wire \my_master_fsm/actuateLock_mux0000_280 ;
  wire \my_master_fsm/blank_281 ;
  wire \my_master_fsm/blank_mux0000 ;
  wire \my_master_fsm/countEn_283 ;
  wire \my_master_fsm/countEn_cmp_eq0000 ;
  wire \my_master_fsm/openCls_285 ;
  wire \my_master_fsm/openCls_cmp_eq0000 ;
  wire \my_master_fsm/outSt<3>1 ;
  wire \my_master_fsm/outSt<3>29_288 ;
  wire \my_master_fsm/outSt_0_1_290 ;
  wire \my_master_fsm/outSt_1_1_292 ;
  wire \my_master_fsm/outSt_2_1_294 ;
  wire \my_master_fsm/outSt_3_1_296 ;
  wire \my_master_fsm/ust_or0000 ;
  wire \my_ose_decoder_fsm/_mux0000 ;
  wire \my_ose_decoder_fsm/_mux0001 ;
  wire \my_ose_decoder_fsm/cnten_313 ;
  wire \my_ose_decoder_fsm/dirch_314 ;
  wire \my_ose_decoder_fsm/dirch_mux0000 ;
  wire \my_ose_decoder_fsm/dirch_mux00001_316 ;
  wire \my_ose_decoder_fsm/dirch_mux00002_317 ;
  wire \my_ose_decoder_fsm/rst_inv ;
  wire \my_ose_decoder_fsm/st_FSM_FFd1_319 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd1-In ;
  wire \my_ose_decoder_fsm/st_FSM_FFd2_321 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd2-In ;
  wire \my_ose_decoder_fsm/st_FSM_FFd3_323 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd3-In ;
  wire \my_ose_decoder_fsm/st_FSM_FFd4_325 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd4-In ;
  wire \my_ose_decoder_fsm/st_FSM_FFd5_327 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd5-In ;
  wire \my_ose_decoder_fsm/st_FSM_FFd6_329 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd6-In ;
  wire \my_ose_decoder_fsm/st_FSM_FFd7_331 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd7-In ;
  wire \my_ose_decoder_fsm/st_FSM_FFd8_333 ;
  wire \my_ose_decoder_fsm/st_FSM_FFd8-In ;
  wire \my_ose_decoder_fsm/tmpDirch_335 ;
  wire \my_ose_decoder_fsm/tmpDirch_mux0000 ;
  wire \my_ose_decoder_fsm/up_337 ;
  wire NlwRenamedSig_IO_open;
  wire open_IBUF_340;
  wire NlwRenamedSig_IO_reset;
  wire reset_IBUF_346;
  wire \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0/O ;
  wire \my_bcd_2dec/bcd0_cmp_eq000011/O ;
  wire \my_bcd_2dec/bcd1_mux0000<2>10/O ;
  wire \my_bcd_2dec/bcd0_mux0000<0>_SW0/O ;
  wire \my_bcd_2dec/Maddsub_bcd0_share0000_cy<1>11/O ;
  wire \my_bcd_2dec/bcd1_not000124_SW0/O ;
  wire \my_bcd_2dec/bcd1_mux0000<3>2/O ;
  wire \my_bcd_2dec/bcd0_mux0000<3>_SW2/O ;
  wire \my_bcd_2dec/bcd1_mux0000<0>_SW0/O ;
  wire \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/O ;
  wire \my_bcd_2dec/bcd1_not000163_SW0/O ;
  wire \my_bcd_2dec/bcd1_mux0000<1>1_SW0/O ;
  wire \clk_BUFGP/IBUFG_2 ;
  wire GND;
  wire VCC;
  wire [17 : 0] Result;
  wire [1 : 1] \my_bcd_2dec/Maddsub_bcd0_share0000_cy ;
  wire [2 : 1] \my_bcd_2dec/Maddsub_bcd0_share0000_lut ;
  wire [1 : 1] \my_bcd_2dec/Maddsub_bcd1_share0000_cy ;
  wire [3 : 0] \my_bcd_2dec/bcd0 ;
  wire [3 : 0] \my_bcd_2dec/bcd0_mux0000 ;
  wire [3 : 3] \my_bcd_2dec/bcd0_share0000 ;
  wire [3 : 0] \my_bcd_2dec/bcd1 ;
  wire [3 : 0] \my_bcd_2dec/bcd1_mux0000 ;
  wire [16 : 0] \my_clkdiv/Mcount_cnt_cy ;
  wire [0 : 0] \my_clkdiv/Mcount_cnt_lut ;
  wire [17 : 0] \my_clkdiv/cnt ;
  wire [3 : 0] \my_clkdiv/comp_wg_cy ;
  wire [4 : 0] \my_clkdiv/comp_wg_lut ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt ;
  wire [1 : 0] \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 ;
  wire [5 : 0] \my_lcd_driver/my_LCD_controller/my_main_controller/st ;
  wire [5 : 1] \my_lcd_driver/my_LCD_controller/my_main_controller/ust ;
  wire [1 : 1] \my_lcd_driver/my_LCD_dp/init_reset_mux ;
  wire [3 : 0] \my_master_fsm/outSt ;
  wire [1 : 0] \my_master_fsm/sel ;
  wire [1 : 0] \my_master_fsm/sel_mux0000 ;
  wire [3 : 0] \my_master_fsm/ust ;
  wire [3 : 0] \my_master_fsm/ust_mux0000 ;
  wire [0 : 0] \my_master_fsm/ust_mux0002 ;
  assign
    NlwRenamedSig_IO_reset = reset,
    NlwRenamedSig_IO_a = a,
    NlwRenamedSig_IO_b = b,
    NlwRenamedSig_IO_lock = lock,
    NlwRenamedSig_IO_open = open;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/clk_slow  (
    .CLK(clk_BUFGP),
    .CE(\my_clkdiv/comp ),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/clk_slow_not0001 ),
    .O(\my_clkdiv/clk_slow1 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_0  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_0 ),
    .O(\my_clkdiv/cnt [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_1  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_1 ),
    .O(\my_clkdiv/cnt [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_2  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_2 ),
    .O(\my_clkdiv/cnt [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_3  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_3 ),
    .O(\my_clkdiv/cnt [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_4  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_4 ),
    .O(\my_clkdiv/cnt [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_5  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_5 ),
    .O(\my_clkdiv/cnt [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_6  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_6 ),
    .O(\my_clkdiv/cnt [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_7  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_7 ),
    .O(\my_clkdiv/cnt [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_8  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_8 ),
    .O(\my_clkdiv/cnt [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_9  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_9 ),
    .O(\my_clkdiv/cnt [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_10  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_10 ),
    .O(\my_clkdiv/cnt [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_11  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_11 ),
    .O(\my_clkdiv/cnt [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_12  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_12 ),
    .O(\my_clkdiv/cnt [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_13  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_13 ),
    .O(\my_clkdiv/cnt [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_14  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_14 ),
    .O(\my_clkdiv/cnt [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_15  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_15 ),
    .O(\my_clkdiv/cnt [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_16  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_16 ),
    .O(\my_clkdiv/cnt [16]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_clkdiv/cnt_17  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_346),
    .I(\my_clkdiv/Mcount_cnt_eqn_17 ),
    .O(\my_clkdiv/cnt [17]),
    .CE(VCC),
    .SET(GND)
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\my_clkdiv/Mcount_cnt_lut [0]),
    .O(\my_clkdiv/Mcount_cnt_cy [0])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<0>  (
    .I0(N0),
    .I1(\my_clkdiv/Mcount_cnt_lut [0]),
    .O(Result[0])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<1>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [0]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<1>_rt_129 ),
    .O(\my_clkdiv/Mcount_cnt_cy [1])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<1>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [0]),
    .I1(\my_clkdiv/Mcount_cnt_cy<1>_rt_129 ),
    .O(Result[1])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<2>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [1]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<2>_rt_131 ),
    .O(\my_clkdiv/Mcount_cnt_cy [2])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<2>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [1]),
    .I1(\my_clkdiv/Mcount_cnt_cy<2>_rt_131 ),
    .O(Result[2])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<3>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [2]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<3>_rt_133 ),
    .O(\my_clkdiv/Mcount_cnt_cy [3])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<3>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [2]),
    .I1(\my_clkdiv/Mcount_cnt_cy<3>_rt_133 ),
    .O(Result[3])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<4>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [3]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<4>_rt_135 ),
    .O(\my_clkdiv/Mcount_cnt_cy [4])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<4>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [3]),
    .I1(\my_clkdiv/Mcount_cnt_cy<4>_rt_135 ),
    .O(Result[4])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<5>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [4]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<5>_rt_137 ),
    .O(\my_clkdiv/Mcount_cnt_cy [5])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<5>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [4]),
    .I1(\my_clkdiv/Mcount_cnt_cy<5>_rt_137 ),
    .O(Result[5])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<6>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [5]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<6>_rt_139 ),
    .O(\my_clkdiv/Mcount_cnt_cy [6])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<6>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [5]),
    .I1(\my_clkdiv/Mcount_cnt_cy<6>_rt_139 ),
    .O(Result[6])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<7>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [6]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<7>_rt_141 ),
    .O(\my_clkdiv/Mcount_cnt_cy [7])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<7>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [6]),
    .I1(\my_clkdiv/Mcount_cnt_cy<7>_rt_141 ),
    .O(Result[7])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<8>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [7]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<8>_rt_143 ),
    .O(\my_clkdiv/Mcount_cnt_cy [8])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<8>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [7]),
    .I1(\my_clkdiv/Mcount_cnt_cy<8>_rt_143 ),
    .O(Result[8])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<9>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [8]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<9>_rt_145 ),
    .O(\my_clkdiv/Mcount_cnt_cy [9])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<9>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [8]),
    .I1(\my_clkdiv/Mcount_cnt_cy<9>_rt_145 ),
    .O(Result[9])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<10>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [9]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<10>_rt_115 ),
    .O(\my_clkdiv/Mcount_cnt_cy [10])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<10>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [9]),
    .I1(\my_clkdiv/Mcount_cnt_cy<10>_rt_115 ),
    .O(Result[10])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<11>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [10]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<11>_rt_117 ),
    .O(\my_clkdiv/Mcount_cnt_cy [11])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<11>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [10]),
    .I1(\my_clkdiv/Mcount_cnt_cy<11>_rt_117 ),
    .O(Result[11])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<12>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [11]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<12>_rt_119 ),
    .O(\my_clkdiv/Mcount_cnt_cy [12])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<12>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [11]),
    .I1(\my_clkdiv/Mcount_cnt_cy<12>_rt_119 ),
    .O(Result[12])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<13>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [12]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<13>_rt_121 ),
    .O(\my_clkdiv/Mcount_cnt_cy [13])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<13>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [12]),
    .I1(\my_clkdiv/Mcount_cnt_cy<13>_rt_121 ),
    .O(Result[13])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<14>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [13]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<14>_rt_123 ),
    .O(\my_clkdiv/Mcount_cnt_cy [14])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<14>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [13]),
    .I1(\my_clkdiv/Mcount_cnt_cy<14>_rt_123 ),
    .O(Result[14])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<15>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [14]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<15>_rt_125 ),
    .O(\my_clkdiv/Mcount_cnt_cy [15])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<15>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [14]),
    .I1(\my_clkdiv/Mcount_cnt_cy<15>_rt_125 ),
    .O(Result[15])
  );
  X_MUX2   \my_clkdiv/Mcount_cnt_cy<16>  (
    .IB(\my_clkdiv/Mcount_cnt_cy [15]),
    .IA(N0),
    .SEL(\my_clkdiv/Mcount_cnt_cy<16>_rt_127 ),
    .O(\my_clkdiv/Mcount_cnt_cy [16])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<16>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [15]),
    .I1(\my_clkdiv/Mcount_cnt_cy<16>_rt_127 ),
    .O(Result[16])
  );
  X_XOR2   \my_clkdiv/Mcount_cnt_xor<17>  (
    .I0(\my_clkdiv/Mcount_cnt_cy [16]),
    .I1(\my_clkdiv/Mcount_cnt_xor<17>_rt_165 ),
    .O(Result[17])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_ose_decoder_fsm/st_FSM_FFd8  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_ose_decoder_fsm/st_FSM_FFd8-In ),
    .SET(reset_IBUF_346),
    .O(\my_ose_decoder_fsm/st_FSM_FFd8_333 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/st_FSM_FFd7  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/st_FSM_FFd7-In ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd7_331 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/st_FSM_FFd6  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/st_FSM_FFd6-In ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd6_329 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/st_FSM_FFd5  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/st_FSM_FFd5-In ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd5_327 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/st_FSM_FFd4  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/st_FSM_FFd4-In ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd4_325 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/st_FSM_FFd3  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/st_FSM_FFd3-In ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd3_323 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/st_FSM_FFd2  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/st_FSM_FFd2-In ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd2_321 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/st_FSM_FFd1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/st_FSM_FFd1-In ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd1_319 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_ose_decoder_fsm/up  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_ose_decoder_fsm/_mux0001 ),
    .SET(reset_IBUF_346),
    .O(\my_ose_decoder_fsm/up_337 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_ose_decoder_fsm/cnten  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_ose_decoder_fsm/_mux0000 ),
    .SET(reset_IBUF_346),
    .O(\my_ose_decoder_fsm/cnten_313 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/dirch  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_ose_decoder_fsm/dirch_mux0000 ),
    .O(\my_ose_decoder_fsm/dirch_314 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_ose_decoder_fsm/tmpDirch  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_ose_decoder_fsm/rst_inv ),
    .I(\my_ose_decoder_fsm/tmpDirch_mux0000 ),
    .O(\my_ose_decoder_fsm/tmpDirch_335 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_3  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd1_mux0000 [0]),
    .O(\my_bcd_2dec/bcd1 [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_2  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd1_mux0000 [1]),
    .O(\my_bcd_2dec/bcd1 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd1_mux0000 [2]),
    .O(\my_bcd_2dec/bcd1 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd1_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd1_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd1_mux0000 [3]),
    .O(\my_bcd_2dec/bcd1 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_3  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd0_mux0000 [0]),
    .O(\my_bcd_2dec/bcd0 [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_2  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd0_mux0000 [1]),
    .O(\my_bcd_2dec/bcd0 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd0_mux0000 [2]),
    .O(\my_bcd_2dec/bcd0 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_bcd_2dec/bcd0_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_bcd_2dec/bcd0_not0001 ),
    .RST(reset_IBUF_346),
    .I(\my_bcd_2dec/bcd0_mux0000 [3]),
    .O(\my_bcd_2dec/bcd0 [0]),
    .SET(GND)
  );
  X_MUX2   \my_master_fsm/Mmux_ust_mux0000_8_f5  (
    .IA(\my_master_fsm/Mmux_ust_mux0000_10_267 ),
    .IB(\my_master_fsm/Mmux_ust_mux0000_9_277 ),
    .SEL(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/Mmux_ust_mux0000_8_f5_275 )
  );
  X_MUX2   \my_master_fsm/Mmux_ust_mux0000_8_f5_0  (
    .IA(\my_master_fsm/Mmux_ust_mux0000_101_268 ),
    .IB(\my_master_fsm/Mmux_ust_mux0000_91_278 ),
    .SEL(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/Mmux_ust_mux0000_8_f51 )
  );
  X_MUX2   \my_master_fsm/Mmux_ust_mux0000_5_f5  (
    .IA(\my_master_fsm/Mmux_ust_mux0000_7_273 ),
    .IB(\my_master_fsm/Mmux_ust_mux0000_6_271 ),
    .SEL(\my_master_fsm/outSt [2]),
    .O(\my_master_fsm/Mmux_ust_mux0000_5_f5_269 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \my_master_fsm/Mmux_ust_mux0000_61  (
    .ADR0(\my_master_fsm/outSt [0]),
    .ADR1(\my_master_fsm/ust_mux0002 [0]),
    .ADR2(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/Mmux_ust_mux0000_61_272 )
  );
  X_MUX2   \my_master_fsm/Mmux_ust_mux0000_5_f5_0  (
    .IA(\my_master_fsm/Mmux_ust_mux0000_71_274 ),
    .IB(\my_master_fsm/Mmux_ust_mux0000_61_272 ),
    .SEL(\my_master_fsm/outSt [2]),
    .O(\my_master_fsm/Mmux_ust_mux0000_5_f51 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \my_master_fsm/ust_3  (
    .I(\my_master_fsm/ust_mux0000 [3]),
    .CLK(\my_master_fsm/ust_or0000 ),
    .O(\my_master_fsm/ust [3]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \my_master_fsm/ust_2  (
    .I(\my_master_fsm/ust_mux0000 [2]),
    .CLK(\my_master_fsm/ust_or0000 ),
    .O(\my_master_fsm/ust [2]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \my_master_fsm/ust_1  (
    .I(\my_master_fsm/ust_mux0000 [1]),
    .CLK(\my_master_fsm/ust_or0000 ),
    .O(\my_master_fsm/ust [1]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \my_master_fsm/ust_0  (
    .I(\my_master_fsm/ust_mux0000 [0]),
    .CLK(\my_master_fsm/ust_or0000 ),
    .O(\my_master_fsm/ust [0]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_3  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [3]),
    .O(\my_master_fsm/outSt [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_2  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [2]),
    .O(\my_master_fsm/outSt [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [1]),
    .O(\my_master_fsm/outSt [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [0]),
    .O(\my_master_fsm/outSt [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/openCls  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/openCls_cmp_eq0000 ),
    .O(\my_master_fsm/openCls_285 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/actuateLock  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/actuateLock_mux0000_280 ),
    .O(\my_master_fsm/actuateLock_279 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/sel_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/sel_mux0000 [0]),
    .O(\my_master_fsm/sel [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/sel_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/sel_mux0000 [1]),
    .O(\my_master_fsm/sel [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_master_fsm/countEn  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_master_fsm/countEn_cmp_eq0000 ),
    .SET(reset_IBUF_346),
    .O(\my_master_fsm/countEn_283 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/blank  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/blank_mux0000 ),
    .O(\my_master_fsm/blank_281 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_or0000 ),
    .SET(reset_IBUF_346),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_239 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 [1]),
    .SET(reset_IBUF_346),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt_mux0000 [0]),
    .SET(reset_IBUF_346),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [1]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_mux0000 ),
    .SET(reset_IBUF_346),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/mode  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_mux0000 ),
    .SET(reset_IBUF_346),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/data_sel  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_mux0000 ),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000 ),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_242 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_4  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_3  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [3]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_5  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [5]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(N0),
    .SET(reset_IBUF_346),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/st_2  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_0  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux0000 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_257 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_258 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In ),
    .SET(reset_IBUF_346),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_261 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3_259 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_258 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish_263 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/E_out  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3_259 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_257 ),
    .CE(VCC),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_clkdiv/comp_wg_lut<0>  (
    .ADR0(\my_clkdiv/cnt [4]),
    .ADR1(\my_clkdiv/cnt [5]),
    .O(\my_clkdiv/comp_wg_lut [0])
  );
  X_MUX2   \my_clkdiv/comp_wg_cy<0>  (
    .IB(N1),
    .IA(N0),
    .SEL(\my_clkdiv/comp_wg_lut [0]),
    .O(\my_clkdiv/comp_wg_cy [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \my_clkdiv/comp_wg_lut<1>  (
    .ADR0(\my_clkdiv/cnt [3]),
    .ADR1(\my_clkdiv/cnt [7]),
    .ADR2(\my_clkdiv/cnt [6]),
    .ADR3(\my_clkdiv/cnt [8]),
    .O(\my_clkdiv/comp_wg_lut [1])
  );
  X_MUX2   \my_clkdiv/comp_wg_cy<1>  (
    .IB(\my_clkdiv/comp_wg_cy [0]),
    .IA(N0),
    .SEL(\my_clkdiv/comp_wg_lut [1]),
    .O(\my_clkdiv/comp_wg_cy [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \my_clkdiv/comp_wg_lut<2>  (
    .ADR0(\my_clkdiv/cnt [11]),
    .ADR1(\my_clkdiv/cnt [1]),
    .ADR2(\my_clkdiv/cnt [9]),
    .ADR3(\my_clkdiv/cnt [10]),
    .O(\my_clkdiv/comp_wg_lut [2])
  );
  X_MUX2   \my_clkdiv/comp_wg_cy<2>  (
    .IB(\my_clkdiv/comp_wg_cy [1]),
    .IA(N0),
    .SEL(\my_clkdiv/comp_wg_lut [2]),
    .O(\my_clkdiv/comp_wg_cy [2])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \my_clkdiv/comp_wg_lut<3>  (
    .ADR0(\my_clkdiv/cnt [12]),
    .ADR1(\my_clkdiv/cnt [13]),
    .ADR2(\my_clkdiv/cnt [0]),
    .ADR3(\my_clkdiv/cnt [14]),
    .O(\my_clkdiv/comp_wg_lut [3])
  );
  X_MUX2   \my_clkdiv/comp_wg_cy<3>  (
    .IB(\my_clkdiv/comp_wg_cy [2]),
    .IA(N0),
    .SEL(\my_clkdiv/comp_wg_lut [3]),
    .O(\my_clkdiv/comp_wg_cy [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \my_clkdiv/comp_wg_lut<4>  (
    .ADR0(\my_clkdiv/cnt [15]),
    .ADR1(\my_clkdiv/cnt [16]),
    .ADR2(\my_clkdiv/cnt [2]),
    .ADR3(\my_clkdiv/cnt [17]),
    .O(\my_clkdiv/comp_wg_lut [4])
  );
  X_MUX2   \my_clkdiv/comp_wg_cy<4>  (
    .IB(\my_clkdiv/comp_wg_cy [3]),
    .IA(N0),
    .SEL(\my_clkdiv/comp_wg_lut [4]),
    .O(\my_clkdiv/comp )
  );
  X_LUT4 #(
    .INIT ( 16'h5557 ))
  \my_master_fsm/ust_or00001  (
    .ADR0(\my_master_fsm/outSt [3]),
    .ADR1(\my_master_fsm/outSt [1]),
    .ADR2(\my_master_fsm/outSt [2]),
    .ADR3(\my_master_fsm/outSt [0]),
    .O(\my_master_fsm/ust_or0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \my_dig_compare/Mmux_eq211  (
    .ADR0(\my_bcd_2dec/bcd0 [2]),
    .ADR1(\my_bcd_2dec/bcd0 [0]),
    .ADR2(\my_master_fsm/sel [1]),
    .O(\my_dig_compare/Mmux_eq211_197 )
  );
  X_LUT4 #(
    .INIT ( 16'hAEAA ))
  \my_dig_compare/Mmux_eq255  (
    .ADR0(\my_dig_compare/Mmux_eq250 ),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_master_fsm/sel [0]),
    .ADR3(\my_dig_compare/Mmux_eq211_197 ),
    .O(\my_dig_compare/Mmux_eq255_201 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \my_dig_compare/Mmux_eq299  (
    .ADR0(\my_bcd_2dec/bcd1 [2]),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(\my_bcd_2dec/bcd0 [3]),
    .ADR3(\my_bcd_2dec/bcd0 [1]),
    .O(\my_dig_compare/Mmux_eq299_202 )
  );
  X_LUT3 #(
    .INIT ( 8'h08 ))
  \my_dig_compare/Mmux_eq2102  (
    .ADR0(\my_dig_compare/Mmux_eq299_202 ),
    .ADR1(\my_dig_compare/Mmux_eq255_201 ),
    .ADR2(\my_bcd_2dec/bcd1 [3]),
    .O(eq)
  );
  X_LUT4 #(
    .INIT ( 16'hA888 ))
  \my_lcd_driver/DB<5>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(DB_4_OBUF_15)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_ose_decoder_fsm/st_FSM_Out41  (
    .ADR0(\my_ose_decoder_fsm/st_FSM_FFd5_327 ),
    .ADR1(\my_ose_decoder_fsm/st_FSM_FFd4_325 ),
    .O(\my_ose_decoder_fsm/_mux0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_ose_decoder_fsm/st_FSM_FFd6-In1  (
    .ADR0(a_IBUF_64),
    .ADR1(\my_ose_decoder_fsm/st_FSM_FFd7_331 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd6-In )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_ose_decoder_fsm/st_FSM_FFd2-In1  (
    .ADR0(a_IBUF_64),
    .ADR1(\my_ose_decoder_fsm/st_FSM_FFd1_319 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd2-In )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_228 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_261 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd3-In )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<4>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [3]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [4])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \my_ose_decoder_fsm/st_FSM_FFd8-In1  (
    .ADR0(a_IBUF_64),
    .ADR1(\my_ose_decoder_fsm/st_FSM_FFd8_333 ),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd5_327 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd8-In )
  );
  X_LUT3 #(
    .INIT ( 8'h32 ))
  \my_ose_decoder_fsm/st_FSM_FFd7-In1  (
    .ADR0(\my_ose_decoder_fsm/st_FSM_FFd7_331 ),
    .ADR1(a_IBUF_64),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd8_333 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd7-In )
  );
  X_LUT3 #(
    .INIT ( 8'h32 ))
  \my_ose_decoder_fsm/st_FSM_FFd5-In1  (
    .ADR0(\my_ose_decoder_fsm/st_FSM_FFd6_329 ),
    .ADR1(b_IBUF_67),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd2_321 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd5-In )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \my_ose_decoder_fsm/st_FSM_FFd4-In1  (
    .ADR0(b_IBUF_67),
    .ADR1(\my_ose_decoder_fsm/st_FSM_FFd6_329 ),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd2_321 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd4-In )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \my_ose_decoder_fsm/st_FSM_FFd3-In1  (
    .ADR0(a_IBUF_64),
    .ADR1(\my_ose_decoder_fsm/st_FSM_FFd3_323 ),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd4_325 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd3-In )
  );
  X_LUT3 #(
    .INIT ( 8'h32 ))
  \my_ose_decoder_fsm/st_FSM_FFd1-In1  (
    .ADR0(\my_ose_decoder_fsm/st_FSM_FFd1_319 ),
    .ADR1(a_IBUF_64),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd3_323 ),
    .O(\my_ose_decoder_fsm/st_FSM_FFd1-In )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4_261 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_228 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd1_258 ),
    .O(\my_lcd_driver/my_LCD_controller/my_write_cycle/st_FSM_FFd4-In )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<5>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [5])
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<3>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [3]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [3])
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<2>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [1]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [2])
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/ust<1>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/st [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/ust [1])
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/mode_mux00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
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
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \my_master_fsm/sel_mux0000<1>1  (
    .ADR0(\my_master_fsm/outSt [0]),
    .ADR1(\my_master_fsm/outSt [1]),
    .ADR2(\my_master_fsm/outSt [3]),
    .ADR3(\my_master_fsm/outSt [2]),
    .O(\my_master_fsm/sel_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \my_master_fsm/sel_mux0000<0>1  (
    .ADR0(\my_master_fsm/outSt [3]),
    .ADR1(\my_master_fsm/outSt [2]),
    .ADR2(\my_master_fsm/outSt [0]),
    .ADR3(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/sel_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \my_master_fsm/openCls_cmp_eq00001  (
    .ADR0(\my_master_fsm/outSt [2]),
    .ADR1(\my_master_fsm/outSt [0]),
    .ADR2(\my_master_fsm/outSt [1]),
    .ADR3(\my_master_fsm/outSt [3]),
    .O(\my_master_fsm/openCls_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \my_master_fsm/countEn_cmp_eq00001  (
    .ADR0(\my_master_fsm/outSt [3]),
    .ADR1(\my_master_fsm/outSt [2]),
    .ADR2(\my_master_fsm/outSt [0]),
    .ADR3(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/countEn_cmp_eq0000 )
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
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/st [2]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFBE ))
  \my_master_fsm/blank_mux00001  (
    .ADR0(\my_master_fsm/outSt [0]),
    .ADR1(\my_master_fsm/outSt [1]),
    .ADR2(\my_master_fsm/outSt [2]),
    .ADR3(\my_master_fsm/outSt [3]),
    .O(\my_master_fsm/blank_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hE7E2 ))
  \my_ose_decoder_fsm/tmpDirch_mux00001  (
    .ADR0(\my_ose_decoder_fsm/st_FSM_FFd2_321 ),
    .ADR1(b_IBUF_67),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd6_329 ),
    .ADR3(\my_ose_decoder_fsm/tmpDirch_335 ),
    .O(\my_ose_decoder_fsm/tmpDirch_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h08 ))
  \my_master_fsm/actuateLock_mux0000_SW0  (
    .ADR0(doorCls_IBUF_71),
    .ADR1(\my_master_fsm/outSt [1]),
    .ADR2(\my_master_fsm/actuateLock_279 ),
    .O(N4)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \my_master_fsm/actuateLock_mux0000  (
    .ADR0(\my_master_fsm/outSt [2]),
    .ADR1(\my_master_fsm/outSt [0]),
    .ADR2(\my_master_fsm/outSt [3]),
    .ADR3(N4),
    .O(\my_master_fsm/actuateLock_mux0000_280 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_bcd_2dec/bcd0_and00001  (
    .ADR0(\my_ose_decoder_fsm/cnten_313 ),
    .ADR1(\my_master_fsm/countEn_283 ),
    .O(\my_bcd_2dec/bcd0_and0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \my_lcd_driver/my_LCD_dp/mymux6/init_reset_mux<2>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(\my_lcd_driver/my_LCD_dp/init_reset_mux [1])
  );
  X_LUT3 #(
    .INIT ( 8'h04 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>111  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .ADR2(\my_master_fsm/blank_281 ),
    .O(\my_lcd_driver/N5 )
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<2>_SW0  (
    .ADR0(\my_lcd_driver/N5 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR2(\my_bcd_2dec/bcd1 [2]),
    .ADR3(\my_bcd_2dec/bcd0 [2]),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'hBAFF ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<2>  (
    .ADR0(N14),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .ADR2(\my_lcd_driver/my_LCD_dp/init_reset_mux [1]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .O(DB_2_OBUF_13)
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<1>_SW0  (
    .ADR0(\my_lcd_driver/N5 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR2(\my_bcd_2dec/bcd1 [1]),
    .ADR3(\my_bcd_2dec/bcd0 [1]),
    .O(N16)
  );
  X_LUT4 #(
    .INIT ( 16'hCC40 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<1>  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .ADR2(\my_lcd_driver/my_LCD_dp/init_reset_mux [1]),
    .ADR3(N16),
    .O(DB_1_OBUF_12)
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12  (
    .ADR0(\my_lcd_driver/N5 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR2(\my_bcd_2dec/bcd1 [0]),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12_264 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21_265 )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<0>33  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .ADR1(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>12_264 ),
    .ADR2(\my_lcd_driver/my_LCD_dp/data2_mux8/out<0>21_265 ),
    .O(DB_0_OBUF_11)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_master_fsm/outSt<3>21  (
    .ADR0(\my_master_fsm/outSt [3]),
    .ADR1(\my_master_fsm/Mmux_ust_mux0000_5_f5_269 ),
    .O(\my_master_fsm/ust_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hC8CA ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE32 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR3(N18),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \my_master_fsm/outSt<3>31  (
    .ADR0(\my_master_fsm/outSt [3]),
    .ADR1(\my_master_fsm/Mmux_ust_mux0000_5_f51 ),
    .O(\my_master_fsm/ust_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0F01 ))
  \my_master_fsm/outSt<3>64  (
    .ADR0(\my_master_fsm/Mmux_ust_mux0000_8_f5_275 ),
    .ADR1(\my_master_fsm/outSt [2]),
    .ADR2(\my_master_fsm/outSt [3]),
    .ADR3(\my_master_fsm/outSt<3>29_288 ),
    .O(\my_master_fsm/ust_mux0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \my_clkdiv/Mcount_cnt_eqn_01  (
    .ADR0(Result[0]),
    .ADR1(\my_clkdiv/comp ),
    .O(\my_clkdiv/Mcount_cnt_eqn_0 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \my_clkdiv/Mcount_cnt_eqn_18  (
    .ADR0(Result[1]),
    .ADR1(\my_clkdiv/comp ),
    .O(\my_clkdiv/Mcount_cnt_eqn_1 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \my_clkdiv/Mcount_cnt_eqn_21  (
    .ADR0(Result[2]),
    .ADR1(\my_clkdiv/comp ),
    .O(\my_clkdiv/Mcount_cnt_eqn_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h2800 ))
  \my_bcd_2dec/bcd0_mux0000<2>1  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(\my_bcd_2dec/Maddsub_bcd0_share0000_lut [1]),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(N71),
    .O(\my_bcd_2dec/bcd0_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h2800 ))
  \my_bcd_2dec/bcd0_mux0000<1>1  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(\my_bcd_2dec/Maddsub_bcd0_share0000_lut [2]),
    .ADR2(\my_bcd_2dec/Maddsub_bcd0_share0000_cy [1]),
    .ADR3(\my_bcd_2dec/N11 ),
    .O(\my_bcd_2dec/bcd0_mux0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \my_clkdiv/Mcount_cnt_eqn_31  (
    .ADR0(Result[3]),
    .ADR1(\my_clkdiv/comp ),
    .O(\my_clkdiv/Mcount_cnt_eqn_3 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \my_clkdiv/Mcount_cnt_eqn_41  (
    .ADR0(Result[4]),
    .ADR1(\my_clkdiv/comp ),
    .O(\my_clkdiv/Mcount_cnt_eqn_4 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \my_clkdiv/Mcount_cnt_eqn_51  (
    .ADR0(Result[5]),
    .ADR1(\my_clkdiv/comp ),
    .O(\my_clkdiv/Mcount_cnt_eqn_5 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \my_clkdiv/Mcount_cnt_eqn_61  (
    .ADR0(Result[6]),
    .ADR1(\my_clkdiv/comp ),
    .O(\my_clkdiv/Mcount_cnt_eqn_6 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_71  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[7]),
    .O(\my_clkdiv/Mcount_cnt_eqn_7 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_81  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[8]),
    .O(\my_clkdiv/Mcount_cnt_eqn_8 )
  );
  X_LUT4 #(
    .INIT ( 16'h8CCC ))
  \my_bcd_2dec/bcd1_mux0000<0>111  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(\my_ose_decoder_fsm/up_337 ),
    .ADR2(\my_bcd_2dec/bcd0_cmp_eq0001 ),
    .ADR3(\my_bcd_2dec/N9 ),
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
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_bcd_2dec/bcd1_mux0000<2>2  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(N72),
    .O(\my_bcd_2dec/bcd1_mux0000<2>2_106 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \my_bcd_2dec/bcd1_mux0000<2>47  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(\my_bcd_2dec/bcd1_mux0000<2>21_107 ),
    .ADR2(\my_bcd_2dec/bcd1_mux0000<2>10_105 ),
    .ADR3(\my_bcd_2dec/bcd1_mux0000<2>2_106 ),
    .O(\my_bcd_2dec/bcd1_mux0000 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_91  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[9]),
    .O(\my_clkdiv/Mcount_cnt_eqn_9 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_101  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[10]),
    .O(\my_clkdiv/Mcount_cnt_eqn_10 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_111  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[11]),
    .O(\my_clkdiv/Mcount_cnt_eqn_11 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_121  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[12]),
    .O(\my_clkdiv/Mcount_cnt_eqn_12 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_131  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[13]),
    .O(\my_clkdiv/Mcount_cnt_eqn_13 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_141  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[14]),
    .O(\my_clkdiv/Mcount_cnt_eqn_14 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \my_bcd_2dec/Maddsub_bcd0_share0000_lut<2>1  (
    .ADR0(\my_bcd_2dec/bcd0 [2]),
    .ADR1(\my_ose_decoder_fsm/up_337 ),
    .O(\my_bcd_2dec/Maddsub_bcd0_share0000_lut [2])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_151  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[15]),
    .O(\my_clkdiv/Mcount_cnt_eqn_15 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_161  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[16]),
    .O(\my_clkdiv/Mcount_cnt_eqn_16 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \my_clkdiv/Mcount_cnt_eqn_171  (
    .ADR0(\my_clkdiv/comp ),
    .ADR1(Result[17]),
    .O(\my_clkdiv/Mcount_cnt_eqn_17 )
  );
  X_LUT4 #(
    .INIT ( 16'h4800 ))
  \my_bcd_2dec/bcd1_mux0000<0>  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_bcd_2dec/bcd0_and0000 ),
    .ADR2(N33),
    .ADR3(\my_bcd_2dec/N01 ),
    .O(\my_bcd_2dec/bcd1_mux0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \my_bcd_2dec/Maddsub_bcd0_share0000_lut<1>1  (
    .ADR0(\my_bcd_2dec/bcd0 [1]),
    .ADR1(\my_ose_decoder_fsm/up_337 ),
    .O(\my_bcd_2dec/Maddsub_bcd0_share0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'hCF8A ))
  \my_bcd_2dec/bcd0_mux0000<0>_SW1  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(N73),
    .ADR2(\my_bcd_2dec/N111 ),
    .ADR3(\my_bcd_2dec/bcd0_and0003_88 ),
    .O(N36)
  );
  X_LUT4 #(
    .INIT ( 16'h082A ))
  \my_bcd_2dec/bcd0_mux0000<0>  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(\my_bcd_2dec/bcd0_share0000 [3]),
    .ADR2(N36),
    .ADR3(N35),
    .O(\my_bcd_2dec/bcd0_mux0000 [0])
  );
  X_BUF   reset_IBUF (
    .I(NlwRenamedSig_IO_reset),
    .O(reset_IBUF_346)
  );
  X_BUF   a_IBUF (
    .I(NlwRenamedSig_IO_a),
    .O(a_IBUF_64)
  );
  X_BUF   b_IBUF (
    .I(NlwRenamedSig_IO_b),
    .O(b_IBUF_67)
  );
  X_BUF   doorCls_IBUF (
    .I(doorCls),
    .O(doorCls_IBUF_71)
  );
  X_BUF   lock_IBUF (
    .I(NlwRenamedSig_IO_lock),
    .O(lock_IBUF_74)
  );
  X_BUF   open_IBUF (
    .I(NlwRenamedSig_IO_open),
    .O(open_IBUF_340)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .CE(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .RST(reset_IBUF_346),
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux00001 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_228 ),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<1>_rt  (
    .ADR0(\my_clkdiv/cnt [1]),
    .O(\my_clkdiv/Mcount_cnt_cy<1>_rt_129 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<2>_rt  (
    .ADR0(\my_clkdiv/cnt [2]),
    .O(\my_clkdiv/Mcount_cnt_cy<2>_rt_131 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<3>_rt  (
    .ADR0(\my_clkdiv/cnt [3]),
    .O(\my_clkdiv/Mcount_cnt_cy<3>_rt_133 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<4>_rt  (
    .ADR0(\my_clkdiv/cnt [4]),
    .O(\my_clkdiv/Mcount_cnt_cy<4>_rt_135 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<5>_rt  (
    .ADR0(\my_clkdiv/cnt [5]),
    .O(\my_clkdiv/Mcount_cnt_cy<5>_rt_137 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<6>_rt  (
    .ADR0(\my_clkdiv/cnt [6]),
    .O(\my_clkdiv/Mcount_cnt_cy<6>_rt_139 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<7>_rt  (
    .ADR0(\my_clkdiv/cnt [7]),
    .O(\my_clkdiv/Mcount_cnt_cy<7>_rt_141 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<8>_rt  (
    .ADR0(\my_clkdiv/cnt [8]),
    .O(\my_clkdiv/Mcount_cnt_cy<8>_rt_143 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<9>_rt  (
    .ADR0(\my_clkdiv/cnt [9]),
    .O(\my_clkdiv/Mcount_cnt_cy<9>_rt_145 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<10>_rt  (
    .ADR0(\my_clkdiv/cnt [10]),
    .O(\my_clkdiv/Mcount_cnt_cy<10>_rt_115 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<11>_rt  (
    .ADR0(\my_clkdiv/cnt [11]),
    .O(\my_clkdiv/Mcount_cnt_cy<11>_rt_117 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<12>_rt  (
    .ADR0(\my_clkdiv/cnt [12]),
    .O(\my_clkdiv/Mcount_cnt_cy<12>_rt_119 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<13>_rt  (
    .ADR0(\my_clkdiv/cnt [13]),
    .O(\my_clkdiv/Mcount_cnt_cy<13>_rt_121 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<14>_rt  (
    .ADR0(\my_clkdiv/cnt [14]),
    .O(\my_clkdiv/Mcount_cnt_cy<14>_rt_123 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<15>_rt  (
    .ADR0(\my_clkdiv/cnt [15]),
    .O(\my_clkdiv/Mcount_cnt_cy<15>_rt_125 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_cy<16>_rt  (
    .ADR0(\my_clkdiv/cnt [16]),
    .O(\my_clkdiv/Mcount_cnt_cy<16>_rt_127 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \my_clkdiv/Mcount_cnt_xor<17>_rt  (
    .ADR0(\my_clkdiv/cnt [17]),
    .O(\my_clkdiv/Mcount_cnt_xor<17>_rt_165 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \my_bcd_2dec/bcd0_and0003_SW0_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [3]),
    .ADR1(\my_bcd_2dec/bcd1 [2]),
    .O(N40)
  );
  X_LUT3 #(
    .INIT ( 8'hD4 ))
  \my_bcd_2dec/Maddsub_bcd1_share0000_cy<1>11  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(\my_bcd_2dec/bcd1 [0]),
    .O(\my_bcd_2dec/Maddsub_bcd1_share0000_cy [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0901 ))
  \my_bcd_2dec/bcd1_not000124  (
    .ADR0(\my_bcd_2dec/bcd0 [0]),
    .ADR1(\my_ose_decoder_fsm/up_337 ),
    .ADR2(N46),
    .ADR3(\my_bcd_2dec/bcd0_cmp_eq0001 ),
    .O(\my_bcd_2dec/bcd1_not000124_112 )
  );
  X_LUT4 #(
    .INIT ( 16'h1110 ))
  \my_bcd_2dec/bcd1_mux0000<3>24  (
    .ADR0(\my_master_fsm/countEn_283 ),
    .ADR1(\my_ose_decoder_fsm/cnten_313 ),
    .ADR2(\my_bcd_2dec/bcd1_mux0000<3>14_109 ),
    .ADR3(\my_bcd_2dec/bcd1_mux0000<3>2_110 ),
    .O(\my_bcd_2dec/bcd1_mux0000 [3])
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \my_bcd_2dec/bcd1_mux0000<0>1_SW0_SW0_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [2]),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(\my_bcd_2dec/bcd1 [0]),
    .O(N50)
  );
  X_LUT3 #(
    .INIT ( 8'h04 ))
  \my_bcd_2dec/bcd1_mux0000<3>14  (
    .ADR0(\my_bcd_2dec/bcd1 [0]),
    .ADR1(N70),
    .ADR2(\my_ose_decoder_fsm/up_337 ),
    .O(\my_bcd_2dec/bcd1_mux0000<3>14_109 )
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \my_bcd_2dec/bcd1_mux0000<2>21  (
    .ADR0(\my_bcd_2dec/bcd1 [0]),
    .ADR1(\my_bcd_2dec/bcd1 [1]),
    .ADR2(\my_ose_decoder_fsm/up_337 ),
    .O(\my_bcd_2dec/bcd1_mux0000<2>21_107 )
  );
  X_LUT3 #(
    .INIT ( 8'hA2 ))
  \my_master_fsm/Mmux_ust_mux0000_91  (
    .ADR0(\my_ose_decoder_fsm/dirch_314 ),
    .ADR1(eq),
    .ADR2(\my_master_fsm/outSt [0]),
    .O(\my_master_fsm/Mmux_ust_mux0000_91_278 )
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<3>21_SW0  (
    .ADR0(\my_lcd_driver/N5 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR2(\my_bcd_2dec/bcd1 [3]),
    .ADR3(\my_bcd_2dec/bcd0 [3]),
    .O(N52)
  );
  X_LUT4 #(
    .INIT ( 16'hBAFF ))
  \my_lcd_driver/my_LCD_dp/data2_mux8/out<3>21  (
    .ADR0(N52),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/data_sel_232 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .O(DB_3_OBUF_14)
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  \my_bcd_2dec/bcd0_not00011  (
    .ADR0(\my_ose_decoder_fsm/cnten_313 ),
    .ADR1(\my_master_fsm/countEn_283 ),
    .ADR2(\my_master_fsm/blank_281 ),
    .O(\my_bcd_2dec/bcd0_not0001 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(N60),
    .O(\my_bcd_2dec/bcd0_share0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8AAA ))
  \my_master_fsm/ust_mux0002<0>1  (
    .ADR0(\my_ose_decoder_fsm/dirch_314 ),
    .ADR1(\my_bcd_2dec/bcd1 [3]),
    .ADR2(\my_dig_compare/Mmux_eq299_202 ),
    .ADR3(\my_dig_compare/Mmux_eq255_201 ),
    .O(\my_master_fsm/ust_mux0002 [0])
  );
  X_LUT3 #(
    .INIT ( 8'h9D ))
  \my_master_fsm/Mmux_ust_mux0000_9  (
    .ADR0(\my_master_fsm/outSt [0]),
    .ADR1(\my_ose_decoder_fsm/dirch_314 ),
    .ADR2(eq),
    .O(\my_master_fsm/Mmux_ust_mux0000_9_277 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \my_master_fsm/Mmux_ust_mux0000_101  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_master_fsm/outSt [0]),
    .ADR2(\my_ose_decoder_fsm/cnten_313 ),
    .O(\my_master_fsm/Mmux_ust_mux0000_101_268 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \my_master_fsm/Mmux_ust_mux0000_7  (
    .ADR0(\my_ose_decoder_fsm/dirch_314 ),
    .ADR1(eq),
    .ADR2(\my_master_fsm/outSt [0]),
    .ADR3(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/Mmux_ust_mux0000_7_273 )
  );
  X_LUT3 #(
    .INIT ( 8'hBF ))
  \my_master_fsm/Mmux_ust_mux0000_71  (
    .ADR0(eq),
    .ADR1(\my_ose_decoder_fsm/dirch_314 ),
    .ADR2(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/Mmux_ust_mux0000_71_274 )
  );
  X_LUT4 #(
    .INIT ( 16'hABAA ))
  \my_bcd_2dec/bcd1_not000163  (
    .ADR0(\my_master_fsm/blank_281 ),
    .ADR1(\my_master_fsm/countEn_283 ),
    .ADR2(\my_ose_decoder_fsm/cnten_313 ),
    .ADR3(N62),
    .O(\my_bcd_2dec/bcd1_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h022A ))
  \my_bcd_2dec/bcd0_mux0000<3>  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(\my_bcd_2dec/bcd0 [0]),
    .ADR2(\my_ose_decoder_fsm/up_337 ),
    .ADR3(N56),
    .O(\my_bcd_2dec/bcd0_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8898 ))
  \my_master_fsm/Mmux_ust_mux0000_6  (
    .ADR0(\my_master_fsm/outSt [0]),
    .ADR1(\my_master_fsm/outSt [1]),
    .ADR2(\my_ose_decoder_fsm/dirch_314 ),
    .ADR3(eq),
    .O(\my_master_fsm/Mmux_ust_mux0000_6_271 )
  );
  X_LUT4 #(
    .INIT ( 16'h444E ))
  \my_master_fsm/Mmux_ust_mux0000_10  (
    .ADR0(\my_master_fsm/outSt [0]),
    .ADR1(open_IBUF_340),
    .ADR2(\my_ose_decoder_fsm/cnten_313 ),
    .ADR3(\my_ose_decoder_fsm/up_337 ),
    .O(\my_master_fsm/Mmux_ust_mux0000_10_267 )
  );
  X_LUT4 #(
    .INIT ( 16'h2800 ))
  \my_bcd_2dec/bcd1_mux0000<1>1  (
    .ADR0(\my_bcd_2dec/bcd0_and0000 ),
    .ADR1(\my_bcd_2dec/bcd1 [2]),
    .ADR2(N64),
    .ADR3(\my_bcd_2dec/N01 ),
    .O(\my_bcd_2dec/bcd1_mux0000 [1])
  );
  X_CKBUF   \my_clkdiv/clk_slow_BUFG  (
    .I(\my_clkdiv/clk_slow1 ),
    .O(\my_clkdiv/clk_slow_166 )
  );
  X_INV   \my_clkdiv/Mcount_cnt_lut<0>_INV_0  (
    .I(\my_clkdiv/cnt [0]),
    .O(\my_clkdiv/Mcount_cnt_lut [0])
  );
  X_INV   \my_ose_decoder_fsm/rst_inv1_INV_0  (
    .I(reset_IBUF_346),
    .O(\my_ose_decoder_fsm/rst_inv )
  );
  X_INV   \my_lcd_driver/DB<7>1_INV_0  (
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/DB_sel_230 ),
    .O(DB_6_OBUF_16)
  );
  X_INV   \my_ose_decoder_fsm/st_FSM_Out51_INV_0  (
    .I(\my_ose_decoder_fsm/st_FSM_FFd5_327 ),
    .O(\my_ose_decoder_fsm/_mux0001 )
  );
  X_INV   \my_clkdiv/clk_slow_not00011_INV_0  (
    .I(\my_clkdiv/clk_slow1 ),
    .O(\my_clkdiv/clk_slow_not0001 )
  );
  X_INV   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux000011_INV_0  (
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/wr_enable_mux00001 )
  );
  X_MUX2   \my_master_fsm/outSt<3>29  (
    .IA(N66),
    .IB(N67),
    .SEL(\my_master_fsm/outSt [1]),
    .O(\my_master_fsm/outSt<3>29_288 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \my_master_fsm/outSt<3>29_F  (
    .ADR0(eq),
    .ADR1(\my_master_fsm/outSt [2]),
    .ADR2(open_IBUF_340),
    .ADR3(\my_master_fsm/outSt [0]),
    .O(N66)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \my_master_fsm/outSt<3>29_G  (
    .ADR0(lock_IBUF_74),
    .ADR1(\my_master_fsm/outSt [2]),
    .ADR2(doorCls_IBUF_71),
    .ADR3(\my_master_fsm/outSt [0]),
    .O(N67)
  );
  X_MUX2   \my_bcd_2dec/bcd1_mux0000<0>1  (
    .IA(N68),
    .IB(N69),
    .SEL(\my_ose_decoder_fsm/up_337 ),
    .O(\my_bcd_2dec/N01 )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \my_bcd_2dec/bcd1_mux0000<0>1_F  (
    .ADR0(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .ADR1(N50),
    .ADR2(\my_bcd_2dec/bcd1 [3]),
    .O(N68)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \my_bcd_2dec/bcd1_mux0000<0>1_G  (
    .ADR0(\my_bcd_2dec/bcd0 [0]),
    .ADR1(\my_bcd_2dec/bcd0 [3]),
    .ADR2(\my_bcd_2dec/bcd0 [1]),
    .ADR3(\my_bcd_2dec/bcd0 [2]),
    .O(N69)
  );
  X_LUT4 #(
    .INIT ( 16'h287D ))
  \my_master_fsm/outSt<3>11  (
    .ADR0(\my_master_fsm/outSt [2]),
    .ADR1(\my_master_fsm/outSt [0]),
    .ADR2(\my_master_fsm/outSt [1]),
    .ADR3(\my_master_fsm/Mmux_ust_mux0000_8_f51 ),
    .O(\my_master_fsm/outSt<3>1 )
  );
  X_MUX2   \my_master_fsm/outSt<3>1_f5  (
    .IA(\my_master_fsm/outSt<3>1 ),
    .IB(N0),
    .SEL(\my_master_fsm/outSt [3]),
    .O(\my_master_fsm/ust_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \my_dig_compare/Mmux_eq2501  (
    .ADR0(\my_bcd_2dec/bcd1 [0]),
    .ADR1(\my_master_fsm/sel [0]),
    .ADR2(\my_bcd_2dec/bcd0 [2]),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(\my_dig_compare/Mmux_eq2501_199 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \my_dig_compare/Mmux_eq2502  (
    .ADR0(\my_master_fsm/sel [0]),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_bcd_2dec/bcd0 [2]),
    .ADR3(\my_bcd_2dec/bcd0 [0]),
    .O(\my_dig_compare/Mmux_eq2502_200 )
  );
  X_MUX2   \my_dig_compare/Mmux_eq250_f5  (
    .IA(\my_dig_compare/Mmux_eq2502_200 ),
    .IB(\my_dig_compare/Mmux_eq2501_199 ),
    .SEL(\my_master_fsm/sel [1]),
    .O(\my_dig_compare/Mmux_eq250 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ))
  \my_ose_decoder_fsm/dirch_mux00001  (
    .ADR0(\my_ose_decoder_fsm/st_FSM_FFd5_327 ),
    .ADR1(\my_ose_decoder_fsm/tmpDirch_335 ),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd4_325 ),
    .ADR3(\my_ose_decoder_fsm/st_FSM_FFd6_329 ),
    .O(\my_ose_decoder_fsm/dirch_mux00001_316 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ))
  \my_ose_decoder_fsm/dirch_mux00002  (
    .ADR0(\my_ose_decoder_fsm/st_FSM_FFd5_327 ),
    .ADR1(\my_ose_decoder_fsm/tmpDirch_335 ),
    .ADR2(\my_ose_decoder_fsm/st_FSM_FFd4_325 ),
    .ADR3(\my_ose_decoder_fsm/st_FSM_FFd2_321 ),
    .O(\my_ose_decoder_fsm/dirch_mux00002_317 )
  );
  X_MUX2   \my_ose_decoder_fsm/dirch_mux0000_f5  (
    .IA(\my_ose_decoder_fsm/dirch_mux00002_317 ),
    .IB(\my_ose_decoder_fsm/dirch_mux00001_316 ),
    .SEL(b_IBUF_67),
    .O(\my_ose_decoder_fsm/dirch_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00001  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_242 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/lcd_finish_213 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00001_244 )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00002  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_242 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/st [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/st [4]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00002_245 )
  );
  X_MUX2   \my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000_f5  (
    .IA(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00002_245 ),
    .IB(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux00001_244 ),
    .SEL(\my_lcd_driver/my_LCD_controller/my_main_controller/st [5]),
    .O(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>1_221 )
  );
  X_LUT4 #(
    .INIT ( 16'hABA8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>2  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>2_222 )
  );
  X_MUX2   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>_f5  (
    .IA(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>2_222 ),
    .IB(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<1>1_221 ),
    .SEL(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hAA8A ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>1_211 )
  );
  X_LUT4 #(
    .INIT ( 16'hDC8C ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>2  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>2_212 )
  );
  X_MUX2   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>_f5  (
    .IA(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>2_212 ),
    .IB(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<1>1_211 ),
    .SEL(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h7564 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In2  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_239 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_226 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFD8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In3  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/N01 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_enable_239 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In2_227 )
  );
  X_MUX2   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In_f5  (
    .IA(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In2_227 ),
    .IB(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_226 ),
    .SEL(\my_lcd_driver/my_LCD_controller/my_write_cycle/wr_finish_263 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In )
  );
  X_LUT4 #(
    .INIT ( 16'hA9A8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>1_218 )
  );
  X_LUT4 #(
    .INIT ( 16'hABA8 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>2  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>2_219 )
  );
  X_MUX2   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>_f5  (
    .IA(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>2_219 ),
    .IB(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000<0>1_218 ),
    .SEL(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/mux_sel_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hA6A2 ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>1  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [1]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>1_208 )
  );
  X_LUT4 #(
    .INIT ( 16'hDC8C ))
  \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>2  (
    .ADR0(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2_224 ),
    .ADR1(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel [0]),
    .ADR2(\my_lcd_driver/my_LCD_controller/my_main_controller/mode_240 ),
    .ADR3(\my_lcd_driver/my_LCD_controller/my_main_controller/lcd_cnt [0]),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>2_209 )
  );
  X_MUX2   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>_f5  (
    .IA(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>2_209 ),
    .IB(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000<0>1_208 ),
    .SEL(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd1_223 ),
    .O(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/init_sel_mux0000 [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_3_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [3]),
    .O(\my_master_fsm/outSt_3_1_296 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_2_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [2]),
    .O(\my_master_fsm/outSt_2_1_294 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_1_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [1]),
    .O(\my_master_fsm/outSt_1_1_292 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \my_master_fsm/outSt_0_1  (
    .CLK(\my_clkdiv/clk_slow_166 ),
    .RST(reset_IBUF_346),
    .I(\my_master_fsm/ust [0]),
    .O(\my_master_fsm/outSt_0_1_290 ),
    .CE(VCC),
    .SET(GND)
  );
  X_BUF   \my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0/LUT2_L_BUF  (
    .I(\my_lcd_driver/my_LCD_controller/my_lcd_init_refresh/st_FSM_FFd2-In1_SW0/O ),
    .O(N18)
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
    .O(N70)
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
  X_BUF   \my_bcd_2dec/bcd0_mux0000<1>11/LUT4_D_BUF  (
    .I(\my_bcd_2dec/N11 ),
    .O(N71)
  );
  X_LUT4 #(
    .INIT ( 16'h3705 ))
  \my_bcd_2dec/bcd0_mux0000<1>11  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR2(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .ADR3(\my_bcd_2dec/N111 ),
    .O(\my_bcd_2dec/N11 )
  );
  X_BUF   \my_bcd_2dec/bcd0_cmp_eq000011/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd0_cmp_eq000011/O ),
    .O(\my_bcd_2dec/N9 )
  );
  X_LUT3 #(
    .INIT ( 8'h04 ))
  \my_bcd_2dec/bcd0_cmp_eq000011  (
    .ADR0(\my_bcd_2dec/bcd0 [1]),
    .ADR1(\my_bcd_2dec/bcd0 [0]),
    .ADR2(\my_bcd_2dec/bcd0 [2]),
    .O(\my_bcd_2dec/bcd0_cmp_eq000011/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<2>10/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<2>10/O ),
    .O(\my_bcd_2dec/bcd1_mux0000<2>10_105 )
  );
  X_LUT4 #(
    .INIT ( 16'hDC50 ))
  \my_bcd_2dec/bcd1_mux0000<2>10  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR2(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .ADR3(\my_bcd_2dec/N111 ),
    .O(\my_bcd_2dec/bcd1_mux0000<2>10/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<0>_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<0>_SW0/O ),
    .O(N35)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \my_bcd_2dec/bcd0_mux0000<0>_SW0  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .ADR2(\my_bcd_2dec/bcd0_and0003_88 ),
    .O(\my_bcd_2dec/bcd0_mux0000<0>_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_and0003/LUT4_D_BUF  (
    .I(\my_bcd_2dec/bcd0_and0003_88 ),
    .O(N72)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \my_bcd_2dec/bcd0_and0003  (
    .ADR0(\my_bcd_2dec/bcd1 [1]),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(N40),
    .ADR3(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .O(\my_bcd_2dec/bcd0_and0003_88 )
  );
  X_BUF   \my_bcd_2dec/Maddsub_bcd0_share0000_cy<1>11/LUT3_L_BUF  (
    .I(\my_bcd_2dec/Maddsub_bcd0_share0000_cy<1>11/O ),
    .O(\my_bcd_2dec/Maddsub_bcd0_share0000_cy [1])
  );
  X_LUT3 #(
    .INIT ( 8'hD4 ))
  \my_bcd_2dec/Maddsub_bcd0_share0000_cy<1>11  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_bcd_2dec/bcd0 [1]),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .O(\my_bcd_2dec/Maddsub_bcd0_share0000_cy<1>11/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_not000124_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd1_not000124_SW0/O ),
    .O(N46)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \my_bcd_2dec/bcd1_not000124_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [3]),
    .ADR1(\my_bcd_2dec/bcd0 [2]),
    .ADR2(\my_bcd_2dec/bcd0 [1]),
    .O(\my_bcd_2dec/bcd1_not000124_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_cmp_eq00021/LUT4_D_BUF  (
    .I(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .O(N73)
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
  X_BUF   \my_bcd_2dec/bcd1_mux0000<3>2/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<3>2/O ),
    .O(\my_bcd_2dec/bcd1_mux0000<3>2_110 )
  );
  X_LUT4 #(
    .INIT ( 16'h2800 ))
  \my_bcd_2dec/bcd1_mux0000<3>2  (
    .ADR0(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_ose_decoder_fsm/up_337 ),
    .ADR3(\my_bcd_2dec/N111 ),
    .O(\my_bcd_2dec/bcd1_mux0000<3>2/O )
  );
  X_BUF   \my_bcd_2dec/bcd0_mux0000<3>_SW2/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd0_mux0000<3>_SW2/O ),
    .O(N56)
  );
  X_LUT4 #(
    .INIT ( 16'h8ACF ))
  \my_bcd_2dec/bcd0_mux0000<3>_SW2  (
    .ADR0(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR1(\my_ose_decoder_fsm/up_337 ),
    .ADR2(\my_bcd_2dec/bcd0_cmp_eq0003 ),
    .ADR3(\my_bcd_2dec/N111 ),
    .O(\my_bcd_2dec/bcd0_mux0000<3>_SW2/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<0>_SW0/LUT4_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<0>_SW0/O ),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'h9A59 ))
  \my_bcd_2dec/bcd1_mux0000<0>_SW0  (
    .ADR0(\my_bcd_2dec/bcd1 [3]),
    .ADR1(\my_bcd_2dec/bcd1 [2]),
    .ADR2(\my_ose_decoder_fsm/up_337 ),
    .ADR3(\my_bcd_2dec/Maddsub_bcd1_share0000_cy [1]),
    .O(\my_bcd_2dec/bcd1_mux0000<0>_SW0/O )
  );
  X_BUF   \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/LUT4_L_BUF  (
    .I(\my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/O ),
    .O(N60)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFE ))
  \my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0  (
    .ADR0(\my_bcd_2dec/bcd0 [1]),
    .ADR1(\my_bcd_2dec/bcd0 [2]),
    .ADR2(\my_bcd_2dec/bcd0 [0]),
    .ADR3(\my_ose_decoder_fsm/up_337 ),
    .O(\my_bcd_2dec/Maddsub_bcd0_share0000_xor<3>11_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_not000163_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd1_not000163_SW0/O ),
    .O(N62)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \my_bcd_2dec/bcd1_not000163_SW0  (
    .ADR0(\my_bcd_2dec/bcd0_cmp_eq0002 ),
    .ADR1(\my_ose_decoder_fsm/up_337 ),
    .ADR2(\my_bcd_2dec/bcd1_not000124_112 ),
    .O(\my_bcd_2dec/bcd1_not000163_SW0/O )
  );
  X_BUF   \my_bcd_2dec/bcd1_mux0000<1>1_SW0/LUT3_L_BUF  (
    .I(\my_bcd_2dec/bcd1_mux0000<1>1_SW0/O ),
    .O(N64)
  );
  X_LUT3 #(
    .INIT ( 8'h81 ))
  \my_bcd_2dec/bcd1_mux0000<1>1_SW0  (
    .ADR0(\my_ose_decoder_fsm/up_337 ),
    .ADR1(\my_bcd_2dec/bcd1 [0]),
    .ADR2(\my_bcd_2dec/bcd1 [1]),
    .O(\my_bcd_2dec/bcd1_mux0000<1>1_SW0/O )
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
  E_360 (
    .PAD(E)
  );
  X_OPAD #(
    .LOC ( "Y14" ))
  RS_361 (
    .PAD(RS)
  );
  X_OPAD #(
    .LOC ( "W13" ))
  RW_362 (
    .PAD(RW)
  );
  X_IPAD #(
    .LOC ( "T13" ))
  a_363 (
    .PAD(NlwRenamedSig_IO_a)
  );
  X_OPAD #(
    .LOC ( "R20" ))
  actuateLock_364 (
    .PAD(actuateLock)
  );
  X_IPAD #(
    .LOC ( "R14" ))
  b_365 (
    .PAD(NlwRenamedSig_IO_b)
  );
  X_IPAD #(
    .LOC ( "E12" ))
  clk_366 (
    .PAD(clk)
  );
  X_IPAD #(
    .LOC ( "V8" ))
  doorCls_367 (
    .PAD(doorCls)
  );
  X_IPAD #(
    .LOC ( "T16" ))
  lock_368 (
    .PAD(NlwRenamedSig_IO_lock)
  );
  X_IPAD #(
    .LOC ( "T14" ))
  open_369 (
    .PAD(NlwRenamedSig_IO_open)
  );
  X_OPAD #(
    .LOC ( "T19" ))
  openCls_370 (
    .PAD(openCls)
  );
  X_OPAD #(
    .LOC ( "W21" ))
  \outSt<0>  (
    .PAD(outSt[0])
  );
  X_OPAD   \outSt<1>  (
    .PAD(outSt[1])
  );
  X_OPAD   \outSt<2>  (
    .PAD(outSt[2])
  );
  X_OPAD   \outSt<3>  (
    .PAD(outSt[3])
  );
  X_IPAD #(
    .LOC ( "R13" ))
  reset_375 (
    .PAD(NlwRenamedSig_IO_reset)
  );
  X_PU   a_PULLUP (
    .O(NlwRenamedSig_IO_a)
  );
  X_PU   b_PULLUP (
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
    .I(\my_lcd_driver/my_LCD_controller/my_write_cycle/E_out_257 ),
    .O(E)
  );
  X_OBUF   RS_OBUF (
    .I(\my_lcd_driver/my_LCD_controller/my_main_controller/reg_sel_242 ),
    .O(RS)
  );
  X_OBUF   RW_OBUF (
    .I(N0),
    .O(RW)
  );
  X_OBUF   actuateLock_OBUF (
    .I(\my_master_fsm/actuateLock_279 ),
    .O(actuateLock)
  );
  X_OBUF   openCls_OBUF (
    .I(\my_master_fsm/openCls_285 ),
    .O(openCls)
  );
  X_OBUF   outSt_0_OBUF (
    .I(\my_master_fsm/outSt_0_1_290 ),
    .O(outSt[0])
  );
  X_OBUF   outSt_1_OBUF (
    .I(\my_master_fsm/outSt_1_1_292 ),
    .O(outSt[1])
  );
  X_OBUF   outSt_2_OBUF (
    .I(\my_master_fsm/outSt_2_1_294 ),
    .O(outSt[2])
  );
  X_OBUF   outSt_3_OBUF (
    .I(\my_master_fsm/outSt_3_1_296 ),
    .O(outSt[3])
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_top_VCC (
    .O(VCC)
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

