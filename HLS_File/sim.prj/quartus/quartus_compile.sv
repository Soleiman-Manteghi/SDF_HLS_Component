module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [31:0] SDF_HLS_component_s0_data
	, output logic [0:0] SDF_HLS_component_s0_ready
	, input logic [0:0] SDF_HLS_component_s0_valid
	, output logic [31:0] SDF_HLS_component_s4_data
	, input logic [0:0] SDF_HLS_component_s4_ready
	, output logic [0:0] SDF_HLS_component_s4_valid
	);

	logic [31:0] SDF_HLS_component_s0_data_reg;
	logic [0:0] SDF_HLS_component_s0_ready_reg;
	logic [0:0] SDF_HLS_component_s0_valid_reg;
	logic [31:0] SDF_HLS_component_s4_data_reg;
	logic [0:0] SDF_HLS_component_s4_ready_reg;
	logic [0:0] SDF_HLS_component_s4_valid_reg;


	always @(posedge clock) begin
		SDF_HLS_component_s0_data_reg <= SDF_HLS_component_s0_data;
		SDF_HLS_component_s0_ready <= SDF_HLS_component_s0_ready_reg;
		SDF_HLS_component_s0_valid_reg <= SDF_HLS_component_s0_valid;
		SDF_HLS_component_s4_data <= SDF_HLS_component_s4_data_reg;
		SDF_HLS_component_s4_ready_reg <= SDF_HLS_component_s4_ready;
		SDF_HLS_component_s4_valid <= SDF_HLS_component_s4_valid_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	SDF_HLS_component SDF_HLS_component_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .s0_data(SDF_HLS_component_s0_data_reg)
		, .s0_ready(SDF_HLS_component_s0_ready_reg)
		, .s0_valid(SDF_HLS_component_s0_valid_reg)
		, .s4_data(SDF_HLS_component_s4_data_reg)
		, .s4_ready(SDF_HLS_component_s4_ready_reg)
		, .s4_valid(SDF_HLS_component_s4_valid_reg)
	);



endmodule
