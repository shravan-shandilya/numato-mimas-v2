clk:clock_divider.v tb_clock_divider.v
	iverilog clock_divider.v tb_clock_divider.v -o tb_clock_divider.vvp
h_sync:h_syncer.v tb_h_syncer.v
	iverilog h_syncer.v tb_h_syncer.v -o tb_h_syncer.vvp
v_sync:v_syncer.v tb_v_syncer.v h_syncer.v
	iverilog v_syncer.v h_syncer.v tb_v_syncer.v -o tb_v_syncer.vvp
clean:*.vvp
	rm -rf *.vvp
