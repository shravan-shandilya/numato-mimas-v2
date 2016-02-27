module tb_clock_divider;
reg clk;
reg reset;
wire div_clk;
clock_divider cd(clk,reset,div_clk);

initial begin
clk<=1'b0;
reset<=1'b1;
#5
reset<=1'b0;
end
always #5 clk <= ~clk;
endmodule
