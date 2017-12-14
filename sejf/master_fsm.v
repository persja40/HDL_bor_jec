`timescale 1ns / 1ps

module master_fsm(
    input clk,
    input rst,
    input cnten,
    input up,
    input dirch,
    input doorCls,
    input lock,
    input open,
    input eq,
    output reg countEn,
    output reg actuateLock,
    output reg openCls,
    output reg [1:0] sel,
    output reg blank,
    output reg clrCount
    );
	 
reg [3:0] st, ust;
localparam locked=4'd0, start=4'd1,
			  cw=4'd2, first_ok=4'd3,
			  second_ok=4'd4, third_ok=4'd5,
			  unlocked=4'd6, lock_ok=4'd7,
			  bad_nu=4'd8;		  

always@(posedge clk, posedge rst)
begin
	if(rst)
		st<=locked;
	else
		st<=ust;
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		blank <= 1;
	else case(st)
		locked: blank <= 1;
		unlocked: blank <= 1;
		default: blank <= 0;
	endcase
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		countEn <= 1;
	else case(st)
		locked: countEn <= 1;
		default: countEn <= 0;
	endcase
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		clrCount <= 1;
	else case(st)
		locked: clrCount <= 1;
		unlocked: clrCount <= 1;
		default: clrCount <= 0;
	endcase
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		sel <= 2'd0;
	else case(st)
		cw: sel <= 2'd0;
		first_ok: sel <= 2'd1;
		second_ok: sel <= 2'd2;
		default: sel <= 2'd0;
	endcase
end

always@(posedge clk, posedge rst)
begin
	if(rst)
		actuateLock <= 0;
	else case(st)
		third_ok: actuateLock <= 1;
		lock_ok: if (!doorCls) actuateLock <= 1;
		default: actuateLock <= 0;
	endcase
end


always@(posedge clk, posedge rst)
begin
	if(rst)
		openCls <= 0;
	else case(st)
		third_ok: openCls <= 1;
		default: openCls <= 0;
	endcase
end

always @*
begin
	ust = locked;
	case (st)
		locked:
			if (open)
				ust = start;
			else
				ust = locked;
		start:
			if (!cnten && !up)
				ust = cw;
			else
				ust = start;
		cw:
			begin
				if (dirch && eq)
					ust = first_ok;
				else
					if (dirch && !eq)
						ust = bad_nu;
					else
						ust = cw;
			end
		first_ok:
			begin
				if (dirch && eq)
					ust = second_ok;
				else
					if (dirch && !eq)
						ust = bad_nu;
					else
						ust = first_ok;
			end
		second_ok:
			begin
				if (open && eq)
					ust = third_ok;
				else
					if (dirch && !eq)
						ust = bad_nu;
					else
						ust = second_ok;
			end
		third_ok:
			ust = unlocked;
		unlocked:
			if (lock && doorCls)
				ust = lock_ok;
			else
				ust = unlocked;
		lock_ok:
			ust = locked;
		bad_nu:
			ust = locked;
	endcase
end

endmodule
