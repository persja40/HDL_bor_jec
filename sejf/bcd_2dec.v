`timescale 1ns / 1ps

module bcd_2dec(
    input clk,
    input rst,
    input up,
    input cnten1,
    input cnten2,
	 input clrCount,
    output reg [3:0] bcd0,
    output reg [3:0] bcd1
    );

always @(posedge clk, posedge rst)
begin
	if (rst)
		begin
			bcd0 <= 4'd0;
			bcd1 <= 4'd0;
		end
	else
		begin
			if (clrCount)
			begin
				bcd0 <= 4'd0;
				bcd1 <= 4'd0;
			end

			if (cnten1 == 0 && cnten2 == 0)
			begin
				if (up)
					if(bcd0 == 4'd1 && bcd1 == 4'd3)begin 
						bcd0 <= 4'd0;
						bcd1 <= 4'd0;
					end else
						if (bcd0 == 4'd9)begin
							bcd0 <= 4'd0;
							bcd1 <= bcd1 + 4'd1;
						end else
							bcd0 <= bcd0 + 4'd1;
				else 
					if(bcd0 == 4'd0 && bcd1 == 4'd0)begin 
						bcd0 <= 4'd1;
						bcd1 <= 4'd3;
					end else
						if (bcd0 == 4'd0)begin
							bcd0 <= 4'd9;
							bcd1 <= bcd1 - 4'd1;
						end else
							bcd0 <= bcd0 - 4'd1;
			end
		end
end



endmodule
