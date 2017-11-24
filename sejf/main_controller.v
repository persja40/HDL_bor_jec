`timescale 1ns / 1ps

module main_controller(
    input reset,
    input clk_1ms,
	 input lcd_finish,
    output reg data_sel,
    output reg DB_sel,
    output reg lcd_enable,
    output reg [1:0] lcd_cnt,
    output reg mode,
    output reg reg_sel
    );

reg [2:0] st, ust;
localparam idle=3'b000, init=3'b001,
			  addr=3'b010, addr1=3'b011,
			  ref=3'b100, ref1=3'b101;

localparam LCD_INIT = 1, LCD_REF = 0,
			  INIT_CONST_NO = 4, REF_DATA_NO = 4;

always@(posedge clk_1ms, posedge reset)
	if(reset)
		st<=idle;
	else
		st<=ust;

always@(posedge clk_1ms, posedge reset)
	if(reset)
		lcd_enable<= 1;
	else
		case(st)
			idle: lcd_enable <= 1;
			init: lcd_enable <= 0;
			addr: lcd_enable <= 1;
			addr1: lcd_enable <= 0;
			ref: lcd_enable <= 1;
			ref1: lcd_enable <= 0;
		endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		lcd_cnt<= INIT_CONST_NO - 1;
	else
		case(st)
			idle: lcd_cnt<= INIT_CONST_NO - 1;
			addr: lcd_cnt<= 0;
			ref: lcd_cnt<=REF_DATA_NO - 1;
	endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		DB_sel<= 1;
	else
		case(st)
			idle: DB_sel<= 1;
			addr: DB_sel<= 0;
			ref: DB_sel<= 1;
		endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		data_sel<= 0;
	else
		case(st)
			idle: data_sel<= 0;
			ref: data_sel<= 1;
		endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		reg_sel<= 0;
	else
		case(st) 
			idle: reg_sel<= 0;
			ref: reg_sel<= 1;
			ref1: 
				if(lcd_finish)
					reg_sel<= 0;
		endcase

always@(posedge clk_1ms, posedge reset)
	if(reset)
		mode<= LCD_INIT;
	else
	case(st)
		idle: mode<= LCD_INIT;
		ref: mode<= LCD_REF;
	endcase

always @*
begin
	case (st)
		idle:
			ust = init;
		init:
			if (lcd_finish)
				ust = addr;
			else
				ust = init;
		addr:
			ust = addr1;
		addr1:
			if (lcd_finish) 
				ust = ref;
			else
				ust = addr1;
		ref:
			ust = ref1;
		ref1:
			if (lcd_finish)
				ust = addr;
			else
				ust = ref1;
	endcase
end

endmodule
