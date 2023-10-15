// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from ActorSISOToken_function_wrapper
// Created for function/kernel ActorSISOToken
// SystemVerilog created on Sun Sep 17 05:59:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSISOToken_function_wrapper (
    input wire [0:0] avst_iord_bl_call_ActorSISOToken_data,
    input wire [0:0] avst_iord_bl_call_ActorSISOToken_valid,
    input wire [31:0] avst_iord_bl_s0_data,
    input wire [0:0] avst_iord_bl_s0_valid,
    input wire [0:0] avst_iowr_bl_call_ihc_almostfull,
    input wire [0:0] avst_iowr_bl_s1_0_almostfull,
    input wire [0:0] avst_iowr_bl_s1_1_almostfull,
    input wire [0:0] avst_iowr_nb_return_ActorSISOToken_almostfull,
    input wire [0:0] avst_iowr_s1_almost_full,
    input wire [0:0] avst_iowr_s1_ready,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_ActorSISOToken_almost_full,
    output wire [0:0] avst_iord_bl_call_ActorSISOToken_ready,
    output wire [0:0] avst_iord_bl_s0_almost_full,
    output wire [0:0] avst_iord_bl_s0_ready,
    output wire [0:0] avst_iowr_nb_return_ActorSISOToken_data,
    output wire [0:0] avst_iowr_nb_return_ActorSISOToken_valid,
    output wire [31:0] avst_iowr_s1_data,
    output wire [0:0] avst_iowr_s1_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] ActorSISOToken_function_out_iord_bl_call_ActorSISOToken_o_fifoalmost_full;
    wire [0:0] ActorSISOToken_function_out_iord_bl_call_ActorSISOToken_o_fifoready;
    wire [0:0] ActorSISOToken_function_out_iowr_bl_call_ihc_o_fifodata;
    wire [0:0] ActorSISOToken_function_out_iowr_bl_call_ihc_o_fifovalid;
    wire [0:0] ActorSISOToken_function_out_iowr_nb_return_ActorSISOToken_o_fifodata;
    wire [0:0] ActorSISOToken_function_out_iowr_nb_return_ActorSISOToken_o_fifovalid;
    wire [63:0] call_const_q;
    wire [0:0] ihc_function_out_iord_bl_call_ihc_o_fifoready;
    wire [0:0] ihc_function_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] ihc_function_out_iord_bl_s0_o_fifoready;
    wire [31:0] ihc_function_out_iowr_s1_o_fifodata;
    wire [0:0] ihc_function_out_iowr_s1_o_fifovalid;
    wire [0:0] iord_bl_s0_fifo_inst_out_stream_in_ready;
    wire [31:0] iord_bl_s0_fifo_inst_out_stream_out_data;
    wire [0:0] iord_bl_s0_fifo_inst_out_stream_out_valid;
    wire [0:0] iowr_s1_fifo_inst_out_stream_in_ready;
    wire [31:0] iowr_s1_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_s1_fifo_inst_out_stream_out_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iowr_s1_fifo_inst(BLACKBOX,21)
    ActorSISOToken_iowr_s1_fifo_inst theiowr_s1_fifo_inst (
        .in_stream_in_data(ihc_function_out_iowr_s1_o_fifodata),
        .in_stream_in_valid(ihc_function_out_iowr_s1_o_fifovalid),
        .in_stream_out_almost_full(avst_iowr_s1_almost_full),
        .in_stream_out_ready(avst_iowr_s1_ready),
        .out_stream_in_ready(iowr_s1_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_s1_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_s1_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // iord_bl_s0_fifo_inst(BLACKBOX,20)
    ActorSISOToken_iord_bl_s0_fifo_inst theiord_bl_s0_fifo_inst (
        .in_stream_in_data(avst_iord_bl_s0_data),
        .in_stream_in_valid(avst_iord_bl_s0_valid),
        .in_stream_out_almost_full(ihc_function_out_iord_bl_s0_o_fifoalmost_full),
        .in_stream_out_ready(ihc_function_out_iord_bl_s0_o_fifoready),
        .out_stream_in_ready(iord_bl_s0_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iord_bl_s0_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iord_bl_s0_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ihc_function(BLACKBOX,6)
    ActorSISOToken_ihc_function theihc_function (
        .in_arg_call(call_const_q),
        .in_arg_s0_global(call_const_q),
        .in_arg_s1_global(call_const_q),
        .in_iord_bl_call_ihc_i_fifodata(ActorSISOToken_function_out_iowr_bl_call_ihc_o_fifodata),
        .in_iord_bl_call_ihc_i_fifovalid(ActorSISOToken_function_out_iowr_bl_call_ihc_o_fifovalid),
        .in_iord_bl_s0_i_fifodata(iord_bl_s0_fifo_inst_out_stream_out_data),
        .in_iord_bl_s0_i_fifovalid(iord_bl_s0_fifo_inst_out_stream_out_valid),
        .in_iowr_s1_i_fifoready(iowr_s1_fifo_inst_out_stream_in_ready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ihc_o_fifoalmost_full(),
        .out_iord_bl_call_ihc_o_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .out_iord_bl_s0_o_fifoalmost_full(ihc_function_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(ihc_function_out_iord_bl_s0_o_fifoready),
        .out_iowr_s1_o_fifodata(ihc_function_out_iowr_s1_o_fifodata),
        .out_iowr_s1_o_fifovalid(ihc_function_out_iowr_s1_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // call_const(CONSTANT,3)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // ActorSISOToken_function(BLACKBOX,2)
    ActorSISOToken_function theActorSISOToken_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_ActorSISOToken_i_fifodata(avst_iord_bl_call_ActorSISOToken_data),
        .in_iord_bl_call_ActorSISOToken_i_fifovalid(VCC_q),
        .in_iowr_bl_call_ihc_i_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ActorSISOToken_o_fifoalmost_full(ActorSISOToken_function_out_iord_bl_call_ActorSISOToken_o_fifoalmost_full),
        .out_iord_bl_call_ActorSISOToken_o_fifoready(ActorSISOToken_function_out_iord_bl_call_ActorSISOToken_o_fifoready),
        .out_iowr_bl_call_ihc_o_fifodata(ActorSISOToken_function_out_iowr_bl_call_ihc_o_fifodata),
        .out_iowr_bl_call_ihc_o_fifovalid(ActorSISOToken_function_out_iowr_bl_call_ihc_o_fifovalid),
        .out_iowr_nb_return_ActorSISOToken_o_fifodata(ActorSISOToken_function_out_iowr_nb_return_ActorSISOToken_o_fifodata),
        .out_iowr_nb_return_ActorSISOToken_o_fifovalid(ActorSISOToken_function_out_iowr_nb_return_ActorSISOToken_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_ActorSISOToken_almost_full(GPOUT,22)
    assign avst_iord_bl_call_ActorSISOToken_almost_full = ActorSISOToken_function_out_iord_bl_call_ActorSISOToken_o_fifoalmost_full;

    // avst_iord_bl_call_ActorSISOToken_ready(GPOUT,23)
    assign avst_iord_bl_call_ActorSISOToken_ready = ActorSISOToken_function_out_iord_bl_call_ActorSISOToken_o_fifoready;

    // avst_iord_bl_s0_almost_full(GPOUT,24)
    assign avst_iord_bl_s0_almost_full = ihc_function_out_iord_bl_s0_o_fifoalmost_full;

    // avst_iord_bl_s0_ready(GPOUT,25)
    assign avst_iord_bl_s0_ready = iord_bl_s0_fifo_inst_out_stream_in_ready;

    // avst_iowr_nb_return_ActorSISOToken_data(GPOUT,26)
    assign avst_iowr_nb_return_ActorSISOToken_data = ActorSISOToken_function_out_iowr_nb_return_ActorSISOToken_o_fifodata;

    // avst_iowr_nb_return_ActorSISOToken_valid(GPOUT,27)
    assign avst_iowr_nb_return_ActorSISOToken_valid = ActorSISOToken_function_out_iowr_nb_return_ActorSISOToken_o_fifovalid;

    // avst_iowr_s1_data(GPOUT,28)
    assign avst_iowr_s1_data = iowr_s1_fifo_inst_out_stream_out_data;

    // avst_iowr_s1_valid(GPOUT,29)
    assign avst_iowr_s1_valid = iowr_s1_fifo_inst_out_stream_out_valid;

endmodule
