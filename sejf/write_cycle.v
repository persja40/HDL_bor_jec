`timescale 1ns / 1ps

module write_cycle(
    input wr_enable,
    input reg_sel,
    input reset,
    input clk_1ms,
    output reg wr_finish,
    output reg E_out,
    output RW_out,
    output RS_out
    );

reg [1:0] st, ust;
localparam idle=2'b00, init=2'b01, Eout=2'b10, endwr=2'b11;

always@(posedge clk_1ms, posedge reset)
	if(reset)
		st<=idle;
	else
		st<=ust;

always@(posedge clk_1ms, posedge reset)
	if(reset)
		wr_finish <= 0;
	else case(st)
		endwr: wr_finish <= 1;
		default: wr_finish <= 0;
	endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		E_out <= 0;
	else case(st)
		init: E_out <= 1;
		endwr: E_out <= 0;
		default: E_out <= 0;
	endcase

always @*
begin
	case (st)
		idle: ust = wr_enable ? init : idle;
		init: ust = Eout;
		Eout: ust  = endwr;
		endwr: ust = idle;
	endcase
end

assign RS_out = reg_sel;
assign RW_out = 0;

endmodule
