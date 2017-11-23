`timescale 1ns / 1ps

module tb;

	// Inputs
	reg reset;
	reg clk_1ms;

	// Outputs
	wire E;
	wire RW;
	wire RS;
	wire [7:0] DB;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.reset(reset), 
		.clk_1ms(clk_1ms), 
		.E(E), 
		.RW(RW), 
		.RS(RS), 
		.DB(DB)
	);

	initial begin
		reset = 1'b0;
		#2 reset = 1'b1;
      #20 reset = 1'b0;
	end

	initial begin
		clk_1ms = 1'b0;
		forever #10 clk_1ms = ~clk_1ms;
	end
     initial #2000 $finish; 
endmodule

