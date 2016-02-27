module clock_divider(clk,reset,div_clk);
input clk,reset;
output wire div_clk;

reg [2:0]counter;

always@(posedge clk,reset)
begin
	if(reset)
		counter <= 3'd0;
	else
		counter <= counter + 1'd1;
	$display("Time:%d Counter:%d Div-Clk:%b",$time,counter,div_clk);
end

assign div_clk = counter[2];


endmodule
