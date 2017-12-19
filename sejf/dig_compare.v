`timescale 1ns / 1ps

module dig_compare(
    input [3:0] bcd0,
    input [3:0] bcd1,
    input [1:0] sel,
    output reg eq
    );
	 
localparam code0m=2, code0l=5,
			  code1m=3, code1l=0,
			  code2m=2, code2l=5;

always @*
begin
	case(sel)
		2'd0: eq = (bcd0 == code0l && bcd1 == code0m) ? 1 : 0;
		2'd1: eq = (bcd0 == code1l && bcd1 == code1m) ? 1 : 0;
		2'd2: eq = (bcd0 == code2l && bcd1 == code2m) ? 1 : 0;
		default: eq = 0;
	endcase
end

endmodule
