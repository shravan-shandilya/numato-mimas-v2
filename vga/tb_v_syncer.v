module tb_v_syncer;
reg clk;
reg reset;
wire h_sync,v_sync,line_complete;

h_syncer hs(clk,reset,h_sync,line_complete);
v_syncer vs(clk,reset,v_sync,line_complete);
initial begin
clk<=1'b0;
reset<=1'b1;
#5
reset<=1'b0;
end
always #5 clk <= ~clk;
always #5 $display("h-sync:%b,v-sync:%b",h_sync,v_sync);
endmodule
