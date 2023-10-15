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

// SystemVerilog created from PWappersalways_function
// Created for function/kernel PWappersalways
// SystemVerilog created on Sun Sep 10 08:11:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module PWappersalways_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_call_PWappersalways_i_fifodata,
    input wire [0:0] in_iord_bl_call_PWappersalways_i_fifovalid,
    input wire [0:0] in_iowr_bl_call_ihc_1_i_fifoready,
    input wire [0:0] in_iowr_bl_call_ihc_2_i_fifoready,
    input wire [0:0] in_iowr_bl_call_ihc_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_PWappersalways_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_PWappersalways_o_fifoready,
    output wire [0:0] out_iowr_bl_call_ihc_1_o_fifodata,
    output wire [0:0] out_iowr_bl_call_ihc_1_o_fifovalid,
    output wire [0:0] out_iowr_bl_call_ihc_2_o_fifodata,
    output wire [0:0] out_iowr_bl_call_ihc_2_o_fifovalid,
    output wire [0:0] out_iowr_bl_call_ihc_o_fifodata,
    output wire [0:0] out_iowr_bl_call_ihc_o_fifovalid,
    output wire [0:0] out_iowr_nb_return_PWappersalways_o_fifodata,
    output wire [0:0] out_iowr_nb_return_PWappersalways_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] PWappersalways_B1_start_x_i_capture;
    wire PWappersalways_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_clear;
    wire PWappersalways_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_enable;
    wire PWappersalways_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_shift;
    wire PWappersalways_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_stall_pred;
    wire PWappersalways_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_stall_succ;
    wire PWappersalways_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_valid_loop;
    wire PWappersalways_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_valid_pred;
    wire PWappersalways_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] PWappersalways_B1_start_x_i_valid_succ;
    wire PWappersalways_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_1_o_fifodata;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_1_o_fifovalid;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_2_o_fifodata;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_2_o_fifovalid;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_o_fifodata;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_o_fifovalid;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_PWappersalways_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_PWappersalways_B1_start_out_iord_bl_call_PWappersalways_o_fifoalmost_full;
    wire [0:0] bb_PWappersalways_B1_start_out_iord_bl_call_PWappersalways_o_fifoready;
    wire [0:0] bb_PWappersalways_B1_start_out_iowr_nb_return_PWappersalways_o_fifodata;
    wire [0:0] bb_PWappersalways_B1_start_out_iowr_nb_return_PWappersalways_o_fifovalid;
    wire [0:0] bb_PWappersalways_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_PWappersalways_B1_start_out_stall_in_0;
    wire [0:0] bb_PWappersalways_B1_start_out_stall_out_0;
    wire [0:0] bb_PWappersalways_B1_start_out_stall_out_1;
    wire [0:0] bb_PWappersalways_B1_start_out_valid_in_0;
    wire [0:0] bb_PWappersalways_B1_start_out_valid_in_1;
    wire [0:0] bb_PWappersalways_B1_start_out_valid_out_0;
    wire [1:0] c_i2_04_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_pwappersalways1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_pwappersalways1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo_out_valid_out;
    wire [0:0] bb_PWappersalways_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_PWappersalways_B1_start_sr_1_aunroll_x_out_o_valid;


    // c_i2_04(CONSTANT,10)
    assign c_i2_04_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo(BLACKBOX,13)
    PWappersalways_i_llvm_fpga_pipeline_keep0000rsalways1_valid_fifo thei_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo (
        .in_data_in(c_i2_04_q),
        .in_stall_in(bb_PWappersalways_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_pwappersalways1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_pwappersalways1_sr(BLACKBOX,12)
    PWappersalways_i_llvm_fpga_pipeline_keep0000g_pwappersalways1_sr thei_llvm_fpga_pipeline_keep_going_pwappersalways1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo_out_stall_out),
        .in_i_valid(bb_PWappersalways_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_pwappersalways1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_pwappersalways1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_PWappersalways_B1_start(BLACKBOX,4)
    PWappersalways_bb_B1_start thebb_PWappersalways_B1_start (
        .in_iord_bl_call_PWappersalways_i_fifodata(in_iord_bl_call_PWappersalways_i_fifodata),
        .in_iord_bl_call_PWappersalways_i_fifovalid(in_iord_bl_call_PWappersalways_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_pwappersalways1_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_pwappersalways1_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_PWappersalways_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_call_PWappersalways_o_fifoalmost_full(bb_PWappersalways_B1_start_out_iord_bl_call_PWappersalways_o_fifoalmost_full),
        .out_iord_bl_call_PWappersalways_o_fifoready(bb_PWappersalways_B1_start_out_iord_bl_call_PWappersalways_o_fifoready),
        .out_iowr_nb_return_PWappersalways_o_fifodata(bb_PWappersalways_B1_start_out_iowr_nb_return_PWappersalways_o_fifodata),
        .out_iowr_nb_return_PWappersalways_o_fifovalid(bb_PWappersalways_B1_start_out_iowr_nb_return_PWappersalways_o_fifovalid),
        .out_pipeline_valid_out(bb_PWappersalways_B1_start_out_pipeline_valid_out),
        .out_stall_in_0(bb_PWappersalways_B1_start_out_stall_in_0),
        .out_stall_out_0(bb_PWappersalways_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_PWappersalways_B1_start_out_stall_out_1),
        .out_valid_in_0(bb_PWappersalways_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_PWappersalways_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_PWappersalways_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_PWappersalways_B0_runOnce(BLACKBOX,3)
    PWappersalways_bb_B0_runOnce thebb_PWappersalways_B0_runOnce (
        .in_iowr_bl_call_ihc_1_i_fifoready(in_iowr_bl_call_ihc_1_i_fifoready),
        .in_iowr_bl_call_ihc_2_i_fifoready(in_iowr_bl_call_ihc_2_i_fifoready),
        .in_iowr_bl_call_ihc_i_fifoready(in_iowr_bl_call_ihc_i_fifoready),
        .in_stall_in_0(bb_PWappersalways_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_iowr_bl_call_ihc_1_o_fifodata(bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_1_o_fifodata),
        .out_iowr_bl_call_ihc_1_o_fifovalid(bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_1_o_fifovalid),
        .out_iowr_bl_call_ihc_2_o_fifodata(bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_2_o_fifodata),
        .out_iowr_bl_call_ihc_2_o_fifovalid(bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_2_o_fifovalid),
        .out_iowr_bl_call_ihc_o_fifodata(bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_o_fifodata),
        .out_iowr_bl_call_ihc_o_fifovalid(bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_o_fifovalid),
        .out_stall_out_0(bb_PWappersalways_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_PWappersalways_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_PWappersalways_B1_start_sr_1_aunroll_x(BLACKBOX,35)
    PWappersalways_bb_B1_start_sr_1 thebb_PWappersalways_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_PWappersalways_B1_start_out_stall_out_1),
        .in_i_valid(bb_PWappersalways_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_PWappersalways_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_PWappersalways_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // PWappersalways_B1_start_x(EXTIFACE,2)
    assign PWappersalways_B1_start_x_i_capture = GND_q;
    assign PWappersalways_B1_start_x_i_clear = GND_q;
    assign PWappersalways_B1_start_x_i_enable = VCC_q;
    assign PWappersalways_B1_start_x_i_shift = GND_q;
    assign PWappersalways_B1_start_x_i_stall_pred = bb_PWappersalways_B1_start_sr_1_aunroll_x_out_o_stall;
    assign PWappersalways_B1_start_x_i_stall_succ = bb_PWappersalways_B1_start_out_stall_in_0;
    assign PWappersalways_B1_start_x_i_valid_loop = bb_PWappersalways_B1_start_out_valid_in_0;
    assign PWappersalways_B1_start_x_i_valid_pred = bb_PWappersalways_B1_start_out_valid_in_1;
    assign PWappersalways_B1_start_x_i_valid_succ = bb_PWappersalways_B1_start_out_valid_out_0;
    assign PWappersalways_B1_start_x_i_capture_bitsignaltemp = PWappersalways_B1_start_x_i_capture[0];
    assign PWappersalways_B1_start_x_i_clear_bitsignaltemp = PWappersalways_B1_start_x_i_clear[0];
    assign PWappersalways_B1_start_x_i_enable_bitsignaltemp = PWappersalways_B1_start_x_i_enable[0];
    assign PWappersalways_B1_start_x_i_shift_bitsignaltemp = PWappersalways_B1_start_x_i_shift[0];
    assign PWappersalways_B1_start_x_i_stall_pred_bitsignaltemp = PWappersalways_B1_start_x_i_stall_pred[0];
    assign PWappersalways_B1_start_x_i_stall_succ_bitsignaltemp = PWappersalways_B1_start_x_i_stall_succ[0];
    assign PWappersalways_B1_start_x_i_valid_loop_bitsignaltemp = PWappersalways_B1_start_x_i_valid_loop[0];
    assign PWappersalways_B1_start_x_i_valid_pred_bitsignaltemp = PWappersalways_B1_start_x_i_valid_pred[0];
    assign PWappersalways_B1_start_x_i_valid_succ_bitsignaltemp = PWappersalways_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("PWappersalways.B1.start")
    ) thePWappersalways_B1_start_x (
        .i_capture(PWappersalways_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(PWappersalways_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(PWappersalways_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(PWappersalways_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(PWappersalways_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(PWappersalways_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(PWappersalways_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(PWappersalways_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(PWappersalways_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_PWappersalways_o_fifoalmost_full(GPOUT,23)
    assign out_iord_bl_call_PWappersalways_o_fifoalmost_full = bb_PWappersalways_B1_start_out_iord_bl_call_PWappersalways_o_fifoalmost_full;

    // out_iord_bl_call_PWappersalways_o_fifoready(GPOUT,24)
    assign out_iord_bl_call_PWappersalways_o_fifoready = bb_PWappersalways_B1_start_out_iord_bl_call_PWappersalways_o_fifoready;

    // out_iowr_bl_call_ihc_1_o_fifodata(GPOUT,25)
    assign out_iowr_bl_call_ihc_1_o_fifodata = bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_1_o_fifodata;

    // out_iowr_bl_call_ihc_1_o_fifovalid(GPOUT,26)
    assign out_iowr_bl_call_ihc_1_o_fifovalid = bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_1_o_fifovalid;

    // out_iowr_bl_call_ihc_2_o_fifodata(GPOUT,27)
    assign out_iowr_bl_call_ihc_2_o_fifodata = bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_2_o_fifodata;

    // out_iowr_bl_call_ihc_2_o_fifovalid(GPOUT,28)
    assign out_iowr_bl_call_ihc_2_o_fifovalid = bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_2_o_fifovalid;

    // out_iowr_bl_call_ihc_o_fifodata(GPOUT,29)
    assign out_iowr_bl_call_ihc_o_fifodata = bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_o_fifodata;

    // out_iowr_bl_call_ihc_o_fifovalid(GPOUT,30)
    assign out_iowr_bl_call_ihc_o_fifovalid = bb_PWappersalways_B0_runOnce_out_iowr_bl_call_ihc_o_fifovalid;

    // out_iowr_nb_return_PWappersalways_o_fifodata(GPOUT,31)
    assign out_iowr_nb_return_PWappersalways_o_fifodata = bb_PWappersalways_B1_start_out_iowr_nb_return_PWappersalways_o_fifodata;

    // out_iowr_nb_return_PWappersalways_o_fifovalid(GPOUT,32)
    assign out_iowr_nb_return_PWappersalways_o_fifovalid = bb_PWappersalways_B1_start_out_iowr_nb_return_PWappersalways_o_fifovalid;

    // out_stall_out(GPOUT,33)
    assign out_stall_out = bb_PWappersalways_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = GND_q;

endmodule
