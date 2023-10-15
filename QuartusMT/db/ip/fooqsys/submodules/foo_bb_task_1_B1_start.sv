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

// SystemVerilog created from bb_task_1_B1_start
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_task_1_B1_start (
    input wire [0:0] in_iord_bl_call_task_1_i_fifodata,
    input wire [0:0] in_iord_bl_call_task_1_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_call_task_1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_task_1_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_task_1_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_stall_out;
    wire [0:0] bb_task_1_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_valid_out;
    wire [0:0] bb_task_1_B1_start_stall_region_out_iord_bl_call_task_1_o_fifoalmost_full;
    wire [0:0] bb_task_1_B1_start_stall_region_out_iord_bl_call_task_1_o_fifoready;
    wire [0:0] bb_task_1_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_task_1_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_task_1_B1_start_stall_region_out_valid_out;
    wire [0:0] task_1_B1_start_branch_out_stall_out;
    wire [0:0] task_1_B1_start_branch_out_valid_out_0;
    wire [0:0] task_1_B1_start_merge_out_stall_out_0;
    wire [0:0] task_1_B1_start_merge_out_stall_out_1;
    wire [0:0] task_1_B1_start_merge_out_valid_out;


    // task_1_B1_start_merge(BLACKBOX,20)
    foo_task_1_B1_start_merge thetask_1_B1_start_merge (
        .in_stall_in(bb_task_1_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(task_1_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(task_1_B1_start_merge_out_stall_out_1),
        .out_valid_out(task_1_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // task_1_B1_start_branch(BLACKBOX,19)
    foo_task_1_B1_start_branch thetask_1_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_task_1_B1_start_stall_region_out_valid_out),
        .out_stall_out(task_1_B1_start_branch_out_stall_out),
        .out_valid_out_0(task_1_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_task_1_B1_start_stall_region(BLACKBOX,2)
    foo_bb_task_1_B1_start_stall_region thebb_task_1_B1_start_stall_region (
        .in_iord_bl_call_task_1_i_fifodata(in_iord_bl_call_task_1_i_fifodata),
        .in_iord_bl_call_task_1_i_fifovalid(in_iord_bl_call_task_1_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(task_1_B1_start_branch_out_stall_out),
        .in_valid_in(task_1_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_stall_out(bb_task_1_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_valid_out(bb_task_1_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_valid_out),
        .out_iord_bl_call_task_1_o_fifoalmost_full(bb_task_1_B1_start_stall_region_out_iord_bl_call_task_1_o_fifoalmost_full),
        .out_iord_bl_call_task_1_o_fifoready(bb_task_1_B1_start_stall_region_out_iord_bl_call_task_1_o_fifoready),
        .out_pipeline_valid_out(bb_task_1_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_task_1_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_task_1_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,8)
    assign out_exiting_stall_out = bb_task_1_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,9)
    assign out_exiting_valid_out = bb_task_1_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going2_task_11_exiting_valid_out;

    // out_iord_bl_call_task_1_o_fifoalmost_full(GPOUT,10)
    assign out_iord_bl_call_task_1_o_fifoalmost_full = bb_task_1_B1_start_stall_region_out_iord_bl_call_task_1_o_fifoalmost_full;

    // out_iord_bl_call_task_1_o_fifoready(GPOUT,11)
    assign out_iord_bl_call_task_1_o_fifoready = bb_task_1_B1_start_stall_region_out_iord_bl_call_task_1_o_fifoready;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = task_1_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,13)
    assign out_stall_out_1 = task_1_B1_start_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,14)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,15)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = task_1_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = bb_task_1_B1_start_stall_region_out_pipeline_valid_out;

endmodule
