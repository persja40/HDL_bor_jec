`timescale 1ns / 1ps

module top(
	 input reset,
    input clk_1ms,
    output E,
    output RW,
    output RS,
    output [7:0] DB
    );

	lcd_driver my_lcd_driver (
		 .reset(reset),
		 .clk_1ms(clk_1ms),
       .E(E),
       .RW(RW),
       .RS(RS),
       .DB(DB)
	);
	
endmodule
