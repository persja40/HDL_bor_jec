`timescale 1ns / 1ps

module tb;

	// Inputs
	reg reset;
	reg clk_1ms;
	reg a;
	reg b;
	reg lock;
	reg open;
	reg doorCls;

	// Outputs
	wire actuateLock;
	wire openCls;
	
	wire E;
	wire RW;
	wire RS;
	wire [7:0] DB;

	// Instantiate the Unit Under Test (UUT)
	top uut #( .div(1) )(
		.reset(reset), 
		.clk(clk_1ms), 
		
		.a(a),
		.b(b),
		.lock(lock),
		.open(open),
		.doorCls(doorCls),
		.actuateLock(actuateLock),
		.openCls(openCls),
		
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
		a = 0;
		b = 0;
		lock = 0;
		open = 0;
		doorCls = 0;
		
		#20 open = 1;
		#20 open = 0;
	end;

	initial begin
		clk_1ms = 1'b0;
		forever #10 clk_1ms = ~clk_1ms;
	end
     initial #2000 $finish; 
endmodule

