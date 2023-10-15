// FB_Streaminoutqsys.v

// Generated using ACDS version 22.1 915

`timescale 1 ps / 1 ps
module FB_Streaminoutqsys (
		input  wire        clk_clk,                    //                  clk.clk
		input  wire        reset_reset_n,              //                reset.reset_n
		input  wire [31:0] streaminout_0_a_data,       //      streaminout_0_a.data
		output wire        streaminout_0_a_ready,      //                     .ready
		input  wire        streaminout_0_a_valid,      //                     .valid
		input  wire        streaminout_0_call_valid,   //   streaminout_0_call.valid
		output wire        streaminout_0_call_stall,   //                     .stall
		output wire [31:0] streaminout_2_b_data,       //      streaminout_2_b.data
		input  wire        streaminout_2_b_ready,      //                     .ready
		output wire        streaminout_2_b_valid,      //                     .valid
		output wire        streaminout_2_return_valid, // streaminout_2_return.valid
		input  wire        streaminout_2_return_stall  //                     .stall
	);

	wire         streaminout_0_b_valid;          // Streaminout_0:b_valid -> Streaminout_1:a_valid
	wire  [31:0] streaminout_0_b_data;           // Streaminout_0:b_data -> Streaminout_1:a_data
	wire         streaminout_0_b_ready;          // Streaminout_1:a_ready -> Streaminout_0:b_ready
	wire         streaminout_1_b_valid;          // Streaminout_1:b_valid -> Streaminout_2:a_valid
	wire  [31:0] streaminout_1_b_data;           // Streaminout_1:b_data -> Streaminout_2:a_data
	wire         streaminout_1_b_ready;          // Streaminout_2:a_ready -> Streaminout_1:b_ready
	wire         streaminout_0_return_valid;     // Streaminout_0:done -> Streaminout_1:start
	wire         streaminout_1_call_stall;       // Streaminout_1:busy -> Streaminout_0:stall
	wire         streaminout_1_return_valid;     // Streaminout_1:done -> Streaminout_2:start
	wire         streaminout_2_call_stall;       // Streaminout_2:busy -> Streaminout_1:stall
	wire         rst_controller_reset_out_reset; // rst_controller:reset_out -> [Streaminout_0:resetn, Streaminout_1:resetn, Streaminout_2:resetn]

	FB_Streaminoutqsys_Streaminout_0 streaminout_0 (
		.a_data  (streaminout_0_a_data),            //      a.data
		.a_ready (streaminout_0_a_ready),           //       .ready
		.a_valid (streaminout_0_a_valid),           //       .valid
		.b_data  (streaminout_0_b_data),            //      b.data
		.b_ready (streaminout_0_b_ready),           //       .ready
		.b_valid (streaminout_0_b_valid),           //       .valid
		.start   (streaminout_0_call_valid),        //   call.valid
		.busy    (streaminout_0_call_stall),        //       .stall
		.clock   (clk_clk),                         //  clock.clk
		.resetn  (~rst_controller_reset_out_reset), //  reset.reset_n
		.done    (streaminout_0_return_valid),      // return.valid
		.stall   (streaminout_1_call_stall)         //       .stall
	);

	FB_Streaminoutqsys_Streaminout_1 streaminout_1 (
		.a_data  (streaminout_0_b_data),            //      a.data
		.a_ready (streaminout_0_b_ready),           //       .ready
		.a_valid (streaminout_0_b_valid),           //       .valid
		.b_data  (streaminout_1_b_data),            //      b.data
		.b_ready (streaminout_1_b_ready),           //       .ready
		.b_valid (streaminout_1_b_valid),           //       .valid
		.start   (streaminout_0_return_valid),      //   call.valid
		.busy    (streaminout_1_call_stall),        //       .stall
		.clock   (clk_clk),                         //  clock.clk
		.resetn  (~rst_controller_reset_out_reset), //  reset.reset_n
		.done    (streaminout_1_return_valid),      // return.valid
		.stall   (streaminout_2_call_stall)         //       .stall
	);

	FB_Streaminoutqsys_Streaminout_2 streaminout_2 (
		.a_data  (streaminout_1_b_data),            //      a.data
		.a_ready (streaminout_1_b_ready),           //       .ready
		.a_valid (streaminout_1_b_valid),           //       .valid
		.b_data  (streaminout_2_b_data),            //      b.data
		.b_ready (streaminout_2_b_ready),           //       .ready
		.b_valid (streaminout_2_b_valid),           //       .valid
		.start   (streaminout_1_return_valid),      //   call.valid
		.busy    (streaminout_2_call_stall),        //       .stall
		.clock   (clk_clk),                         //  clock.clk
		.resetn  (~rst_controller_reset_out_reset), //  reset.reset_n
		.done    (streaminout_2_return_valid),      // return.valid
		.stall   (streaminout_2_return_stall)       //       .stall
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
