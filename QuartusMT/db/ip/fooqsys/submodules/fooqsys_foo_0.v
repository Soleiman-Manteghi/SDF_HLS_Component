// fooqsys_foo_0.v

// Generated using ACDS version 22.1 915

`timescale 1 ps / 1 ps
module fooqsys_foo_0 (
		input  wire        start,    //   call.valid
		output wire        busy,     //       .stall
		input  wire        clock,    //  clock.clk
		input  wire        resetn,   //  reset.reset_n
		output wire        done,     // return.valid
		input  wire        stall,    //       .stall
		input  wire [31:0] s0_data,  //     s0.data
		output wire        s0_ready, //       .ready
		input  wire        s0_valid, //       .valid
		output wire [31:0] s3_data,  //     s3.data
		input  wire        s3_ready, //       .ready
		output wire        s3_valid  //       .valid
	);

	foo_internal foo_internal_inst (
		.clock    (clock),    //  clock.clk
		.resetn   (resetn),   //  reset.reset_n
		.s0_data  (s0_data),  //     s0.data
		.s0_ready (s0_ready), //       .ready
		.s0_valid (s0_valid), //       .valid
		.s3_data  (s3_data),  //     s3.data
		.s3_ready (s3_ready), //       .ready
		.s3_valid (s3_valid), //       .valid
		.start    (start),    //   call.valid
		.busy     (busy),     //       .stall
		.done     (done),     // return.valid
		.stall    (stall)     //       .stall
	);

endmodule
