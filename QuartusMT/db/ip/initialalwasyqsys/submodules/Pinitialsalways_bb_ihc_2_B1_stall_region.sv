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

// SystemVerilog created from bb_ihc_2_B1_stall_region
// Created for function/kernel Pinitialsalways
// SystemVerilog created on Mon Sep 11 23:16:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module Pinitialsalways_bb_ihc_2_B1_stall_region (
    input wire [31:0] in_iord_bl_s0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s1_i_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_iowr_bl_s1_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_113_q;
    wire [32:0] i_add_i_i_ihc_27_a;
    wire [32:0] i_add_i_i_ihc_27_b;
    logic [32:0] i_add_i_i_ihc_27_o;
    wire [32:0] i_add_i_i_ihc_27_q;
    wire [0:0] i_inc_i_i_or_add_i_i_ihc_28_s;
    reg [31:0] i_inc_i_i_or_add_i_i_ihc_28_q;
    wire [0:0] i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_iord_bl_s0_o_fifoready;
    wire [31:0] i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_data;
    wire [0:0] i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_stall;
    wire [0:0] i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_valid;
    wire [31:0] i_iowr_bl_s1_or_5_ihc_29_out_iowr_bl_s1_o_fifodata;
    wire [0:0] i_iowr_bl_s1_or_5_ihc_29_out_iowr_bl_s1_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_or_5_ihc_29_out_o_stall;
    wire [0:0] i_iowr_bl_s1_or_5_ihc_29_out_o_valid;
    wire [31:0] bgTrunc_i_add_i_i_ihc_27_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [32:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_iord_bl_s0_unnamed_ihc_22_ihc_26_q;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_ihc_22_ihc_26_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c;
    wire [0:0] bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_b;
    wire [0:0] bubble_join_ihc_2_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_2_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_i_add_i_i_ihc_27_wireValid;
    wire [0:0] SE_i_add_i_i_ihc_27_and0;
    wire [0:0] SE_i_add_i_i_ihc_27_backStall;
    wire [0:0] SE_i_add_i_i_ihc_27_V0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireStall;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_StallValid;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_toReg0;
    reg [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_toReg1;
    reg [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed1;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_or0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_V0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_V1;
    wire [0:0] SE_out_i_iowr_bl_s1_or_5_ihc_29_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_or_5_ihc_29_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_V1;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,50)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,51)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,69)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_2_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_2_B1_merge_reg_aunroll_x(BLACKBOX,37)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    Pinitialsalways_ihc_2_B1_merge_reg theihc_2_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_2_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_2_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_2_B1_merge_reg_aunroll_x(BITJOIN,60)
    assign bubble_join_ihc_2_B1_merge_reg_aunroll_x_q = ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_2_B1_merge_reg_aunroll_x(BITSELECT,61)
    assign bubble_select_ihc_2_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_2_B1_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_ihc_2_B1_merge_reg_aunroll_x(STALLENABLE,77)
    // Valid signal propagation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall | ~ (SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid = ihc_2_B1_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26(STALLENABLE,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg0 <= '0;
            SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg0 <= SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg1 <= SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireValid) | SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg0;
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed1 = (~ (SE_i_add_i_i_ihc_27_backStall) & SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireValid) | SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_StallValid = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_backStall & SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireValid;
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_toReg0 = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_StallValid & SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed0;
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_toReg1 = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_StallValid & SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_or0 = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed0;
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireStall = ~ (SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_consumed1 & SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_or0);
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_backStall = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_V0 = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireValid & ~ (SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg0);
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_V1 = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireValid & ~ (SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_wireValid = i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_valid;

    // bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x(BITJOIN,57)
    assign bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_q = i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x(BITSELECT,58)
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_q[0:0]);

    // i_iord_bl_s0_unnamed_ihc_22_ihc_26(BLACKBOX,11)@2
    // in in_i_stall@20000000
    // out out_iord_bl_s0_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_o_fifoready@20000000
    // out out_o_stall@20000000
    Pinitialsalways_i_iord_bl_s0_unnamed_ihc_22_ihc_20 thei_iord_bl_s0_unnamed_ihc_22_ihc_26 (
        .in_c1_exe1(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_b),
        .in_i_stall(SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_V1),
        .in_iord_bl_s0_i_fifodata(in_iord_bl_s0_i_fifodata),
        .in_iord_bl_s0_i_fifovalid(in_iord_bl_s0_i_fifovalid),
        .out_iord_bl_s0_o_fifoalmost_full(i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_iord_bl_s0_o_fifoready),
        .out_o_data(i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_data),
        .out_o_stall(i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_stall),
        .out_o_valid(i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s1_or_5_ihc_29(STALLENABLE,68)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_or_5_ihc_29_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_or_5_ihc_29_wireValid = i_iowr_bl_s1_or_5_ihc_29_out_o_valid;

    // c_i32_113(CONSTANT,4)
    assign c_i32_113_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_iord_bl_s0_unnamed_ihc_22_ihc_26(BITJOIN,46)
    assign bubble_join_i_iord_bl_s0_unnamed_ihc_22_ihc_26_q = i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_data;

    // bubble_select_i_iord_bl_s0_unnamed_ihc_22_ihc_26(BITSELECT,47)
    assign bubble_select_i_iord_bl_s0_unnamed_ihc_22_ihc_26_b = $unsigned(bubble_join_i_iord_bl_s0_unnamed_ihc_22_ihc_26_q[31:0]);

    // i_add_i_i_ihc_27(ADD,9)@2
    assign i_add_i_i_ihc_27_a = {1'b0, bubble_select_i_iord_bl_s0_unnamed_ihc_22_ihc_26_b};
    assign i_add_i_i_ihc_27_b = {1'b0, c_i32_113_q};
    assign i_add_i_i_ihc_27_o = $unsigned(i_add_i_i_ihc_27_a) + $unsigned(i_add_i_i_ihc_27_b);
    assign i_add_i_i_ihc_27_q = i_add_i_i_ihc_27_o[32:0];

    // bgTrunc_i_add_i_i_ihc_27_sel_x(BITSELECT,30)@2
    assign bgTrunc_i_add_i_i_ihc_27_sel_x_b = i_add_i_i_ihc_27_q[31:0];

    // join_for_coalesced_delay_0(BITJOIN,42)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_b, bgTrunc_i_add_i_i_ihc_27_sel_x_b};

    // coalesced_delay_0_0(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,43)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_inc_i_i_or_add_i_i_ihc_28(MUX,10)@3
    assign i_inc_i_i_or_add_i_i_ihc_28_s = sel_for_coalesced_delay_0_c;
    always @(i_inc_i_i_or_add_i_i_ihc_28_s or sel_for_coalesced_delay_0_b or c_i32_113_q)
    begin
        unique case (i_inc_i_i_or_add_i_i_ihc_28_s)
            1'b0 : i_inc_i_i_or_add_i_i_ihc_28_q = sel_for_coalesced_delay_0_b;
            1'b1 : i_inc_i_i_or_add_i_i_ihc_28_q = c_i32_113_q;
            default : i_inc_i_i_or_add_i_i_ihc_28_q = 32'b0;
        endcase
    end

    // i_iowr_bl_s1_or_5_ihc_29(BLACKBOX,12)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_o_fifodata@20000000
    // out out_iowr_bl_s1_o_fifovalid@20000000
    // out out_o_stall@20000000
    Pinitialsalways_i_iowr_bl_s1_or_5_ihc_20 thei_iowr_bl_s1_or_5_ihc_29 (
        .in_i_data(i_inc_i_i_or_add_i_i_ihc_28_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_or_5_ihc_29_backStall),
        .in_i_valid(SE_coalesced_delay_0_0_V0),
        .in_iowr_bl_s1_i_fifoready(in_iowr_bl_s1_i_fifoready),
        .out_iowr_bl_s1_o_fifodata(i_iowr_bl_s1_or_5_ihc_29_out_iowr_bl_s1_o_fifodata),
        .out_iowr_bl_s1_o_fifovalid(i_iowr_bl_s1_or_5_ihc_29_out_iowr_bl_s1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s1_or_5_ihc_29_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_or_5_ihc_29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,80)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = i_iowr_bl_s1_or_5_ihc_29_out_o_stall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_i_add_i_i_ihc_27_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_i_add_i_i_ihc_27(STALLENABLE,63)
    // Valid signal propagation
    assign SE_i_add_i_i_ihc_27_V0 = SE_i_add_i_i_ihc_27_wireValid;
    // Backward Stall generation
    assign SE_i_add_i_i_ihc_27_backStall = SE_coalesced_delay_0_0_backStall | ~ (SE_i_add_i_i_ihc_27_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add_i_i_ihc_27_and0 = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_V1;
    assign SE_i_add_i_i_ihc_27_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_V0 & SE_i_add_i_i_ihc_27_and0;

    // SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed0 = (~ (SE_i_add_i_i_ihc_27_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed1 = (~ (i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_o_stall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_wireValid = i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITJOIN,54)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q = {i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITSELECT,55)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[1:1]);

    // i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x(BLACKBOX,36)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_c1_exit_0_tpl@2
    // out out_c1_exit_1_tpl@2
    Pinitialsalways_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24 thei_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall = i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_24_aunroll_x_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BLACKBOX,35)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    Pinitialsalways_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21 thei_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall),
        .in_i_valid(SE_out_ihc_2_B1_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ihc_2_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,32)
    assign out_iord_bl_s0_o_fifoready = i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_iord_bl_s0_o_fifoready;
    assign out_iord_bl_s0_o_fifoalmost_full = i_iord_bl_s0_unnamed_ihc_22_ihc_26_out_iord_bl_s0_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,33)@2
    assign out_valid_out = SE_out_i_iord_bl_s0_unnamed_ihc_22_ihc_26_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,34)
    assign out_iowr_bl_s1_o_fifodata = i_iowr_bl_s1_or_5_ihc_29_out_iowr_bl_s1_o_fifodata;
    assign out_iowr_bl_s1_o_fifovalid = i_iowr_bl_s1_or_5_ihc_29_out_iowr_bl_s1_o_fifovalid;

endmodule
