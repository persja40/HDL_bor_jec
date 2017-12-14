`timescale 1ns / 1ps

module fake_decoder(
    input leftButton,
    input rightButton,
    input clk,
    input rst,
    output reg cnten,
    output reg up,
    output reg dirch
    );

reg [2:0] st, ust;
localparam left=3'b000, right=3'b001,
           nowLeft=3'b010, nowRight=3'b011,
			  nowLeftChanged=3'b100, nowRightChanged=3'b101;

always @(posedge clk, posedge rst)
begin
	if(rst)
		st<=left;
	else
		st<=ust;
end

always @(posedge clk, posedge rst)
begin
	if(rst)
		up <= 1;
	else case(st)
		nowRightChanged: up <= 1;
		nowRight: up <= 1;
		nowLeftChanged: up <= 0;
		nowLeft: up <= 0;
		default: up <= 1;
	endcase
end

always @(posedge clk, posedge rst)
begin
	if(rst)
		dirch <= 0;
	else case(st)
		nowRightChanged: dirch <= 1;
		nowRight: dirch <= 0;
		nowLeftChanged: dirch <= 1;
		nowLeft: dirch <= 0;
		default: dirch <= 0;
	endcase
end

always @(posedge clk, posedge rst)
begin
	if(rst)
		cnten <= 1;
	else case(st)
		nowRightChanged: cnten <= 0;
		nowRight: cnten <= 0;
		nowLeftChanged: cnten <= 0;
		nowLeft: cnten <= 0;
		default: cnten <= 1;
	endcase
end

always @*
begin
	case (st)
		left:
			if (leftButton)
				ust <= nowLeft;
			else
				if (rightButton)
					ust <= nowRightChanged;
				else
					ust <= left;
		nowLeft:
			ust <= left;
		right:
			if (rightButton)
				ust <= nowRight;
			else
				if (leftButton)
					ust <= nowLeftChanged;
				else
					ust <= right;
		nowRight:
			ust <= right;
		nowRightChanged:
			ust <= right;
		nowLeftChanged:
			ust <= left;
		default:
			ust <= left;
	endcase
end

endmodule
