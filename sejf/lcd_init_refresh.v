`timescale 1ns / 1ps

module lcd_init_refresh(
    input wr_finish,
    input clk_1ms,
    input reset,
    input mode,
    input [1:0] lcd_cnt,
    input lcd_enable,
    output reg wr_enable,
    output reg [1:0] mux_sel,
    output reg [1:0] init_sel,
    output reg lcd_finish
    );

reg [1:0] st, ust;
localparam idle=2'b00, data=2'b01, data1=2'b10, endlcd=2'b11;

always@(posedge clk_1ms, posedge reset)
	if(reset)
		st<=idle;
	else
		st<=ust;

always@(posedge clk_1ms, posedge reset)
	if(reset)
		init_sel <= 2'b0;
	else case(st)
		idle: 
			if(mode) init_sel <= lcd_cnt;
		endlcd: 
			if (mode && init_sel)
				init_sel <= init_sel - 1;
	endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		mux_sel <= 2'b0;
	else case(st)
		idle: 
			if(!mode) 
				mux_sel <= lcd_cnt;
		endlcd:
			if (!mode && mux_sel)
				mux_sel <= mux_sel - 1;
	endcase
	
always@(posedge clk_1ms, posedge reset)
	if(reset)
		wr_enable <= 0;
	else case(st)
		data: 
			wr_enable <= 1;
		data1: 
			wr_enable <= 0;
	endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		lcd_finish <= 0;
	else case(st)
		idle: 
			lcd_finish <= 0;
		endlcd: 
			if( (mode && !init_sel)||(!mode && !mux_sel))
				lcd_finish <= 1;
	endcase

always @*
begin
	case (st)
		idle:
			if (lcd_enable)
				ust = data;
			else
				ust = idle;
		data:
			ust = data1;
		data1: 
			if (wr_finish)
				ust = endlcd;
			else
				ust = data1;
		endlcd: 
				if (mode)
					if (init_sel != 2'b00)
						ust = data;
					else
						ust = idle;
				else
					if (mux_sel != 2'b00)
						ust = data;
					else
						ust = idle;
	endcase
end

endmodule
