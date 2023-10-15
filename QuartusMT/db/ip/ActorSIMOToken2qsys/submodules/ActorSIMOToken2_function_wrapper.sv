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

// SystemVerilog created from ActorSIMOToken2_function_wrapper
// Created for function/kernel ActorSIMOToken2
// SystemVerilog created on Mon Sep 18 22:22:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSIMOToken2_function_wrapper (
    input wire [0:0] avst_iord_bl_call_ActorSIMOToken2_data,
    input wire [0:0] avst_iord_bl_call_ActorSIMOToken2_valid,
    input wire [31:0] avst_iord_bl_s0_data,
    input wire [0:0] avst_iord_bl_s0_valid,
    input wire [0:0] avst_iowr_bl_call_ihc_1_almostfull,
    input wire [0:0] avst_iowr_bl_call_ihc_almostfull,
    input wire [0:0] avst_iowr_bl_s1_0_almostfull,
    input wire [0:0] avst_iowr_bl_s1_1_almostfull,
    input wire [0:0] avst_iowr_bl_s2_0_almostfull,
    input wire [0:0] avst_iowr_bl_s2_1_almostfull,
    input wire [0:0] avst_iowr_nb_return_ActorSIMOToken2_almostfull,
    input wire [0:0] avst_iowr_s1_almost_full,
    input wire [0:0] avst_iowr_s1_ready,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_ActorSIMOToken2_almost_full,
    output wire [0:0] avst_iord_bl_call_ActorSIMOToken2_ready,
    output wire [0:0] avst_iord_bl_s0_almost_full,
    output wire [0:0] avst_iord_bl_s0_ready,
    output wire [0:0] avst_iowr_nb_return_ActorSIMOToken2_data,
    output wire [0:0] avst_iowr_nb_return_ActorSIMOToken2_valid,
    output wire [31:0] avst_iowr_s1_data,
    output wire [0:0] avst_iowr_s1_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] ActorSIMOToken2_function_out_iord_bl_call_ActorSIMOToken2_o_fifoalmost_full;
    wire [0:0] ActorSIMOToken2_function_out_iord_bl_call_ActorSIMOToken2_o_fifoready;
    wire [0:0] ActorSIMOToken2_function_out_iowr_bl_call_ihc_1_o_fifodata;
    wire [0:0] ActorSIMOToken2_function_out_iowr_bl_call_ihc_1_o_fifovalid;
    wire [0:0] ActorSIMOToken2_function_out_iowr_bl_call_ihc_o_fifodata;
    wire [0:0] ActorSIMOToken2_function_out_iowr_bl_call_ihc_o_fifovalid;
    wire [0:0] ActorSIMOToken2_function_out_iowr_nb_return_ActorSIMOToken2_o_fifodata;
    wire [0:0] ActorSIMOToken2_function_out_iowr_nb_return_ActorSIMOToken2_o_fifovalid;
    wire [63:0] call_const_q;
    wire [0:0] ihc_1_function_out_iord_bl_call_ihc_1_o_fifoready;
    wire [0:0] ihc_1_function_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] ihc_1_function_out_iord_bl_s0_o_fifoready;
    wire [31:0] ihc_1_function_out_iowr_s1_o_fifodata;
    wire [0:0] ihc_1_function_out_iowr_s1_o_fifovalid;
    wire [31:0] ihc_1_function_out_iowr_s2_o_fifodata;
    wire [0:0] ihc_1_function_out_iowr_s2_o_fifovalid;
    wire [0:0] ihc_function_out_iord_bl_call_ihc_o_fifoready;
    wire [0:0] ihc_function_out_iord_bl_s2_o_fifoalmost_full;
    wire [0:0] ihc_function_out_iord_bl_s2_o_fifoready;
    wire [0:0] iord_bl_s0_fifo_inst_out_stream_in_ready;
    wire [31:0] iord_bl_s0_fifo_inst_out_stream_out_data;
    wire [0:0] iord_bl_s0_fifo_inst_out_stream_out_valid;
    wire [0:0] iowr_s1_fifo_inst_out_stream_in_ready;
    wire [31:0] iowr_s1_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_s1_fifo_inst_out_stream_out_valid;
    wire [0:0] iowr_s2_fifo_inst_out_stream_in_ready;
    wire [31:0] iowr_s2_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_s2_fifo_inst_out_stream_out_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iowr_s2_fifo_inst(BLACKBOX,26)
    ActorSIMOToken2_iowr_s2_fifo_inst theiowr_s2_fifo_inst (
        .in_stream_in_data(ihc_1_function_out_iowr_s2_o_fifodata),
        .in_stream_in_valid(ihc_1_function_out_iowr_s2_o_fifovalid),
        .in_stream_out_almost_full(ihc_function_out_iord_bl_s2_o_fifoalmost_full),
        .in_stream_out_ready(ihc_function_out_iord_bl_s2_o_fifoready),
        .out_stream_in_ready(iowr_s2_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_s2_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_s2_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ihc_function(BLACKBOX,7)
    ActorSIMOToken2_ihc_function theihc_function (
        .in_arg_call(call_const_q),
        .in_arg_s2_global(call_const_q),
        .in_iord_bl_call_ihc_i_fifodata(ActorSIMOToken2_function_out_iowr_bl_call_ihc_o_fifodata),
        .in_iord_bl_call_ihc_i_fifovalid(ActorSIMOToken2_function_out_iowr_bl_call_ihc_o_fifovalid),
        .in_iord_bl_s2_i_fifodata(iowr_s2_fifo_inst_out_stream_out_data),
        .in_iord_bl_s2_i_fifovalid(iowr_s2_fifo_inst_out_stream_out_valid),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ihc_o_fifoalmost_full(),
        .out_iord_bl_call_ihc_o_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .out_iord_bl_s2_o_fifoalmost_full(ihc_function_out_iord_bl_s2_o_fifoalmost_full),
        .out_iord_bl_s2_o_fifoready(ihc_function_out_iord_bl_s2_o_fifoready),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // iowr_s1_fifo_inst(BLACKBOX,25)
    ActorSIMOToken2_iowr_s1_fifo_inst theiowr_s1_fifo_inst (
        .in_stream_in_data(ihc_1_function_out_iowr_s1_o_fifodata),
        .in_stream_in_valid(ihc_1_function_out_iowr_s1_o_fifovalid),
        .in_stream_out_almost_full(avst_iowr_s1_almost_full),
        .in_stream_out_ready(avst_iowr_s1_ready),
        .out_stream_in_ready(iowr_s1_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_s1_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_s1_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // iord_bl_s0_fifo_inst(BLACKBOX,24)
    ActorSIMOToken2_iord_bl_s0_fifo_inst theiord_bl_s0_fifo_inst (
        .in_stream_in_data(avst_iord_bl_s0_data),
        .in_stream_in_valid(avst_iord_bl_s0_valid),
        .in_stream_out_almost_full(ihc_1_function_out_iord_bl_s0_o_fifoalmost_full),
        .in_stream_out_ready(ihc_1_function_out_iord_bl_s0_o_fifoready),
        .out_stream_in_ready(iord_bl_s0_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iord_bl_s0_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iord_bl_s0_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ihc_1_function(BLACKBOX,6)
    ActorSIMOToken2_ihc_1_function theihc_1_function (
        .in_arg_call(call_const_q),
        .in_arg_s0_global(call_const_q),
        .in_arg_s1_global(call_const_q),
        .in_arg_s2_global(call_const_q),
        .in_iord_bl_call_ihc_1_i_fifodata(ActorSIMOToken2_function_out_iowr_bl_call_ihc_1_o_fifodata),
        .in_iord_bl_call_ihc_1_i_fifovalid(ActorSIMOToken2_function_out_iowr_bl_call_ihc_1_o_fifovalid),
        .in_iord_bl_s0_i_fifodata(iord_bl_s0_fifo_inst_out_stream_out_data),
        .in_iord_bl_s0_i_fifovalid(iord_bl_s0_fifo_inst_out_stream_out_valid),
        .in_iowr_s1_i_fifoready(iowr_s1_fifo_inst_out_stream_in_ready),
        .in_iowr_s2_i_fifoready(iowr_s2_fifo_inst_out_stream_in_ready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ihc_1_o_fifoalmost_full(),
        .out_iord_bl_call_ihc_1_o_fifoready(ihc_1_function_out_iord_bl_call_ihc_1_o_fifoready),
        .out_iord_bl_s0_o_fifoalmost_full(ihc_1_function_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(ihc_1_function_out_iord_bl_s0_o_fifoready),
        .out_iowr_s1_o_fifodata(ihc_1_function_out_iowr_s1_o_fifodata),
        .out_iowr_s1_o_fifovalid(ihc_1_function_out_iowr_s1_o_fifovalid),
        .out_iowr_s2_o_fifodata(ihc_1_function_out_iowr_s2_o_fifodata),
        .out_iowr_s2_o_fifovalid(ihc_1_function_out_iowr_s2_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // call_const(CONSTANT,3)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // ActorSIMOToken2_function(BLACKBOX,2)
    ActorSIMOToken2_function theActorSIMOToken2_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_ActorSIMOToken2_i_fifodata(avst_iord_bl_call_ActorSIMOToken2_data),
        .in_iord_bl_call_ActorSIMOToken2_i_fifovalid(VCC_q),
        .in_iowr_bl_call_ihc_1_i_fifoready(ihc_1_function_out_iord_bl_call_ihc_1_o_fifoready),
        .in_iowr_bl_call_ihc_i_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ActorSIMOToken2_o_fifoalmost_full(ActorSIMOToken2_function_out_iord_bl_call_ActorSIMOToken2_o_fifoalmost_full),
        .out_iord_bl_call_ActorSIMOToken2_o_fifoready(ActorSIMOToken2_function_out_iord_bl_call_ActorSIMOToken2_o_fifoready),
        .out_iowr_bl_call_ihc_1_o_fifodata(ActorSIMOToken2_function_out_iowr_bl_call_ihc_1_o_fifodata),
        .out_iowr_bl_call_ihc_1_o_fifovalid(ActorSIMOToken2_function_out_iowr_bl_call_ihc_1_o_fifovalid),
        .out_iowr_bl_call_ihc_o_fifodata(ActorSIMOToken2_function_out_iowr_bl_call_ihc_o_fifodata),
        .out_iowr_bl_call_ihc_o_fifovalid(ActorSIMOToken2_function_out_iowr_bl_call_ihc_o_fifovalid),
        .out_iowr_nb_return_ActorSIMOToken2_o_fifodata(ActorSIMOToken2_function_out_iowr_nb_return_ActorSIMOToken2_o_fifodata),
        .out_iowr_nb_return_ActorSIMOToken2_o_fifovalid(ActorSIMOToken2_function_out_iowr_nb_return_ActorSIMOToken2_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_ActorSIMOToken2_almost_full(GPOUT,27)
    assign avst_iord_bl_call_ActorSIMOToken2_almost_full = ActorSIMOToken2_function_out_iord_bl_call_ActorSIMOToken2_o_fifoalmost_full;

    // avst_iord_bl_call_ActorSIMOToken2_ready(GPOUT,28)
    assign avst_iord_bl_call_ActorSIMOToken2_ready = ActorSIMOToken2_function_out_iord_bl_call_ActorSIMOToken2_o_fifoready;

    // avst_iord_bl_s0_almost_full(GPOUT,29)
    assign avst_iord_bl_s0_almost_full = ihc_1_function_out_iord_bl_s0_o_fifoalmost_full;

    // avst_iord_bl_s0_ready(GPOUT,30)
    assign avst_iord_bl_s0_ready = iord_bl_s0_fifo_inst_out_stream_in_ready;

    // avst_iowr_nb_return_ActorSIMOToken2_data(GPOUT,31)
    assign avst_iowr_nb_return_ActorSIMOToken2_data = ActorSIMOToken2_function_out_iowr_nb_return_ActorSIMOToken2_o_fifodata;

    // avst_iowr_nb_return_ActorSIMOToken2_valid(GPOUT,32)
    assign avst_iowr_nb_return_ActorSIMOToken2_valid = ActorSIMOToken2_function_out_iowr_nb_return_ActorSIMOToken2_o_fifovalid;

    // avst_iowr_s1_data(GPOUT,33)
    assign avst_iowr_s1_data = iowr_s1_fifo_inst_out_stream_out_data;

    // avst_iowr_s1_valid(GPOUT,34)
    assign avst_iowr_s1_valid = iowr_s1_fifo_inst_out_stream_out_valid;

endmodule
