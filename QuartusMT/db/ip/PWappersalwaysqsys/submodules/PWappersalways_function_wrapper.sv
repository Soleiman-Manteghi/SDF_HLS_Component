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

// SystemVerilog created from PWappersalways_function_wrapper
// Created for function/kernel PWappersalways
// SystemVerilog created on Sun Sep 10 08:11:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module PWappersalways_function_wrapper (
    input wire [0:0] avst_iord_bl_call_PWappersalways_data,
    input wire [0:0] avst_iord_bl_call_PWappersalways_valid,
    input wire [31:0] avst_iord_bl_s0_data,
    input wire [0:0] avst_iord_bl_s0_valid,
    input wire [0:0] avst_iowr_bl_call_ihc_1_almostfull,
    input wire [0:0] avst_iowr_bl_call_ihc_2_almostfull,
    input wire [0:0] avst_iowr_bl_call_ihc_almostfull,
    input wire [0:0] avst_iowr_bl_s1_almostfull,
    input wire [0:0] avst_iowr_bl_s2_almostfull,
    input wire [0:0] avst_iowr_bl_s3_almostfull,
    input wire [0:0] avst_iowr_bl_s3_ready,
    input wire [0:0] avst_iowr_nb_return_PWappersalways_almostfull,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_PWappersalways_almost_full,
    output wire [0:0] avst_iord_bl_call_PWappersalways_ready,
    output wire [0:0] avst_iord_bl_s0_almost_full,
    output wire [0:0] avst_iord_bl_s0_ready,
    output wire [31:0] avst_iowr_bl_s3_data,
    output wire [0:0] avst_iowr_bl_s3_valid,
    output wire [0:0] avst_iowr_nb_return_PWappersalways_data,
    output wire [0:0] avst_iowr_nb_return_PWappersalways_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] PWappersalways_function_out_iord_bl_call_PWappersalways_o_fifoalmost_full;
    wire [0:0] PWappersalways_function_out_iord_bl_call_PWappersalways_o_fifoready;
    wire [0:0] PWappersalways_function_out_iowr_bl_call_ihc_1_o_fifodata;
    wire [0:0] PWappersalways_function_out_iowr_bl_call_ihc_1_o_fifovalid;
    wire [0:0] PWappersalways_function_out_iowr_bl_call_ihc_2_o_fifodata;
    wire [0:0] PWappersalways_function_out_iowr_bl_call_ihc_2_o_fifovalid;
    wire [0:0] PWappersalways_function_out_iowr_bl_call_ihc_o_fifodata;
    wire [0:0] PWappersalways_function_out_iowr_bl_call_ihc_o_fifovalid;
    wire [0:0] PWappersalways_function_out_iowr_nb_return_PWappersalways_o_fifodata;
    wire [0:0] PWappersalways_function_out_iowr_nb_return_PWappersalways_o_fifovalid;
    wire [63:0] call_const_q;
    wire [0:0] ihc_1_function_out_iord_bl_call_ihc_1_o_fifoready;
    wire [0:0] ihc_1_function_out_iord_bl_s1_o_fifoready;
    wire [31:0] ihc_1_function_out_iowr_bl_s2_o_fifodata;
    wire [0:0] ihc_1_function_out_iowr_bl_s2_o_fifovalid;
    wire [0:0] ihc_2_function_out_iord_bl_call_ihc_2_o_fifoready;
    wire [0:0] ihc_2_function_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] ihc_2_function_out_iord_bl_s0_o_fifoready;
    wire [31:0] ihc_2_function_out_iowr_bl_s1_o_fifodata;
    wire [0:0] ihc_2_function_out_iowr_bl_s1_o_fifovalid;
    wire [0:0] ihc_function_out_iord_bl_call_ihc_o_fifoready;
    wire [0:0] ihc_function_out_iord_bl_s2_o_fifoready;
    wire [31:0] ihc_function_out_iowr_bl_s3_o_fifodata;
    wire [0:0] ihc_function_out_iowr_bl_s3_o_fifovalid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // ihc_function(BLACKBOX,8)
    PWappersalways_ihc_function theihc_function (
        .in_arg_call(call_const_q),
        .in_arg_s2_global(call_const_q),
        .in_arg_s3_global(call_const_q),
        .in_iord_bl_call_ihc_i_fifodata(PWappersalways_function_out_iowr_bl_call_ihc_o_fifodata),
        .in_iord_bl_call_ihc_i_fifovalid(PWappersalways_function_out_iowr_bl_call_ihc_o_fifovalid),
        .in_iord_bl_s2_i_fifodata(ihc_1_function_out_iowr_bl_s2_o_fifodata),
        .in_iord_bl_s2_i_fifovalid(ihc_1_function_out_iowr_bl_s2_o_fifovalid),
        .in_iowr_bl_s3_i_fifoready(avst_iowr_bl_s3_ready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ihc_o_fifoalmost_full(),
        .out_iord_bl_call_ihc_o_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .out_iord_bl_s2_o_fifoalmost_full(),
        .out_iord_bl_s2_o_fifoready(ihc_function_out_iord_bl_s2_o_fifoready),
        .out_iowr_bl_s3_o_fifodata(ihc_function_out_iowr_bl_s3_o_fifodata),
        .out_iowr_bl_s3_o_fifovalid(ihc_function_out_iowr_bl_s3_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ihc_2_function(BLACKBOX,7)
    PWappersalways_ihc_2_function theihc_2_function (
        .in_arg_call(call_const_q),
        .in_arg_s0_global(call_const_q),
        .in_arg_s1_global(call_const_q),
        .in_iord_bl_call_ihc_2_i_fifodata(PWappersalways_function_out_iowr_bl_call_ihc_2_o_fifodata),
        .in_iord_bl_call_ihc_2_i_fifovalid(PWappersalways_function_out_iowr_bl_call_ihc_2_o_fifovalid),
        .in_iord_bl_s0_i_fifodata(avst_iord_bl_s0_data),
        .in_iord_bl_s0_i_fifovalid(avst_iord_bl_s0_valid),
        .in_iowr_bl_s1_i_fifoready(ihc_1_function_out_iord_bl_s1_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ihc_2_o_fifoalmost_full(),
        .out_iord_bl_call_ihc_2_o_fifoready(ihc_2_function_out_iord_bl_call_ihc_2_o_fifoready),
        .out_iord_bl_s0_o_fifoalmost_full(ihc_2_function_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(ihc_2_function_out_iord_bl_s0_o_fifoready),
        .out_iowr_bl_s1_o_fifodata(ihc_2_function_out_iowr_bl_s1_o_fifodata),
        .out_iowr_bl_s1_o_fifovalid(ihc_2_function_out_iowr_bl_s1_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ihc_1_function(BLACKBOX,6)
    PWappersalways_ihc_1_function theihc_1_function (
        .in_arg_call(call_const_q),
        .in_arg_s1_global(call_const_q),
        .in_arg_s2_global(call_const_q),
        .in_iord_bl_call_ihc_1_i_fifodata(PWappersalways_function_out_iowr_bl_call_ihc_1_o_fifodata),
        .in_iord_bl_call_ihc_1_i_fifovalid(PWappersalways_function_out_iowr_bl_call_ihc_1_o_fifovalid),
        .in_iord_bl_s1_i_fifodata(ihc_2_function_out_iowr_bl_s1_o_fifodata),
        .in_iord_bl_s1_i_fifovalid(ihc_2_function_out_iowr_bl_s1_o_fifovalid),
        .in_iowr_bl_s2_i_fifoready(ihc_function_out_iord_bl_s2_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_ihc_1_o_fifoalmost_full(),
        .out_iord_bl_call_ihc_1_o_fifoready(ihc_1_function_out_iord_bl_call_ihc_1_o_fifoready),
        .out_iord_bl_s1_o_fifoalmost_full(),
        .out_iord_bl_s1_o_fifoready(ihc_1_function_out_iord_bl_s1_o_fifoready),
        .out_iowr_bl_s2_o_fifodata(ihc_1_function_out_iowr_bl_s2_o_fifodata),
        .out_iowr_bl_s2_o_fifovalid(ihc_1_function_out_iowr_bl_s2_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // call_const(CONSTANT,3)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // PWappersalways_function(BLACKBOX,2)
    PWappersalways_function thePWappersalways_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_PWappersalways_i_fifodata(avst_iord_bl_call_PWappersalways_data),
        .in_iord_bl_call_PWappersalways_i_fifovalid(VCC_q),
        .in_iowr_bl_call_ihc_1_i_fifoready(ihc_1_function_out_iord_bl_call_ihc_1_o_fifoready),
        .in_iowr_bl_call_ihc_2_i_fifoready(ihc_2_function_out_iord_bl_call_ihc_2_o_fifoready),
        .in_iowr_bl_call_ihc_i_fifoready(ihc_function_out_iord_bl_call_ihc_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_PWappersalways_o_fifoalmost_full(PWappersalways_function_out_iord_bl_call_PWappersalways_o_fifoalmost_full),
        .out_iord_bl_call_PWappersalways_o_fifoready(PWappersalways_function_out_iord_bl_call_PWappersalways_o_fifoready),
        .out_iowr_bl_call_ihc_1_o_fifodata(PWappersalways_function_out_iowr_bl_call_ihc_1_o_fifodata),
        .out_iowr_bl_call_ihc_1_o_fifovalid(PWappersalways_function_out_iowr_bl_call_ihc_1_o_fifovalid),
        .out_iowr_bl_call_ihc_2_o_fifodata(PWappersalways_function_out_iowr_bl_call_ihc_2_o_fifodata),
        .out_iowr_bl_call_ihc_2_o_fifovalid(PWappersalways_function_out_iowr_bl_call_ihc_2_o_fifovalid),
        .out_iowr_bl_call_ihc_o_fifodata(PWappersalways_function_out_iowr_bl_call_ihc_o_fifodata),
        .out_iowr_bl_call_ihc_o_fifovalid(PWappersalways_function_out_iowr_bl_call_ihc_o_fifovalid),
        .out_iowr_nb_return_PWappersalways_o_fifodata(PWappersalways_function_out_iowr_nb_return_PWappersalways_o_fifodata),
        .out_iowr_nb_return_PWappersalways_o_fifovalid(PWappersalways_function_out_iowr_nb_return_PWappersalways_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_PWappersalways_almost_full(GPOUT,24)
    assign avst_iord_bl_call_PWappersalways_almost_full = PWappersalways_function_out_iord_bl_call_PWappersalways_o_fifoalmost_full;

    // avst_iord_bl_call_PWappersalways_ready(GPOUT,25)
    assign avst_iord_bl_call_PWappersalways_ready = PWappersalways_function_out_iord_bl_call_PWappersalways_o_fifoready;

    // avst_iord_bl_s0_almost_full(GPOUT,26)
    assign avst_iord_bl_s0_almost_full = ihc_2_function_out_iord_bl_s0_o_fifoalmost_full;

    // avst_iord_bl_s0_ready(GPOUT,27)
    assign avst_iord_bl_s0_ready = ihc_2_function_out_iord_bl_s0_o_fifoready;

    // avst_iowr_bl_s3_data(GPOUT,28)
    assign avst_iowr_bl_s3_data = ihc_function_out_iowr_bl_s3_o_fifodata;

    // avst_iowr_bl_s3_valid(GPOUT,29)
    assign avst_iowr_bl_s3_valid = ihc_function_out_iowr_bl_s3_o_fifovalid;

    // avst_iowr_nb_return_PWappersalways_data(GPOUT,30)
    assign avst_iowr_nb_return_PWappersalways_data = PWappersalways_function_out_iowr_nb_return_PWappersalways_o_fifodata;

    // avst_iowr_nb_return_PWappersalways_valid(GPOUT,31)
    assign avst_iowr_nb_return_PWappersalways_valid = PWappersalways_function_out_iowr_nb_return_PWappersalways_o_fifovalid;

endmodule
