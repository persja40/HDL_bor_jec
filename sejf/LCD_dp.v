`timescale 1ns / 1ps

module LCD_dp(
    input [3:0] count0,
    input [3:0] count1,
    input [3:0] count2,
    input [3:0] count3,
    input [1:0] init_sel,
    input [1:0] mux_sel,
    input data_sel,
    input DB_sel,
    output [7:0] DB_out
    );
	
	wire [5:0] init_reset_mux;
	wire [3:0] counter_mux;
	wire [7:0] data_out;
	
	mux6 mymux6 (
		.init_sel(init_sel), 
		.init_reset_mux(init_reset_mux)
	);
	
	mux4 mymux4 (
		.count0(count0), 
		.count1(count1), 
		.count2(count2), 
		.count3(count3), 
		.mux_sel(mux_sel), 
		.counter_mux(counter_mux)
	);
	
	mux8 data_mux8 (
		.in1({2'b00, init_reset_mux}),
		.in2({4'b0011, counter_mux}),
		.sel(data_sel), 
		.out(data_out)
	);
	
	mux8 data2_mux8 (
		.in1(8'hCC),
		.in2(data_out),
		.sel(DB_sel), 
		.out(DB_out)
	);
	
endmodule
