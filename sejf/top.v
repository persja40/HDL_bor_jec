`timescale 1ns / 1ps

module top # ( parameter div = 50000 ) (
	 input reset,
    input clk,

	 // sejf
	 input a,
	 input b,
	 input lock,
	 input open,
	 input doorCls,
	 output actuateLock,
	 output openCls,
	 
	 // wyswietlacz
    output E,
    output RW,
    output RS,
    output [7:0] DB,
	 
	 // ledy
	 output outDirch,
	 output outUp,
	 output outCnten
    );
	 
	wire clk_1ms;
	wire [3:0] bcd0;
	wire [3:0] bcd1;
	wire blank;
	wire [1:0] sel;
	wire dirch;
	wire up;
	wire cnten;
	
	assign outDirch = dirch;
	assign outUp = up;
	assign outCnten = cnten;
	
	/*
	ose_decoder_fsm my_ose_decoder_fsm (
		 .a(a),
		 .b(b),
       .clk(clk_1ms),
		 .rst(reset),
		 .cnten(cnten),
		 .up(up),
		 .dirch(dirch)
	);
	*/
	
	fake_decoder my_fake_decoder (
		 .leftButton(a),
		 .rightButton(b),
       .clk(clk_1ms),
		 .rst(reset),
		 .cnten(cnten),
		 .up(up),
		 .dirch(dirch)
	);
		
		
	bcd_2dec my_bcd_2dec (
		 .rst(reset),
		 .clk(clk_1ms),
		 .clrCount(clrCount),
		 .up(up),
		 .cnten1(cnten),
		 .cnten2(countEn),
		 .bcd0(bcd0),
		 .bcd1(bcd1)
	);
	
	dig_compare my_dig_compare (
		 .bcd0(bcd0),
		 .bcd1(bcd1),
		 .sel(sel),
		 .eq(eq)
	);
	
	master_fsm my_master_fsm (
		 .clk(clk_1ms),
		 .rst(reset),
		 .cnten(cnten),
		 .up(up),
		 .dirch(dirch),
		 .doorCls(doorCls),
		 .lock(lock),
		 .open(open),
		 .eq(eq),
		 .countEn(countEn),
		 .actuateLock(actuateLock),
		 .openCls(openCls),
		 .sel(sel),
		 .blank(blank),
		 .clrCount(clrCount)
	);
	
	lcd_driver my_lcd_driver (
		 .reset(reset),
		 .clk_1ms(clk_1ms),
		 .blank(blank),
       .E(E),
       .RW(RW),
       .RS(RS),
       .DB(DB),
		 .data({bcd1, bcd0})
	);
	
	clkdiv #( .div(div) )  my_clkdiv (
		 .clk(clk),
		 .rst(reset),
       .clk_slow(clk_1ms)
	);
	
endmodule
