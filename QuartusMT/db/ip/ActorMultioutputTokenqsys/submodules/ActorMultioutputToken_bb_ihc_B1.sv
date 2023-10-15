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
// Created for function/kernel ActorMultioutputToken
// SystemVerilog created on Sun Sep 17 05:20:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorMultioutputToken_bb_ihc_B1 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_iowr_bl_s1_0_i_fifoready,
    input wire [0:0] in_iowr_bl_s1_1_i_fifoready,
    input wire [0:0] in_iowr_bl_s2_0_i_fifoready,
    input wire [0:0] in_iowr_bl_s2_1_i_fifoready,
    input wire [0:0] in_iowr_bl_s2_2_i_fifoready,
    input wire [0:0] in_iowr_bl_s2_3_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_iowr_bl_s1_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_0_o_fifovalid,
    output wire [31:0] out_iowr_bl_s1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_1_o_fifovalid,
    output wire [31:0] out_iowr_bl_s2_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_0_o_fifovalid,
    output wire [31:0] out_iowr_bl_s2_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_1_o_fifovalid,
    output wire [31:0] out_iowr_bl_s2_2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_2_o_fifovalid,
    output wire [31:0] out_iowr_bl_s2_3_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_3_o_fifovalid,
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
    wire [31:0] bb_ihc_B1_stall_region_out_iowr_bl_s1_0_o_fifodata;
    wire [0:0] bb_ihc_B1_stall_region_out_iowr_bl_s1_0_o_fifovalid;
    wire [31:0] bb_ihc_B1_stall_region_out_iowr_bl_s1_1_o_fifodata;
    wire [0:0] bb_ihc_B1_stall_region_out_iowr_bl_s1_1_o_fifovalid;
    wire [31:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_0_o_fifodata;
    wire [0:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_0_o_fifovalid;
    wire [31:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_1_o_fifodata;
    wire [0:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_1_o_fifovalid;
    wire [31:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_2_o_fifodata;
    wire [0:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_2_o_fifovalid;
    wire [31:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_3_o_fifodata;
    wire [0:0] bb_ihc_B1_stall_region_out_iowr_bl_s2_3_o_fifovalid;
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
    ActorMultioutputToken_ihc_B1_branch theihc_B1_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ihc_B1_stall_region_out_valid_out),
        .out_stall_out(ihc_B1_branch_out_stall_out),
        .out_valid_out_0(ihc_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // ihc_B1_merge(BLACKBOX,4)
    ActorMultioutputToken_ihc_B1_merge theihc_B1_merge (
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
    ActorMultioutputToken_bb_ihc_B1_stall_region thebb_ihc_B1_stall_region (
        .in_forked(ihc_B1_merge_out_forked),
        .in_iowr_bl_s1_0_i_fifoready(in_iowr_bl_s1_0_i_fifoready),
        .in_iowr_bl_s1_1_i_fifoready(in_iowr_bl_s1_1_i_fifoready),
        .in_iowr_bl_s2_0_i_fifoready(in_iowr_bl_s2_0_i_fifoready),
        .in_iowr_bl_s2_1_i_fifoready(in_iowr_bl_s2_1_i_fifoready),
        .in_iowr_bl_s2_2_i_fifoready(in_iowr_bl_s2_2_i_fifoready),
        .in_iowr_bl_s2_3_i_fifoready(in_iowr_bl_s2_3_i_fifoready),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(ihc_B1_branch_out_stall_out),
        .in_valid_in(ihc_B1_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out(bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out(bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out),
        .out_iowr_bl_s1_0_o_fifodata(bb_ihc_B1_stall_region_out_iowr_bl_s1_0_o_fifodata),
        .out_iowr_bl_s1_0_o_fifovalid(bb_ihc_B1_stall_region_out_iowr_bl_s1_0_o_fifovalid),
        .out_iowr_bl_s1_1_o_fifodata(bb_ihc_B1_stall_region_out_iowr_bl_s1_1_o_fifodata),
        .out_iowr_bl_s1_1_o_fifovalid(bb_ihc_B1_stall_region_out_iowr_bl_s1_1_o_fifovalid),
        .out_iowr_bl_s2_0_o_fifodata(bb_ihc_B1_stall_region_out_iowr_bl_s2_0_o_fifodata),
        .out_iowr_bl_s2_0_o_fifovalid(bb_ihc_B1_stall_region_out_iowr_bl_s2_0_o_fifovalid),
        .out_iowr_bl_s2_1_o_fifodata(bb_ihc_B1_stall_region_out_iowr_bl_s2_1_o_fifodata),
        .out_iowr_bl_s2_1_o_fifovalid(bb_ihc_B1_stall_region_out_iowr_bl_s2_1_o_fifovalid),
        .out_iowr_bl_s2_2_o_fifodata(bb_ihc_B1_stall_region_out_iowr_bl_s2_2_o_fifodata),
        .out_iowr_bl_s2_2_o_fifovalid(bb_ihc_B1_stall_region_out_iowr_bl_s2_2_o_fifovalid),
        .out_iowr_bl_s2_3_o_fifodata(bb_ihc_B1_stall_region_out_iowr_bl_s2_3_o_fifodata),
        .out_iowr_bl_s2_3_o_fifovalid(bb_ihc_B1_stall_region_out_iowr_bl_s2_3_o_fifovalid),
        .out_pipeline_valid_out(bb_ihc_B1_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_ihc_B1_stall_region_out_stall_out),
        .out_valid_out(bb_ihc_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,16)
    assign out_exiting_stall_out = bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,17)
    assign out_exiting_valid_out = bb_ihc_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;

    // out_iowr_bl_s1_0_o_fifodata(GPOUT,18)
    assign out_iowr_bl_s1_0_o_fifodata = bb_ihc_B1_stall_region_out_iowr_bl_s1_0_o_fifodata;

    // out_iowr_bl_s1_0_o_fifovalid(GPOUT,19)
    assign out_iowr_bl_s1_0_o_fifovalid = bb_ihc_B1_stall_region_out_iowr_bl_s1_0_o_fifovalid;

    // out_iowr_bl_s1_1_o_fifodata(GPOUT,20)
    assign out_iowr_bl_s1_1_o_fifodata = bb_ihc_B1_stall_region_out_iowr_bl_s1_1_o_fifodata;

    // out_iowr_bl_s1_1_o_fifovalid(GPOUT,21)
    assign out_iowr_bl_s1_1_o_fifovalid = bb_ihc_B1_stall_region_out_iowr_bl_s1_1_o_fifovalid;

    // out_iowr_bl_s2_0_o_fifodata(GPOUT,22)
    assign out_iowr_bl_s2_0_o_fifodata = bb_ihc_B1_stall_region_out_iowr_bl_s2_0_o_fifodata;

    // out_iowr_bl_s2_0_o_fifovalid(GPOUT,23)
    assign out_iowr_bl_s2_0_o_fifovalid = bb_ihc_B1_stall_region_out_iowr_bl_s2_0_o_fifovalid;

    // out_iowr_bl_s2_1_o_fifodata(GPOUT,24)
    assign out_iowr_bl_s2_1_o_fifodata = bb_ihc_B1_stall_region_out_iowr_bl_s2_1_o_fifodata;

    // out_iowr_bl_s2_1_o_fifovalid(GPOUT,25)
    assign out_iowr_bl_s2_1_o_fifovalid = bb_ihc_B1_stall_region_out_iowr_bl_s2_1_o_fifovalid;

    // out_iowr_bl_s2_2_o_fifodata(GPOUT,26)
    assign out_iowr_bl_s2_2_o_fifodata = bb_ihc_B1_stall_region_out_iowr_bl_s2_2_o_fifodata;

    // out_iowr_bl_s2_2_o_fifovalid(GPOUT,27)
    assign out_iowr_bl_s2_2_o_fifovalid = bb_ihc_B1_stall_region_out_iowr_bl_s2_2_o_fifovalid;

    // out_iowr_bl_s2_3_o_fifodata(GPOUT,28)
    assign out_iowr_bl_s2_3_o_fifodata = bb_ihc_B1_stall_region_out_iowr_bl_s2_3_o_fifodata;

    // out_iowr_bl_s2_3_o_fifovalid(GPOUT,29)
    assign out_iowr_bl_s2_3_o_fifovalid = bb_ihc_B1_stall_region_out_iowr_bl_s2_3_o_fifovalid;

    // out_stall_in_0(GPOUT,30)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = ihc_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = ihc_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,33)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,34)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = ihc_B1_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,37)
    assign out_pipeline_valid_out = bb_ihc_B1_stall_region_out_pipeline_valid_out;

endmodule
