`timescale 1ns / 1ps

module clkdiv #( parameter div=25000000 )(
    input clk,
    input rst,
    output reg clk_slow
    );
function integer clogb2;
input [31:0] val;
begin
        val=val-1;
        for(clogb2=0;val>0;clogb2=clogb2+1)
                val=val>>1;
end
endfunction

localparam bits = clogb2(div);

reg [bits-1:0] cnt;

assign comp = (cnt == div-1 );

always @(posedge clk, posedge rst)
        if(rst)
                cnt<={bits{1'b0}};
        else if(comp)
                cnt<={bits{1'b0}};
        else cnt<=cnt+1;

always @(posedge clk, posedge rst)
        if(rst)
                clk_slow<=1'b0;
        else if(comp)
                clk_slow<=~clk_slow;

endmodule
