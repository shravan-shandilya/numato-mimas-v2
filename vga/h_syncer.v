module h_syncer(clk,reset,h_sync,line_complete);
input clk,reset;
output wire h_sync;
output reg line_complete;

reg [9:0]h_sync_count;

always@(posedge clk,reset)
begin
	if(reset)
		h_sync_count <= 10'd0;
	else
	begin
		if(h_sync_count == 10'd800)
		begin
			h_sync_count <= 10'd0;
			line_complete <= 1'b1;
		end
		else
		begin
			h_sync_count <= h_sync_count + 1;
			line_complete <= 1'b0;
		end
	end
	//$display("H_sync_count:%d,h_sync:%b,line_complete:%b",h_sync_count,h_sync,line_complete);	
end


assign h_sync = (h_sync_count < 10'd97)? 1'b0:1'b1;

endmodule
