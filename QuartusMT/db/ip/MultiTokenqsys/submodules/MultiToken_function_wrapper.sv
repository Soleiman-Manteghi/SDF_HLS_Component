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

// SystemVerilog created from MultiToken_function_wrapper
// Created for function/kernel MultiToken
// SystemVerilog created on Sun Sep 17 05:01:31 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_function_wrapper (
    input wire [0:0] avst_iord_bl_call_MultiToken_data,
    input wire [0:0] avst_iord_bl_call_MultiToken_valid,
    input wire [0:0] avst_iowr_bl_call_ihc_almostfull,
    input wire [0:0] avst_iowr_bl_s1_0_almostfull,
    input wire [0:0] avst_iowr_bl_s1_1_almostfull,
    input wire [0:0] avst_iowr_bl_s2_0_almostfull,
    input wire [0:0] avst_iowr_bl_s2_1_almostfull,
    input wire [0:0] avst_iowr_bl_s2_2_almostfull,
    input wire [0:0] avst_iowr_bl_s2_3_almostfull,
    input wire [0:0] avst_iowr_nb_return_MultiToken_almostfull,
    input wire [0:0] avst_iowr_s1_almost_full,
    input wire [0:0] avst_iowr_s1_ready,
    input wire [0:0] avst_iowr_s2_almost_full,
    input wire [0:0] avst_iowr_s2_ready,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_MultiToken_almost_full,
    output wire [0:0] avst_iord_bl_call_MultiToken_ready,
    output wire [0:0] avst_iowr_nb_return_MultiToken_data,
    output wire [0:0] avst_iowr_nb_return_MultiToken_valid,
    output wire [31:0] avst_iowr_s1_data,
    output wire [0:0] avst_iowr_s1_valid,
    output wire [31:0] avst_iowr_s2_data,
    output wire [0:0] avst_iowr_s2_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] MultiToken_function_out_iord_bl_call_MultiToken_o_fifoalmost_full;
    wire [0:0] MultiToken_function_out_iord_bl_call_MultiToken_o_fifoready;
    wire [0:0] MultiToken_function_out_iowr_bl_call_ihc_o_fifodata;
    wire [0:0] MultiToken_function_out_iowr_bl_call_ihc_o_fifovalid;
    wire [0:0] MultiToken_function_out_iowr_nb_return_MultiToken_o_fifodata;
    wire [0:0] MultiToken_function_out_iowr_nb_return_MultiToken_o_fifovalid;
    wire [63:0] call_const_q;
    wire [0:0] ihc_function_out_iord_bl_call_ihc_o_fifoready;
    wire [31:0] ihc_function_out_iowr_s1_o_fifodata;
    wire [0:0] ihc_function_out_iowr_s1_o_fifovalid;
    wire [31:0] ihc_function_out_iowr_s2_o_fifodata;
    wire [0:0] ihc_function_out_iowr_s2_o_fifovalid;
    wire [0:0] iowr_s1_fifo_inst_out_stream_in_ready;
    wire [31:0] iowr_s1_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_s1_fifo_inst_out_stream_out_valid;
    wire [0:0] iowr_s2_fifo_inst_out_stream_in_ready;
    wire [31:0] iowr_s2_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_s2_fifo_inst_out_stream_out_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iowr_s2_fifo_inst(BLACKBOX,25)
    MultiToken_iowr_s2_fifo_inst theiowr_s2_fifo_inst (
        .in_stream_in_data(ihc_function_out_iowr_s2_o_fifodata),
        .in_stream_in_valid(ihc_function_out_iowr_s2_o_fifovalid),
        .in_stream_out_almost_full(avst_iowr_s2_almost_full),
        .in_stream_out_ready(avst_iowr_s2_ready),
        .out_stream_in_ready(iowr_s2_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_s2_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_s2_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // iowr_s1_fifo_inst(BLACKBOX,24)
    MultiToken_iowr_s1_fifo_inst theiowr_s1_fifo_inst (
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

    // ihc_function(BLACKBOX,6)
    MultiToken_ihc_function theihc_function (
        .in_arg_call(call_const_q),
        .in_arg_s1_global(call_const_q),
        .in_arg_s2_global(call_const_q),
        .in_iord_bl_call_ihc_i_fifodata(MultiToken_function_out_iowr_bl_call_ihc_o_fifodata),
        .in_iord_bl_call_ihc_i_fifovalid(MultiToken_function_out_iowr_bl_call_ihc_o_fifovalid),
        .in_iowr_s1_i_fifoready(iowr_s1_fifo_inst_out_stream_in_ready),
        .in_iowr_s2_i_fifoready(iowr_s2_fifo_inst_out_stream_in_ready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ihc_o_fifoalmost_full(),
        .out_iord_bl_call_ihc_o_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .out_iowr_s1_o_fifodata(ihc_function_out_iowr_s1_o_fifodata),
        .out_iowr_s1_o_fifovalid(ihc_function_out_iowr_s1_o_fifovalid),
        .out_iowr_s2_o_fifodata(ihc_function_out_iowr_s2_o_fifodata),
        .out_iowr_s2_o_fifovalid(ihc_function_out_iowr_s2_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // call_const(CONSTANT,3)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // MultiToken_function(BLACKBOX,2)
    MultiToken_function theMultiToken_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_MultiToken_i_fifodata(avst_iord_bl_call_MultiToken_data),
        .in_iord_bl_call_MultiToken_i_fifovalid(VCC_q),
        .in_iowr_bl_call_ihc_i_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_MultiToken_o_fifoalmost_full(MultiToken_function_out_iord_bl_call_MultiToken_o_fifoalmost_full),
        .out_iord_bl_call_MultiToken_o_fifoready(MultiToken_function_out_iord_bl_call_MultiToken_o_fifoready),
        .out_iowr_bl_call_ihc_o_fifodata(MultiToken_function_out_iowr_bl_call_ihc_o_fifodata),
        .out_iowr_bl_call_ihc_o_fifovalid(MultiToken_function_out_iowr_bl_call_ihc_o_fifovalid),
        .out_iowr_nb_return_MultiToken_o_fifodata(MultiToken_function_out_iowr_nb_return_MultiToken_o_fifodata),
        .out_iowr_nb_return_MultiToken_o_fifovalid(MultiToken_function_out_iowr_nb_return_MultiToken_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_MultiToken_almost_full(GPOUT,26)
    assign avst_iord_bl_call_MultiToken_almost_full = MultiToken_function_out_iord_bl_call_MultiToken_o_fifoalmost_full;

    // avst_iord_bl_call_MultiToken_ready(GPOUT,27)
    assign avst_iord_bl_call_MultiToken_ready = MultiToken_function_out_iord_bl_call_MultiToken_o_fifoready;

    // avst_iowr_nb_return_MultiToken_data(GPOUT,28)
    assign avst_iowr_nb_return_MultiToken_data = MultiToken_function_out_iowr_nb_return_MultiToken_o_fifodata;

    // avst_iowr_nb_return_MultiToken_valid(GPOUT,29)
    assign avst_iowr_nb_return_MultiToken_valid = MultiToken_function_out_iowr_nb_return_MultiToken_o_fifovalid;

    // avst_iowr_s1_data(GPOUT,30)
    assign avst_iowr_s1_data = iowr_s1_fifo_inst_out_stream_out_data;

    // avst_iowr_s1_valid(GPOUT,31)
    assign avst_iowr_s1_valid = iowr_s1_fifo_inst_out_stream_out_valid;

    // avst_iowr_s2_data(GPOUT,32)
    assign avst_iowr_s2_data = iowr_s2_fifo_inst_out_stream_out_data;

    // avst_iowr_s2_valid(GPOUT,33)
    assign avst_iowr_s2_valid = iowr_s2_fifo_inst_out_stream_out_valid;

endmodule
