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

// SystemVerilog created from task_1_function
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_task_1_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_s0_global,
    input wire [63:0] in_arg_s1_global,
    input wire [0:0] in_iord_bl_call_task_1_i_fifodata,
    input wire [0:0] in_iord_bl_call_task_1_i_fifovalid,
    input wire [31:0] in_iord_bl_s0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_task_1_i_fifoready,
    input wire [0:0] in_iowr_bl_s1_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_task_1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_task_1_o_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s0_o_fifoready,
    output wire [0:0] out_iowr_bl_return_task_1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_task_1_o_fifovalid,
    output wire [31:0] out_iowr_bl_s1_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_task_1_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_task_1_B1_start_out_iord_bl_call_task_1_o_fifoalmost_full;
    wire [0:0] bb_task_1_B1_start_out_iord_bl_call_task_1_o_fifoready;
    wire [0:0] bb_task_1_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_task_1_B1_start_out_stall_out_0;
    wire [0:0] bb_task_1_B1_start_out_valid_in_0;
    wire [0:0] bb_task_1_B1_start_out_valid_in_1;
    wire [0:0] bb_task_1_B1_start_out_valid_out_0;
    wire [0:0] bb_task_1_B2_out_exiting_stall_out;
    wire [0:0] bb_task_1_B2_out_exiting_valid_out;
    wire [0:0] bb_task_1_B2_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] bb_task_1_B2_out_iord_bl_s0_o_fifoready;
    wire [31:0] bb_task_1_B2_out_iowr_bl_s1_o_fifodata;
    wire [0:0] bb_task_1_B2_out_iowr_bl_s1_o_fifovalid;
    wire [0:0] bb_task_1_B2_out_pipeline_valid_out;
    wire [0:0] bb_task_1_B2_out_stall_in_0;
    wire [0:0] bb_task_1_B2_out_stall_out_0;
    wire [0:0] bb_task_1_B2_out_stall_out_1;
    wire [0:0] bb_task_1_B2_out_valid_in_0;
    wire [0:0] bb_task_1_B2_out_valid_in_1;
    wire [0:0] bb_task_1_B2_out_valid_out_0;
    wire [0:0] bb_task_1_B3_out_iowr_bl_return_task_1_o_fifodata;
    wire [0:0] bb_task_1_B3_out_iowr_bl_return_task_1_o_fifovalid;
    wire [0:0] bb_task_1_B3_out_stall_in_0;
    wire [0:0] bb_task_1_B3_out_stall_out_0;
    wire [0:0] bb_task_1_B3_out_valid_out_0;
    wire [1:0] c_i2_010_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going2_task_11_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going2_task_11_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_16_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_16_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_task_10_out_o_stall;
    wire [0:0] loop_limiter_task_10_out_o_valid;
    wire [0:0] task_1_B1_start_x_i_capture;
    wire task_1_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_clear;
    wire task_1_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_enable;
    wire task_1_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_shift;
    wire task_1_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_stall_pred;
    wire task_1_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_stall_succ;
    wire task_1_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_valid_loop;
    wire task_1_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_valid_pred;
    wire task_1_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] task_1_B1_start_x_i_valid_succ;
    wire task_1_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_capture;
    wire task_1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_clear;
    wire task_1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_enable;
    wire task_1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_shift;
    wire task_1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_stall_pred;
    wire task_1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_stall_succ;
    wire task_1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_valid_loop;
    wire task_1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_valid_pred;
    wire task_1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] task_1_B2_x_i_valid_succ;
    wire task_1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_task_1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_task_1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_task_1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_task_1_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_task_1_B3_sr_0_aunroll_x_out_o_valid;


    // c_i2_010(CONSTANT,18)
    assign c_i2_010_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo(BLACKBOX,22)
    foo_i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo thei_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo (
        .in_data_in(c_i2_010_q),
        .in_stall_in(bb_task_1_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going2_task_11_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo(BLACKBOX,24)
    foo_i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo thei_llvm_fpga_pipeline_keep_going_task_16_valid_fifo (
        .in_data_in(c_i2_010_q),
        .in_stall_in(bb_task_1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_task_16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_task_1_B3(BLACKBOX,5)
    foo_bb_task_1_B3 thebb_task_1_B3 (
        .in_iowr_bl_return_task_1_i_fifoready(in_iowr_bl_return_task_1_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_task_1_B3_sr_0_aunroll_x_out_o_valid),
        .out_iowr_bl_return_task_1_o_fifodata(bb_task_1_B3_out_iowr_bl_return_task_1_o_fifodata),
        .out_iowr_bl_return_task_1_o_fifovalid(bb_task_1_B3_out_iowr_bl_return_task_1_o_fifovalid),
        .out_stall_in_0(bb_task_1_B3_out_stall_in_0),
        .out_stall_out_0(bb_task_1_B3_out_stall_out_0),
        .out_valid_out_0(bb_task_1_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_task_1_B3_sr_0_aunroll_x(BLACKBOX,51)
    foo_bb_task_1_B3_sr_0 thebb_task_1_B3_sr_0_aunroll_x (
        .in_i_stall(bb_task_1_B3_out_stall_out_0),
        .in_i_valid(bb_task_1_B2_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_task_1_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_task_1_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_task_16_sr(BLACKBOX,23)
    foo_i_llvm_fpga_pipeline_keep_going_task_16_sr thei_llvm_fpga_pipeline_keep_going_task_16_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo_out_stall_out),
        .in_i_valid(bb_task_1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_task_16_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_task_16_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_task_1_B2(BLACKBOX,4)
    foo_bb_task_1_B2 thebb_task_1_B2 (
        .in_forked_0(GND_q),
        .in_forked_1(bb_task_1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_s0_i_fifodata(in_iord_bl_s0_i_fifodata),
        .in_iord_bl_s0_i_fifovalid(in_iord_bl_s0_i_fifovalid),
        .in_iowr_bl_s1_i_fifoready(in_iowr_bl_s1_i_fifoready),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_task_16_sr_out_o_stall),
        .in_stall_in_0(bb_task_1_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_task_16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_task_1_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_task_1_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_task_1_B2_out_exiting_valid_out),
        .out_iord_bl_s0_o_fifoalmost_full(bb_task_1_B2_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(bb_task_1_B2_out_iord_bl_s0_o_fifoready),
        .out_iowr_bl_s1_o_fifodata(bb_task_1_B2_out_iowr_bl_s1_o_fifodata),
        .out_iowr_bl_s1_o_fifovalid(bb_task_1_B2_out_iowr_bl_s1_o_fifovalid),
        .out_pipeline_valid_out(bb_task_1_B2_out_pipeline_valid_out),
        .out_stall_in_0(bb_task_1_B2_out_stall_in_0),
        .out_stall_out_0(bb_task_1_B2_out_stall_out_0),
        .out_stall_out_1(bb_task_1_B2_out_stall_out_1),
        .out_valid_in_0(bb_task_1_B2_out_valid_in_0),
        .out_valid_in_1(bb_task_1_B2_out_valid_in_1),
        .out_valid_out_0(bb_task_1_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_task_1_B2_sr_1_aunroll_x(BLACKBOX,50)
    foo_bb_task_1_B2_sr_1 thebb_task_1_B2_sr_1_aunroll_x (
        .in_i_stall(bb_task_1_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_task_10_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_task_1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_task_1_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_task_1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_task_10(BLACKBOX,37)
    foo_loop_limiter_task_10 theloop_limiter_task_10 (
        .in_i_stall(bb_task_1_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_task_1_B2_out_exiting_stall_out),
        .in_i_valid(bb_task_1_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_task_1_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_task_10_out_o_stall),
        .out_o_valid(loop_limiter_task_10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going2_task_11_sr(BLACKBOX,21)
    foo_i_llvm_fpga_pipeline_keep_going2_task_11_sr thei_llvm_fpga_pipeline_keep_going2_task_11_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo_out_stall_out),
        .in_i_valid(bb_task_1_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going2_task_11_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going2_task_11_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_task_1_B1_start(BLACKBOX,3)
    foo_bb_task_1_B1_start thebb_task_1_B1_start (
        .in_iord_bl_call_task_1_i_fifodata(in_iord_bl_call_task_1_i_fifodata),
        .in_iord_bl_call_task_1_i_fifovalid(in_iord_bl_call_task_1_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going2_task_11_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_task_10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going2_task_11_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_call_task_1_o_fifoalmost_full(bb_task_1_B1_start_out_iord_bl_call_task_1_o_fifoalmost_full),
        .out_iord_bl_call_task_1_o_fifoready(bb_task_1_B1_start_out_iord_bl_call_task_1_o_fifoready),
        .out_pipeline_valid_out(bb_task_1_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_task_1_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_task_1_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_task_1_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_task_1_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_task_1_o_fifoalmost_full(GPOUT,38)
    assign out_iord_bl_call_task_1_o_fifoalmost_full = bb_task_1_B1_start_out_iord_bl_call_task_1_o_fifoalmost_full;

    // out_iord_bl_call_task_1_o_fifoready(GPOUT,39)
    assign out_iord_bl_call_task_1_o_fifoready = bb_task_1_B1_start_out_iord_bl_call_task_1_o_fifoready;

    // out_iord_bl_s0_o_fifoalmost_full(GPOUT,40)
    assign out_iord_bl_s0_o_fifoalmost_full = bb_task_1_B2_out_iord_bl_s0_o_fifoalmost_full;

    // out_iord_bl_s0_o_fifoready(GPOUT,41)
    assign out_iord_bl_s0_o_fifoready = bb_task_1_B2_out_iord_bl_s0_o_fifoready;

    // out_iowr_bl_return_task_1_o_fifodata(GPOUT,42)
    assign out_iowr_bl_return_task_1_o_fifodata = bb_task_1_B3_out_iowr_bl_return_task_1_o_fifodata;

    // out_iowr_bl_return_task_1_o_fifovalid(GPOUT,43)
    assign out_iowr_bl_return_task_1_o_fifovalid = bb_task_1_B3_out_iowr_bl_return_task_1_o_fifovalid;

    // out_iowr_bl_s1_o_fifodata(GPOUT,44)
    assign out_iowr_bl_s1_o_fifodata = bb_task_1_B2_out_iowr_bl_s1_o_fifodata;

    // out_iowr_bl_s1_o_fifovalid(GPOUT,45)
    assign out_iowr_bl_s1_o_fifovalid = bb_task_1_B2_out_iowr_bl_s1_o_fifovalid;

    // bb_task_1_B0_runOnce(BLACKBOX,2)
    foo_bb_task_1_B0_runOnce thebb_task_1_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_task_1_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,46)
    assign out_stall_out = bb_task_1_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,47)
    assign out_valid_out = GND_q;

    // task_1_B1_start_x(EXTIFACE,48)
    assign task_1_B1_start_x_i_capture = GND_q;
    assign task_1_B1_start_x_i_clear = GND_q;
    assign task_1_B1_start_x_i_enable = VCC_q;
    assign task_1_B1_start_x_i_shift = GND_q;
    assign task_1_B1_start_x_i_stall_pred = GND_q;
    assign task_1_B1_start_x_i_stall_succ = bb_task_1_B3_out_stall_in_0;
    assign task_1_B1_start_x_i_valid_loop = bb_task_1_B1_start_out_valid_in_0;
    assign task_1_B1_start_x_i_valid_pred = bb_task_1_B1_start_out_valid_in_1;
    assign task_1_B1_start_x_i_valid_succ = bb_task_1_B3_out_valid_out_0;
    assign task_1_B1_start_x_i_capture_bitsignaltemp = task_1_B1_start_x_i_capture[0];
    assign task_1_B1_start_x_i_clear_bitsignaltemp = task_1_B1_start_x_i_clear[0];
    assign task_1_B1_start_x_i_enable_bitsignaltemp = task_1_B1_start_x_i_enable[0];
    assign task_1_B1_start_x_i_shift_bitsignaltemp = task_1_B1_start_x_i_shift[0];
    assign task_1_B1_start_x_i_stall_pred_bitsignaltemp = task_1_B1_start_x_i_stall_pred[0];
    assign task_1_B1_start_x_i_stall_succ_bitsignaltemp = task_1_B1_start_x_i_stall_succ[0];
    assign task_1_B1_start_x_i_valid_loop_bitsignaltemp = task_1_B1_start_x_i_valid_loop[0];
    assign task_1_B1_start_x_i_valid_pred_bitsignaltemp = task_1_B1_start_x_i_valid_pred[0];
    assign task_1_B1_start_x_i_valid_succ_bitsignaltemp = task_1_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("task_1.B1.start")
    ) thetask_1_B1_start_x (
        .i_capture(task_1_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(task_1_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(task_1_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(task_1_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(task_1_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(task_1_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(task_1_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(task_1_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(task_1_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // task_1_B2_x(EXTIFACE,49)
    assign task_1_B2_x_i_capture = GND_q;
    assign task_1_B2_x_i_clear = GND_q;
    assign task_1_B2_x_i_enable = VCC_q;
    assign task_1_B2_x_i_shift = GND_q;
    assign task_1_B2_x_i_stall_pred = loop_limiter_task_10_out_o_stall;
    assign task_1_B2_x_i_stall_succ = bb_task_1_B2_out_stall_in_0;
    assign task_1_B2_x_i_valid_loop = bb_task_1_B2_out_valid_in_0;
    assign task_1_B2_x_i_valid_pred = bb_task_1_B2_out_valid_in_1;
    assign task_1_B2_x_i_valid_succ = bb_task_1_B2_out_valid_out_0;
    assign task_1_B2_x_i_capture_bitsignaltemp = task_1_B2_x_i_capture[0];
    assign task_1_B2_x_i_clear_bitsignaltemp = task_1_B2_x_i_clear[0];
    assign task_1_B2_x_i_enable_bitsignaltemp = task_1_B2_x_i_enable[0];
    assign task_1_B2_x_i_shift_bitsignaltemp = task_1_B2_x_i_shift[0];
    assign task_1_B2_x_i_stall_pred_bitsignaltemp = task_1_B2_x_i_stall_pred[0];
    assign task_1_B2_x_i_stall_succ_bitsignaltemp = task_1_B2_x_i_stall_succ[0];
    assign task_1_B2_x_i_valid_loop_bitsignaltemp = task_1_B2_x_i_valid_loop[0];
    assign task_1_B2_x_i_valid_pred_bitsignaltemp = task_1_B2_x_i_valid_pred[0];
    assign task_1_B2_x_i_valid_succ_bitsignaltemp = task_1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("task_1.B2")
    ) thetask_1_B2_x (
        .i_capture(task_1_B2_x_i_capture_bitsignaltemp),
        .i_clear(task_1_B2_x_i_clear_bitsignaltemp),
        .i_enable(task_1_B2_x_i_enable_bitsignaltemp),
        .i_shift(task_1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(task_1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(task_1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(task_1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(task_1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(task_1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
