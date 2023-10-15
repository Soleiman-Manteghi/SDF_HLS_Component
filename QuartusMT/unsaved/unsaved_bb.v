
module unsaved (
	clk_clk,
	reset_reset_n,
	actorsimotoken_0_s2_data,
	actorsimotoken_0_s2_ready,
	actorsimotoken_0_s2_valid,
	actorsimotoken_0_s0_data,
	actorsimotoken_0_s0_ready,
	actorsimotoken_0_s0_valid,
	actorsimotoken_0_s1_data,
	actorsimotoken_0_s1_ready,
	actorsimotoken_0_s1_valid);	

	input		clk_clk;
	input		reset_reset_n;
	output	[31:0]	actorsimotoken_0_s2_data;
	input		actorsimotoken_0_s2_ready;
	output		actorsimotoken_0_s2_valid;
	input	[31:0]	actorsimotoken_0_s0_data;
	output		actorsimotoken_0_s0_ready;
	input		actorsimotoken_0_s0_valid;
	output	[31:0]	actorsimotoken_0_s1_data;
	input		actorsimotoken_0_s1_ready;
	output		actorsimotoken_0_s1_valid;
endmodule
