`timescale 1ns / 1ps

module mux4(
    input [3:0] count0,
    input [3:0] count1,
    input [3:0] count2,
    input [3:0] count3,
    input [1:0] mux_sel,
	output [3:0] counter_mux
    );
	
assign counter_mux = mux_sel[0]?(mux_sel[1]?count3:count1):(mux_sel[1]?count2:count0);

endmodule
