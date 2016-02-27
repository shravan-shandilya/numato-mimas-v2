module v_syncer(clk,reset,v_sync,line_complete);
input clk,reset,line_complete;
output wire v_sync;

reg [9:0]v_sync_count;

always@(posedge clk,reset)
begin
	if(reset)
		v_sync_count <= 10'd0;
	else if(line_complete)
	begin
		if(v_sync_count == 10'd521)
			v_sync_count <= 10'd0;
		else
			v_sync_count <= v_sync_count + 1;
	end
	//$display("v_sync_count:%d,v_sync:%b,line_complete:%b",v_sync_count,v_sync,line_complete);	
end


assign v_sync = (v_sync_count < 10'd2)? 1'b0:1'b1;

endmodule
