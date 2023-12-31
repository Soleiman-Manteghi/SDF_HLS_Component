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

// SystemVerilog created from bb_ihc_B1
// Created for function/kernel ActorSIMOToken4
// SystemVerilog created on Mon Sep 18 22:56:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSIMOToken4_bb_ihc_B1 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_iord_bl_s2_0_i_fifodata,
    input wire [0:0] in_iord_bl_s2_0_i_fifovalid,
    input wire [31:0] in_iord_bl_s2_1_i_fifodata,
    input wire [0:0] in_iord_bl_s2_1_i_fifovalid,
    input wire [31:0] in_iord_bl_s2_2_i_fifodata,
    input wire [0:0] in_iord_bl_s2_2_i_fifovalid,
    input wire [31:0] in_iord_bl_s2_3_i_fifodata,
    input wire [0:0] in_iord_bl_s2_3_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_s2_0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s2_0_o_fifoready,
    output wire [0:0] out_iord_bl_s2_1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s2_1_o_fifoready,
    output wire [0:0] out_iord_bl_s2_2_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s2_2_o_fifoready,
    output wire [0:0] out_iord_bl_s2_3_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s2_3_o_fifoready,
    output wire [0:0] out_stall_in_0,
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

    wire [0:0] bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;
    wire [0:0] bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_0_o_fifoalmost_full;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_0_o_fifoready;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_1_o_fifoalmost_full;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_1_o_fifoready;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_2_o_fifoalmost_full;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_2_o_fifoready;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_3_o_fifoalmost_full;
    wire [0:0] bb_ihc_B1_stall_region_out_iord_bl_s2_3_o_fifoready;
    wire [0:0] bb_ihc_B1_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ihc_B1_stall_region_out_stall_out;
    wire [0:0] bb_ihc_B1_stall_region_out_valid_out;
    wire [0:0] ihc_B1_branch_out_stall_out;
    wire [0:0] ihc_B1_branch_out_valid_out_0;
    wire [0:0] ihc_B1_merge_out_forked;
    wire [0:0] ihc_B1_merge_out_stall_out_0;
    wire [0:0] ihc_B1_merge_out_stall_out_1;
    wire [0:0] ihc_B1_merge_out_valid_out;


    // ihc_B1_branch(BLACKBOX,3)
    ActorSIMOToken4_ihc_B1_branch theihc_B1_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ihc_B1_stall_region_out_valid_out),
        .out_stall_out(ihc_B1_branch_out_stall_out),
        .out_valid_out_0(ihc_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // ihc_B1_merge(BLACKBOX,4)
    ActorSIMOToken4_ihc_B1_merge theihc_B1_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_ihc_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(ihc_B1_merge_out_forked),
        .out_stall_out_0(ihc_B1_merge_out_stall_out_0),
        .out_stall_out_1(ihc_B1_merge_out_stall_out_1),
        .out_valid_out(ihc_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ihc_B1_stall_region(BLACKBOX,2)
    ActorSIMOToken4_bb_ihc_B1_stall_region thebb_ihc_B1_stall_region (
        .in_forked(ihc_B1_merge_out_forked),
        .in_iord_bl_s2_0_i_fifodata(in_iord_bl_s2_0_i_fifodata),
        .in_iord_bl_s2_0_i_fifovalid(in_iord_bl_s2_0_i_fifovalid),
        .in_iord_bl_s2_1_i_fifodata(in_iord_bl_s2_1_i_fifodata),
        .in_iord_bl_s2_1_i_fifovalid(in_iord_bl_s2_1_i_fifovalid),
        .in_iord_bl_s2_2_i_fifodata(in_iord_bl_s2_2_i_fifodata),
        .in_iord_bl_s2_2_i_fifovalid(in_iord_bl_s2_2_i_fifovalid),
        .in_iord_bl_s2_3_i_fifodata(in_iord_bl_s2_3_i_fifodata),
        .in_iord_bl_s2_3_i_fifovalid(in_iord_bl_s2_3_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(ihc_B1_branch_out_stall_out),
        .in_valid_in(ihc_B1_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out(bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out(bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out),
        .out_iord_bl_s2_0_o_fifoalmost_full(bb_ihc_B1_stall_region_out_iord_bl_s2_0_o_fifoalmost_full),
        .out_iord_bl_s2_0_o_fifoready(bb_ihc_B1_stall_region_out_iord_bl_s2_0_o_fifoready),
        .out_iord_bl_s2_1_o_fifoalmost_full(bb_ihc_B1_stall_region_out_iord_bl_s2_1_o_fifoalmost_full),
        .out_iord_bl_s2_1_o_fifoready(bb_ihc_B1_stall_region_out_iord_bl_s2_1_o_fifoready),
        .out_iord_bl_s2_2_o_fifoalmost_full(bb_ihc_B1_stall_region_out_iord_bl_s2_2_o_fifoalmost_full),
        .out_iord_bl_s2_2_o_fifoready(bb_ihc_B1_stall_region_out_iord_bl_s2_2_o_fifoready),
        .out_iord_bl_s2_3_o_fifoalmost_full(bb_ihc_B1_stall_region_out_iord_bl_s2_3_o_fifoalmost_full),
        .out_iord_bl_s2_3_o_fifoready(bb_ihc_B1_stall_region_out_iord_bl_s2_3_o_fifoready),
        .out_pipeline_valid_out(bb_ihc_B1_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_ihc_B1_stall_region_out_stall_out),
        .out_valid_out(bb_ihc_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;

    // out_iord_bl_s2_0_o_fifoalmost_full(GPOUT,20)
    assign out_iord_bl_s2_0_o_fifoalmost_full = bb_ihc_B1_stall_region_out_iord_bl_s2_0_o_fifoalmost_full;

    // out_iord_bl_s2_0_o_fifoready(GPOUT,21)
    assign out_iord_bl_s2_0_o_fifoready = bb_ihc_B1_stall_region_out_iord_bl_s2_0_o_fifoready;

    // out_iord_bl_s2_1_o_fifoalmost_full(GPOUT,22)
    assign out_iord_bl_s2_1_o_fifoalmost_full = bb_ihc_B1_stall_region_out_iord_bl_s2_1_o_fifoalmost_full;

    // out_iord_bl_s2_1_o_fifoready(GPOUT,23)
    assign out_iord_bl_s2_1_o_fifoready = bb_ihc_B1_stall_region_out_iord_bl_s2_1_o_fifoready;

    // out_iord_bl_s2_2_o_fifoalmost_full(GPOUT,24)
    assign out_iord_bl_s2_2_o_fifoalmost_full = bb_ihc_B1_stall_region_out_iord_bl_s2_2_o_fifoalmost_full;

    // out_iord_bl_s2_2_o_fifoready(GPOUT,25)
    assign out_iord_bl_s2_2_o_fifoready = bb_ihc_B1_stall_region_out_iord_bl_s2_2_o_fifoready;

    // out_iord_bl_s2_3_o_fifoalmost_full(GPOUT,26)
    assign out_iord_bl_s2_3_o_fifoalmost_full = bb_ihc_B1_stall_region_out_iord_bl_s2_3_o_fifoalmost_full;

    // out_iord_bl_s2_3_o_fifoready(GPOUT,27)
    assign out_iord_bl_s2_3_o_fifoready = bb_ihc_B1_stall_region_out_iord_bl_s2_3_o_fifoready;

    // out_stall_in_0(GPOUT,28)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = ihc_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = ihc_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,31)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,32)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = ihc_B1_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,35)
    assign out_pipeline_valid_out = bb_ihc_B1_stall_region_out_pipeline_valid_out;

endmodule
