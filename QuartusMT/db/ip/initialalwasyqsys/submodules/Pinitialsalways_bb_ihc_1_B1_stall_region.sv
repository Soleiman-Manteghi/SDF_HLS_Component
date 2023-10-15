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

// SystemVerilog created from bb_ihc_1_B1_stall_region
// Created for function/kernel Pinitialsalways
// SystemVerilog created on Mon Sep 11 23:16:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module Pinitialsalways_bb_ihc_1_B1_stall_region (
    input wire [31:0] in_iord_bl_s1_i_fifodata,
    input wire [0:0] in_iord_bl_s1_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s2_i_fifoready,
    output wire [0:0] out_iord_bl_s1_o_fifoready,
    output wire [0:0] out_iord_bl_s1_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_iowr_bl_s2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_16_q;
    wire [32:0] i_add_i_i_ihc_12_a;
    wire [32:0] i_add_i_i_ihc_12_b;
    logic [32:0] i_add_i_i_ihc_12_o;
    wire [32:0] i_add_i_i_ihc_12_q;
    wire [0:0] i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_iord_bl_s1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_iord_bl_s1_o_fifoready;
    wire [31:0] i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_data;
    wire [0:0] i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_stall;
    wire [0:0] i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_iowr_bl_s2_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_iowr_bl_s2_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_o_valid;
    wire [0:0] ihc_1_B1_merge_reg_out_stall_out;
    wire [0:0] ihc_1_B1_merge_reg_out_valid_out;
    wire [31:0] bgTrunc_i_add_i_i_ihc_12_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_pipeline_valid_out;
    wire [31:0] bubble_join_i_iord_bl_s1_unnamed_ihc_13_ihc_11_q;
    wire [31:0] bubble_select_i_iord_bl_s1_unnamed_ihc_13_ihc_11_b;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireValid;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireStall;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_StallValid;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_toReg0;
    reg [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_toReg1;
    reg [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed1;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_or0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_backStall;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_V0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_V1;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_13_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_13_backStall;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_wireValid;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_backStall;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,50)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_1_B1_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_1_B1_merge_reg(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    Pinitialsalways_ihc_1_B1_merge_reg theihc_1_B1_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_ihc_1_B1_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(ihc_1_B1_merge_reg_out_stall_out),
        .out_valid_out(ihc_1_B1_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ihc_1_B1_merge_reg(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_ihc_1_B1_merge_reg_V0 = SE_out_ihc_1_B1_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_1_B1_merge_reg_backStall = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_o_stall | ~ (SE_out_ihc_1_B1_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_1_B1_merge_reg_wireValid = ihc_1_B1_merge_reg_out_valid_out;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_13(STALLENABLE,47)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_13_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_13_wireValid = i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_o_valid;

    // c_i32_16(CONSTANT,4)
    assign c_i32_16_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_iord_bl_s1_unnamed_ihc_13_ihc_11(BITJOIN,37)
    assign bubble_join_i_iord_bl_s1_unnamed_ihc_13_ihc_11_q = i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_data;

    // bubble_select_i_iord_bl_s1_unnamed_ihc_13_ihc_11(BITSELECT,38)
    assign bubble_select_i_iord_bl_s1_unnamed_ihc_13_ihc_11_b = $unsigned(bubble_join_i_iord_bl_s1_unnamed_ihc_13_ihc_11_q[31:0]);

    // i_add_i_i_ihc_12(ADD,10)@1
    assign i_add_i_i_ihc_12_a = {1'b0, bubble_select_i_iord_bl_s1_unnamed_ihc_13_ihc_11_b};
    assign i_add_i_i_ihc_12_b = {1'b0, c_i32_16_q};
    assign i_add_i_i_ihc_12_o = $unsigned(i_add_i_i_ihc_12_a) + $unsigned(i_add_i_i_ihc_12_b);
    assign i_add_i_i_ihc_12_q = i_add_i_i_ihc_12_o[32:0];

    // bgTrunc_i_add_i_i_ihc_12_sel_x(BITSELECT,29)@1
    assign bgTrunc_i_add_i_i_ihc_12_sel_x_b = i_add_i_i_ihc_12_q[31:0];

    // i_iowr_bl_s2_unnamed_ihc_14_ihc_13(BLACKBOX,12)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_o_fifodata@20000000
    // out out_iowr_bl_s2_o_fifovalid@20000000
    // out out_o_stall@20000000
    Pinitialsalways_i_iowr_bl_s2_unnamed_ihc_14_ihc_10 thei_iowr_bl_s2_unnamed_ihc_14_ihc_13 (
        .in_i_data(bgTrunc_i_add_i_i_ihc_12_sel_x_b),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_13_backStall),
        .in_i_valid(SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_V1),
        .in_iowr_bl_s2_i_fifoready(in_iowr_bl_s2_i_fifoready),
        .out_iowr_bl_s2_o_fifodata(i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_iowr_bl_s2_o_fifodata),
        .out_iowr_bl_s2_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_iowr_bl_s2_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11(STALLENABLE,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg0 <= '0;
            SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg0 <= SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg1 <= SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireValid) | SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg0;
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed1 = (~ (i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_o_stall) & SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireValid) | SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_StallValid = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_backStall & SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireValid;
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_toReg0 = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_StallValid & SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed0;
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_toReg1 = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_StallValid & SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_or0 = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed0;
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireStall = ~ (SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_consumed1 & SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_or0);
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_backStall = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_V0 = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireValid & ~ (SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg0);
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_V1 = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireValid & ~ (SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_wireValid = i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_valid;

    // i_iord_bl_s1_unnamed_ihc_13_ihc_11(BLACKBOX,11)@1
    // in in_i_stall@20000000
    // out out_iord_bl_s1_o_fifoalmost_full@20000000
    // out out_iord_bl_s1_o_fifoready@20000000
    // out out_o_stall@20000000
    Pinitialsalways_i_iord_bl_s1_unnamed_ihc_13_ihc_10 thei_iord_bl_s1_unnamed_ihc_13_ihc_11 (
        .in_i_stall(SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_V0),
        .in_iord_bl_s1_i_fifodata(in_iord_bl_s1_i_fifodata),
        .in_iord_bl_s1_i_fifovalid(in_iord_bl_s1_i_fifovalid),
        .out_iord_bl_s1_o_fifoalmost_full(i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_iord_bl_s1_o_fifoalmost_full),
        .out_iord_bl_s1_o_fifoready(i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_iord_bl_s1_o_fifoready),
        .out_o_data(i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_data),
        .out_o_stall(i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_stall),
        .out_o_valid(i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_backStall = i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x(BLACKBOX,34)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    Pinitialsalways_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10 thei_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_backStall),
        .in_i_valid(SE_out_ihc_1_B1_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_ihc_11_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_stall_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_valid_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_11_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,23)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_10_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_iord_bl_s1_o_fifoready = i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_iord_bl_s1_o_fifoready;
    assign out_iord_bl_s1_o_fifoalmost_full = i_iord_bl_s1_unnamed_ihc_13_ihc_11_out_iord_bl_s1_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,32)@1
    assign out_valid_out = SE_out_i_iord_bl_s1_unnamed_ihc_13_ihc_11_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,33)
    assign out_iowr_bl_s2_o_fifodata = i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_iowr_bl_s2_o_fifodata;
    assign out_iowr_bl_s2_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_14_ihc_13_out_iowr_bl_s2_o_fifovalid;

endmodule