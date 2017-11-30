`timescale 1ns / 1ps

module cnt1dek(
    input clk,
    input rst,
    input en,
    output reg ovl,
    output reg[3:0] out
    );

always @(posedge clk, posedge rst)
	if (rst)
		out <= 4'b0;
	else if (en)
		if (out == 4'd9)
			out <= 4'b0;
		else
			out <= out + 1'b1;

always @(posedge clk, posedge rst)
	if (rst)
		ovl <= 1'b0;
	else
		if (out == 4'd9)
			ovl <= 1'b1;
		else
			ovl <= 1'b0;

endmodule
