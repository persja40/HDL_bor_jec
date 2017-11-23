`timescale 1ns / 1ps

module ose_decoder_fsm(
    input a,
    input b,
    input clk,
    input rst,
    output reg cnten,
    output reg up,
    output reg dirch
    );

reg [1:0] st, ust;
localparam cw0=3'b000, cw1=3'b001,
           cwpe=3'b010, cwcnt=3'b011,
			  ccwcnt=3'b100, ccwpe=3'b101,
			  ccw1=3'b110, ccw0=3'b111;

always@(posedge clk, posedge rst)
begin
	if(rst)
		st<=cw0;
	else
		st<=ust;
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		dirch <= 0;
	else case(st)
		cwpe: if(b) dirch <= 1;
		ccwpe: if (!b) dirch <= 1;
		default: dirch <= 0;
	endcase
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		cnten <= 1;
	else case(st)
		cwcnt: cnten <= 0;
		ccwcnt: cnten <= 0;
		default: cnten <= 1;
	endcase
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		up <= 1;
	else case(st)
		cwcnt: up <= 0;
		ccwcnt: up <= 1;
		default: up <= 1;
	endcase
end

always @*
begin
	case (st)
		cw0:
			if (~a)
				ust = cw1;
		cw1:
			if (a)
				ust = cwpe;
		cwpe:
			if (~b)
				ust = cwcnt;
			else
				ust = ccwcnt;
		cwcnt:
			ust = cw0;
		ccwcnt:
			ust = ccw0;
		ccwpe:
			if(b)
				ust = ccwcnt;
			else
				ust = cwcnt;
		ccw1:
			if(a)
				ust= ccwpe;
		ccw0:
			if(~a)
				ust= ccw1;
	endcase
end

endmodule
