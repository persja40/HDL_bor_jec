`timescale 1ns / 1ps

module main_controller(
    input reset,
    input clk_1ms,
    output reg data_sel,
    output reg DB_sel,
    output reg lcd_enable,
    output reg [1:0] lcd_cnt,
    output reg mode,
    input lcd_finish,
    output reg reg_sel
    );

reg [1:0] st, ust;
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

always@*
	case(st)
		idle: lcd_enable <= 1'b1;
		init: lcd_enable <= 1'b0;
		addr: lcd_enable <= 1'b1;
		addr1: lcd_enable <= 1'b0;
		ref: lcd_enable <= 1'b1;
		ref1: lcd_enable <= 1'b0;
	endcase
	
always@*
begin
	lcd_cnt = INIT_CONST_NO - 1;
	case(st)
		addr: lcd_cnt = 0;
		addr1: lcd_cnt = 0;
		ref: lcd_cnt = REF_DATA_NO - 1;
		ref1: lcd_cnt = REF_DATA_NO - 1;
	endcase
end

always@*
begin
	DB_sel = 1;
	case(st)
		addr: DB_sel = 0;
		addr1: DB_sel = 0;
	endcase
end

always@*
begin
	data_sel = 0;
	case(st)
		ref: data_sel = 1;
		ref1: data_sel = 1;
	endcase
end

always@*
begin
	reg_sel = 0;
	case(st) 
		ref: reg_sel = 1'b1;
		ref1: reg_sel = 1'b1;
	endcase
end

always@*
begin
	mode = LCD_INIT;
	case(st)
		ref: mode = LCD_REF;
	endcase
end

always @*
begin
	//wr_enable = 1'b0;
	ust = idle;
	case (st)
		idle:
			ust = init;
		init:
			if (lcd_finish)
				ust = addr;
		addr:
			ust = addr1;
		addr1:
			if (lcd_finish) 
				ust = ref;
		ref:
			ust = ref1;
		ref1:
			if (lcd_finish)
				ust = addr;
	endcase
end

endmodule
