module vga(clk,reset,r,g,b,h_sync,v_sync);
input clk,reset;
output reg [2:0]r,g;
output reg [1:0]b;
output reg h_sync,v_sync;

clock_divider(clk,div_clk);
h_syncer(div_clk,h_sync,frame_complete);
v_syncer(div_clk,v_sync,frame_complete);
endmodule
