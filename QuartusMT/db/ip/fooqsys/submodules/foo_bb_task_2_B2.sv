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

// SystemVerilog created from bb_task_2_B2
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_task_2_B2 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_iord_bl_s1_i_fifodata,
    input wire [0:0] in_iord_bl_s1_i_fifovalid,
    input wire [0:0] in_iowr_bl_s2_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_s1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s1_o_fifoready,
    output wire [31:0] out_iowr_bl_s2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_o_fifovalid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_task_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out;
    wire [0:0] bb_task_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out;
    wire [0:0] bb_task_2_B2_stall_region_out_c0_exe3;
    wire [0:0] bb_task_2_B2_stall_region_out_iord_bl_s1_o_fifoalmost_full;
    wire [0:0] bb_task_2_B2_stall_region_out_iord_bl_s1_o_fifoready;
    wire [31:0] bb_task_2_B2_stall_region_out_iowr_bl_s2_o_fifodata;
    wire [0:0] bb_task_2_B2_stall_region_out_iowr_bl_s2_o_fifovalid;
    wire [0:0] bb_task_2_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_task_2_B2_stall_region_out_stall_out;
    wire [0:0] bb_task_2_B2_stall_region_out_valid_out;
    wire [0:0] task_2_B2_branch_out_stall_out;
    wire [0:0] task_2_B2_branch_out_valid_out_0;
    wire [0:0] task_2_B2_branch_out_valid_out_1;
    wire [0:0] task_2_B2_merge_out_forked;
    wire [0:0] task_2_B2_merge_out_stall_out_0;
    wire [0:0] task_2_B2_merge_out_stall_out_1;
    wire [0:0] task_2_B2_merge_out_valid_out;


    // task_2_B2_branch(BLACKBOX,27)
    foo_task_2_B2_branch thetask_2_B2_branch (
        .in_c0_exe3(bb_task_2_B2_stall_region_out_c0_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_task_2_B2_stall_region_out_valid_out),
        .out_stall_out(task_2_B2_branch_out_stall_out),
        .out_valid_out_0(task_2_B2_branch_out_valid_out_0),
        .out_valid_out_1(task_2_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // task_2_B2_merge(BLACKBOX,28)
    foo_task_2_B2_merge thetask_2_B2_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_task_2_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(task_2_B2_merge_out_forked),
        .out_stall_out_0(task_2_B2_merge_out_stall_out_0),
        .out_stall_out_1(task_2_B2_merge_out_stall_out_1),
        .out_valid_out(task_2_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_task_2_B2_stall_region(BLACKBOX,2)
    foo_bb_task_2_B2_stall_region thebb_task_2_B2_stall_region (
        .in_forked(task_2_B2_merge_out_forked),
        .in_iord_bl_s1_i_fifodata(in_iord_bl_s1_i_fifodata),
        .in_iord_bl_s1_i_fifovalid(in_iord_bl_s1_i_fifovalid),
        .in_iowr_bl_s2_i_fifoready(in_iowr_bl_s2_i_fifoready),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(task_2_B2_branch_out_stall_out),
        .in_valid_in(task_2_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out(bb_task_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out(bb_task_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out),
        .out_c0_exe3(bb_task_2_B2_stall_region_out_c0_exe3),
        .out_iord_bl_s1_o_fifoalmost_full(bb_task_2_B2_stall_region_out_iord_bl_s1_o_fifoalmost_full),
        .out_iord_bl_s1_o_fifoready(bb_task_2_B2_stall_region_out_iord_bl_s1_o_fifoready),
        .out_iowr_bl_s2_o_fifodata(bb_task_2_B2_stall_region_out_iowr_bl_s2_o_fifodata),
        .out_iowr_bl_s2_o_fifovalid(bb_task_2_B2_stall_region_out_iowr_bl_s2_o_fifovalid),
        .out_pipeline_valid_out(bb_task_2_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_task_2_B2_stall_region_out_stall_out),
        .out_valid_out(bb_task_2_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,12)
    assign out_exiting_stall_out = bb_task_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,13)
    assign out_exiting_valid_out = bb_task_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out;

    // out_iord_bl_s1_o_fifoalmost_full(GPOUT,14)
    assign out_iord_bl_s1_o_fifoalmost_full = bb_task_2_B2_stall_region_out_iord_bl_s1_o_fifoalmost_full;

    // out_iord_bl_s1_o_fifoready(GPOUT,15)
    assign out_iord_bl_s1_o_fifoready = bb_task_2_B2_stall_region_out_iord_bl_s1_o_fifoready;

    // out_iowr_bl_s2_o_fifodata(GPOUT,16)
    assign out_iowr_bl_s2_o_fifodata = bb_task_2_B2_stall_region_out_iowr_bl_s2_o_fifodata;

    // out_iowr_bl_s2_o_fifovalid(GPOUT,17)
    assign out_iowr_bl_s2_o_fifovalid = bb_task_2_B2_stall_region_out_iowr_bl_s2_o_fifovalid;

    // out_stall_in_0(GPOUT,18)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = task_2_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,20)
    assign out_stall_out_1 = task_2_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,21)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,22)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = task_2_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,24)
    assign out_valid_out_1 = task_2_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,26)
    assign out_pipeline_valid_out = bb_task_2_B2_stall_region_out_pipeline_valid_out;

endmodule
