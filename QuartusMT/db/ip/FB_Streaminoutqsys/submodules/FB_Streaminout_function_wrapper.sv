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

// SystemVerilog created from FB_Streaminout_function_wrapper
// Created for function/kernel FB_Streaminout
// SystemVerilog created on Fri Sep  8 10:45:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module FB_Streaminout_function_wrapper (
    input wire [31:0] avst_iord_bl_a_data,
    input wire [0:0] avst_iord_bl_a_valid,
    input wire [0:0] avst_iord_bl_call_FB_Streaminout_data,
    input wire [0:0] avst_iord_bl_call_FB_Streaminout_valid,
    input wire [0:0] avst_iowr_bl_b_almostfull,
    input wire [0:0] avst_iowr_bl_b_ready,
    input wire [0:0] avst_iowr_bl_return_FB_Streaminout_almostfull,
    input wire [0:0] avst_iowr_bl_return_FB_Streaminout_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_a_almost_full,
    output wire [0:0] avst_iord_bl_a_ready,
    output wire [0:0] avst_iord_bl_call_FB_Streaminout_almost_full,
    output wire [0:0] avst_iord_bl_call_FB_Streaminout_ready,
    output wire [31:0] avst_iowr_bl_b_data,
    output wire [0:0] avst_iowr_bl_b_valid,
    output wire [0:0] avst_iowr_bl_return_FB_Streaminout_data,
    output wire [0:0] avst_iowr_bl_return_FB_Streaminout_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] FB_Streaminout_function_out_iord_bl_a_o_fifoalmost_full;
    wire [0:0] FB_Streaminout_function_out_iord_bl_a_o_fifoready;
    wire [0:0] FB_Streaminout_function_out_iord_bl_call_FB_Streaminout_o_fifoalmost_full;
    wire [0:0] FB_Streaminout_function_out_iord_bl_call_FB_Streaminout_o_fifoready;
    wire [31:0] FB_Streaminout_function_out_iowr_bl_b_o_fifodata;
    wire [0:0] FB_Streaminout_function_out_iowr_bl_b_o_fifovalid;
    wire [0:0] FB_Streaminout_function_out_iowr_bl_return_FB_Streaminout_o_fifodata;
    wire [0:0] FB_Streaminout_function_out_iowr_bl_return_FB_Streaminout_o_fifovalid;
    wire [63:0] a_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,23)
    assign not_stall_q = ~ (stall);

    // a_const(CONSTANT,3)
    assign a_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // FB_Streaminout_function(BLACKBOX,2)
    FB_Streaminout_function theFB_Streaminout_function (
        .in_arg_a(a_const_q),
        .in_arg_b(a_const_q),
        .in_arg_call(a_const_q),
        .in_arg_return(a_const_q),
        .in_iord_bl_a_i_fifodata(avst_iord_bl_a_data),
        .in_iord_bl_a_i_fifovalid(avst_iord_bl_a_valid),
        .in_iord_bl_call_FB_Streaminout_i_fifodata(avst_iord_bl_call_FB_Streaminout_data),
        .in_iord_bl_call_FB_Streaminout_i_fifovalid(start),
        .in_iowr_bl_b_i_fifoready(avst_iowr_bl_b_ready),
        .in_iowr_bl_return_FB_Streaminout_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_a_o_fifoalmost_full(FB_Streaminout_function_out_iord_bl_a_o_fifoalmost_full),
        .out_iord_bl_a_o_fifoready(FB_Streaminout_function_out_iord_bl_a_o_fifoready),
        .out_iord_bl_call_FB_Streaminout_o_fifoalmost_full(FB_Streaminout_function_out_iord_bl_call_FB_Streaminout_o_fifoalmost_full),
        .out_iord_bl_call_FB_Streaminout_o_fifoready(FB_Streaminout_function_out_iord_bl_call_FB_Streaminout_o_fifoready),
        .out_iowr_bl_b_o_fifodata(FB_Streaminout_function_out_iowr_bl_b_o_fifodata),
        .out_iowr_bl_b_o_fifovalid(FB_Streaminout_function_out_iowr_bl_b_o_fifovalid),
        .out_iowr_bl_return_FB_Streaminout_o_fifodata(FB_Streaminout_function_out_iowr_bl_return_FB_Streaminout_o_fifodata),
        .out_iowr_bl_return_FB_Streaminout_o_fifovalid(FB_Streaminout_function_out_iowr_bl_return_FB_Streaminout_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_a_almost_full(GPOUT,24)
    assign avst_iord_bl_a_almost_full = FB_Streaminout_function_out_iord_bl_a_o_fifoalmost_full;

    // avst_iord_bl_a_ready(GPOUT,25)
    assign avst_iord_bl_a_ready = FB_Streaminout_function_out_iord_bl_a_o_fifoready;

    // avst_iord_bl_call_FB_Streaminout_almost_full(GPOUT,26)
    assign avst_iord_bl_call_FB_Streaminout_almost_full = FB_Streaminout_function_out_iord_bl_call_FB_Streaminout_o_fifoalmost_full;

    // avst_iord_bl_call_FB_Streaminout_ready(GPOUT,27)
    assign avst_iord_bl_call_FB_Streaminout_ready = FB_Streaminout_function_out_iord_bl_call_FB_Streaminout_o_fifoready;

    // avst_iowr_bl_b_data(GPOUT,28)
    assign avst_iowr_bl_b_data = FB_Streaminout_function_out_iowr_bl_b_o_fifodata;

    // avst_iowr_bl_b_valid(GPOUT,29)
    assign avst_iowr_bl_b_valid = FB_Streaminout_function_out_iowr_bl_b_o_fifovalid;

    // avst_iowr_bl_return_FB_Streaminout_data(GPOUT,30)
    assign avst_iowr_bl_return_FB_Streaminout_data = FB_Streaminout_function_out_iowr_bl_return_FB_Streaminout_o_fifodata;

    // avst_iowr_bl_return_FB_Streaminout_valid(GPOUT,31)
    assign avst_iowr_bl_return_FB_Streaminout_valid = FB_Streaminout_function_out_iowr_bl_return_FB_Streaminout_o_fifovalid;

    // not_ready(LOGICAL,22)
    assign not_ready_q = ~ (FB_Streaminout_function_out_iord_bl_call_FB_Streaminout_o_fifoready);

    // busy_and(LOGICAL,5)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,35)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,34)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,6)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,32)
    assign busy = busy_or_q;

    // done(GPOUT,33)
    assign done = FB_Streaminout_function_out_iowr_bl_return_FB_Streaminout_o_fifovalid;

endmodule
