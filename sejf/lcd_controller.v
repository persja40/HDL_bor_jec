`timescale 1ns / 1ps

module lcd_controller(
    input reset,
    input clk_1ms,
    output E_out,
    output RW_out,
    output RS_out,
    output DB_sel,
	 output [1:0] mux_sel,
	 output data_sel,
	 output [1:0] init_sel
    );

	 
	//wire lcd_enable, [1:0] lcd_cnt, mode, 
		  //lcd_finish, reg_sel;
	wire [1:0] lcd_cnt;
	
	main_controller my_main_controller (
		.reset(reset),
		.clk_1ms(clk_1ms),
		.data_sel(data_sel),
		.DB_sel(DB_sel),
		.lcd_enable(lcd_enable),
		.lcd_cnt(lcd_cnt),
		.mode(mode),
		.lcd_finish(lcd_finish),
		.reg_sel(reg_sel)
	);
	
	lcd_init_refresh my_lcd_init_refresh (
		.reset(reset),
		.clk_1ms(clk_1ms),
		.lcd_enable(lcd_enable),
		.lcd_cnt(lcd_cnt),
		.mode(mode),
		.lcd_finish(lcd_finish),
		.mux_sel(mux_sel),
		.init_sel(init_sel),
		.wr_enable(wr_enable),
		.wr_finish(wr_finish)
	);
	
		
	write_cycle my_write_cycle (
		.reset(reset),
		.clk_1ms(clk_1ms),
		.reg_sel(reg_sel),
		.wr_enable(wr_enable),
		.wr_finish(wr_finish),
		.E_out(E_out),
		.RW_out(RW_out),
		.RS_out(RS_out)
	);

endmodule
