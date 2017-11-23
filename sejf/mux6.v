`timescale 1ns / 1ps

module mux6(
    input [1:0] init_sel,
	output [5:0] init_reset_mux
    );

localparam count0 = 6'b000001, count1 = 6'b001110, count2 = 6'b000110, count3 = 6'b111000;
assign init_reset_mux = init_sel[0]?(init_sel[1]?count3:count1):(init_sel[1]?count2:count0);

endmodule
