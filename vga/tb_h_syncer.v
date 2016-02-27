module tb_h_syncer;
reg clk;
reg reset;
wire h_sync,line_complete;
h_syncer hs(clk,reset,h_sync,line_complete);

initial begin
clk<=1'b0;
reset<=1'b1;
#5
reset<=1'b0;
end
always #5 clk <= ~clk;
endmodule
