`timescale 1ns / 1ps

module lcd_driver(
    input reset,
    input clk_1ms,
    output E,
    output RW,
    output RS,
    output [7:0] DB
    //input [15:0] data
    );
wire  [15:0] data = {4'h3,4'h1,4'h9,4'h6};
	wire [1:0] mux_sel;
	wire [1:0] init_sel;

	lcd_controller my_LCD_controller (
		.reset(reset),
		.clk_1ms(clk_1ms),
		.E_out(E),
		.RW_out(RW),
		.RS_out(RS),
		.DB_sel(DB_sel),
		.mux_sel(mux_sel),
		.init_sel(init_sel),
		.data_sel(data_sel)
	);
	
	LCD_dp my_LCD_dp (
		.DB_sel(DB_sel),
		.mux_sel(mux_sel),
		.init_sel(init_sel),
		.data_sel(data_sel),
		.count0(data[3:0]),
		.count1(data[7:4]),
		.count2(data[11:8]),
		.count3(data[15:12]),
		.DB_out(DB)
	);

endmodule
