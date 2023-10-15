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

// SystemVerilog created from bb_ihc_B1_stall_region
// Created for function/kernel ActorSIMOToken4
// SystemVerilog created on Mon Sep 18 22:56:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSIMOToken4_bb_ihc_B1_stall_region (
    input wire [31:0] in_iord_bl_s2_0_i_fifodata,
    input wire [0:0] in_iord_bl_s2_0_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_0_o_fifoready,
    output wire [0:0] out_iord_bl_s2_0_o_fifoalmost_full,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_iord_bl_s2_1_i_fifodata,
    input wire [0:0] in_iord_bl_s2_1_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_1_o_fifoready,
    output wire [0:0] out_iord_bl_s2_1_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_iord_bl_s2_2_i_fifodata,
    input wire [0:0] in_iord_bl_s2_2_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_2_o_fifoready,
    output wire [0:0] out_iord_bl_s2_2_o_fifoalmost_full,
    input wire [31:0] in_iord_bl_s2_3_i_fifodata,
    input wire [0:0] in_iord_bl_s2_3_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_3_o_fifoready,
    output wire [0:0] out_iord_bl_s2_3_o_fifoalmost_full,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc4_out_iord_bl_s2_0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc4_out_iord_bl_s2_0_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc6_out_iord_bl_s2_1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc6_out_iord_bl_s2_1_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc8_out_iord_bl_s2_2_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc8_out_iord_bl_s2_2_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc10_out_iord_bl_s2_3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc10_out_iord_bl_s2_3_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_toi1_intcast1_ihc7_sel_x_b;
    wire [0:0] i_toi1_intcast2_ihc9_sel_x_b;
    wire [0:0] i_toi1_intcast3_ihc11_sel_x_b;
    wire [0:0] i_toi1_intcast_ihc5_sel_x_b;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    reg [0:0] redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_q;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc4_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc4_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc6_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc6_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc8_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc8_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc10_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc10_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b;
    wire [0:0] bubble_join_ihc_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_V0;


    // bubble_join_stall_entry(BITJOIN,77)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,78)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,99)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_B1_merge_reg_aunroll_x(BLACKBOX,53)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    ActorSIMOToken4_ihc_B1_merge_reg theihc_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_B1_merge_reg_aunroll_x(BITJOIN,84)
    assign bubble_join_ihc_B1_merge_reg_aunroll_x_q = ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_B1_merge_reg_aunroll_x(BITSELECT,85)
    assign bubble_select_ihc_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_B1_merge_reg_aunroll_x(STALLENABLE,108)
    // Valid signal propagation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall | ~ (SE_out_ihc_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_B1_merge_reg_aunroll_x_wireValid = ihc_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BLACKBOX,48)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@6
    // out out_c0_exit_1_tpl@6
    // out out_c0_exit_2_tpl@6
    ActorSIMOToken4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1 thei_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall),
        .in_i_valid(SE_out_ihc_B1_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ihc_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(STALLENABLE,102)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc4(BITJOIN,61)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc4_q = i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc4(BITSELECT,62)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc4_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc4_q[31:0]);

    // i_toi1_intcast_ihc5_sel_x(BITSELECT,52)@8
    assign i_toi1_intcast_ihc5_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc4_b[0:0];

    // i_iord_bl_s2_unnamed_ihc3_ihc6(BLACKBOX,8)@8
    // in in_i_stall@20000000
    // out out_iord_bl_s2_1_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_1_o_fifoready@20000000
    // out out_o_data@9
    // out out_o_stall@20000000
    // out out_o_valid@9
    ActorSIMOToken4_i_iord_bl_s2_unnamed_ihc3_ihc0 thei_iord_bl_s2_unnamed_ihc3_ihc6 (
        .in_i_dependence(i_toi1_intcast_ihc5_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_V0),
        .in_iord_bl_s2_1_i_fifodata(in_iord_bl_s2_1_i_fifodata),
        .in_iord_bl_s2_1_i_fifovalid(in_iord_bl_s2_1_i_fifovalid),
        .out_iord_bl_s2_1_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc3_ihc6_out_iord_bl_s2_1_o_fifoalmost_full),
        .out_iord_bl_s2_1_o_fifoready(i_iord_bl_s2_unnamed_ihc3_ihc6_out_iord_bl_s2_1_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6(STALLENABLE,90)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_V0 = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_backStall = i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_stall | ~ (SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_wireValid = i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc6(BITJOIN,64)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc6_q = i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc6(BITSELECT,65)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc6_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc6_q[31:0]);

    // i_toi1_intcast1_ihc7_sel_x(BITSELECT,49)@9
    assign i_toi1_intcast1_ihc7_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc6_b[0:0];

    // i_iord_bl_s2_unnamed_ihc4_ihc8(BLACKBOX,9)@9
    // in in_i_stall@20000000
    // out out_iord_bl_s2_2_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_2_o_fifoready@20000000
    // out out_o_data@10
    // out out_o_stall@20000000
    // out out_o_valid@10
    ActorSIMOToken4_i_iord_bl_s2_unnamed_ihc4_ihc0 thei_iord_bl_s2_unnamed_ihc4_ihc8 (
        .in_i_dependence(i_toi1_intcast1_ihc7_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc3_ihc6_V0),
        .in_iord_bl_s2_2_i_fifodata(in_iord_bl_s2_2_i_fifodata),
        .in_iord_bl_s2_2_i_fifovalid(in_iord_bl_s2_2_i_fifovalid),
        .out_iord_bl_s2_2_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc4_ihc8_out_iord_bl_s2_2_o_fifoalmost_full),
        .out_iord_bl_s2_2_o_fifoready(i_iord_bl_s2_unnamed_ihc4_ihc8_out_iord_bl_s2_2_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_V0 = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_backStall = i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_stall | ~ (SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_wireValid = i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc8(BITJOIN,67)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc8_q = i_iord_bl_s2_unnamed_ihc4_ihc8_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc8(BITSELECT,68)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc8_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc8_q[31:0]);

    // i_toi1_intcast2_ihc9_sel_x(BITSELECT,50)@10
    assign i_toi1_intcast2_ihc9_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc8_b[0:0];

    // i_iord_bl_s2_unnamed_ihc5_ihc10(BLACKBOX,10)@10
    // in in_i_stall@20000000
    // out out_iord_bl_s2_3_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_3_o_fifoready@20000000
    // out out_o_data@11
    // out out_o_stall@20000000
    // out out_o_valid@11
    ActorSIMOToken4_i_iord_bl_s2_unnamed_ihc5_ihc0 thei_iord_bl_s2_unnamed_ihc5_ihc10 (
        .in_i_dependence(i_toi1_intcast2_ihc9_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc4_ihc8_V0),
        .in_iord_bl_s2_3_i_fifodata(in_iord_bl_s2_3_i_fifodata),
        .in_iord_bl_s2_3_i_fifovalid(in_iord_bl_s2_3_i_fifovalid),
        .out_iord_bl_s2_3_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc5_ihc10_out_iord_bl_s2_3_o_fifoalmost_full),
        .out_iord_bl_s2_3_o_fifoready(i_iord_bl_s2_unnamed_ihc5_ihc10_out_iord_bl_s2_3_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10(STALLENABLE,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed1 = (~ (SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_backStall & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_or0 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_or0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_backStall = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_V0 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_V1 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_wireValid = i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_valid;

    // SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0(STALLENABLE,109)
    // Valid signal propagation
    assign SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_V0 = SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_stall_out & SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backEN = ~ (SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_v_s_0 = SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_V1;
    // Backward Stall generation
    assign SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backStall = ~ (SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_R_v_0 <= SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_R_v_0 & SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_R_v_0 <= SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc12(STALLENABLE,98)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_wireValid = i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_valid_out;

    // bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc10(BITJOIN,70)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc10_q = i_iord_bl_s2_unnamed_ihc5_ihc10_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc10(BITSELECT,71)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc10_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc10_q[31:0]);

    // i_toi1_intcast3_ihc11_sel_x(BITSELECT,51)@11
    assign i_toi1_intcast3_ihc11_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc10_b[0:0];

    // redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_q <= $unsigned(i_toi1_intcast3_ihc11_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push3_ihc12(BLACKBOX,12)@12
    // in in_stall_in@20000000
    // out out_data_out@13
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@13
    ActorSIMOToken4_i_llvm_fpga_push_i1_memdep_phi_push3_ihc0 thei_llvm_fpga_push_i1_memdep_phi_push3_ihc12 (
        .in_data_in(redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_feedback_stall_out_3),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_backStall),
        .in_valid_in(SE_redist0_i_toi1_intcast3_ihc11_sel_x_b_1_0_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITJOIN,81)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITSELECT,82)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(BLACKBOX,11)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    ActorSIMOToken4_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc0 thei_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b),
        .in_feedback_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc12_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_feedback_stall_out_3),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(STALLENABLE,96)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_backStall = i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_valid_out;

    // SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_V0 = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_backStall = i_iord_bl_s2_unnamed_ihc3_ihc6_out_o_stall | ~ (SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_wireValid = i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(BITJOIN,74)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(BITSELECT,75)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_q[0:0]);

    // i_iord_bl_s2_unnamed_ihc2_ihc4(BLACKBOX,7)@7
    // in in_i_stall@20000000
    // out out_iord_bl_s2_0_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_0_o_fifoready@20000000
    // out out_o_data@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    ActorSIMOToken4_i_iord_bl_s2_unnamed_ihc2_ihc0 thei_iord_bl_s2_unnamed_ihc2_ihc4 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc2_ihc4_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_V0),
        .in_iord_bl_s2_0_i_fifodata(in_iord_bl_s2_0_i_fifodata),
        .in_iord_bl_s2_0_i_fifovalid(in_iord_bl_s2_0_i_fifovalid),
        .out_iord_bl_s2_0_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc2_ihc4_out_iord_bl_s2_0_o_fifoalmost_full),
        .out_iord_bl_s2_0_o_fifoready(i_iord_bl_s2_unnamed_ihc2_ihc4_out_iord_bl_s2_0_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc2_ihc4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iord_bl_s2_0_o_fifoready = i_iord_bl_s2_unnamed_ihc2_ihc4_out_iord_bl_s2_0_o_fifoready;
    assign out_iord_bl_s2_0_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc2_ihc4_out_iord_bl_s2_0_o_fifoalmost_full;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,38)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,41)
    assign out_iord_bl_s2_1_o_fifoready = i_iord_bl_s2_unnamed_ihc3_ihc6_out_iord_bl_s2_1_o_fifoready;
    assign out_iord_bl_s2_1_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc3_ihc6_out_iord_bl_s2_1_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,42)@11
    assign out_valid_out = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc10_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,44)
    assign out_iord_bl_s2_2_o_fifoready = i_iord_bl_s2_unnamed_ihc4_ihc8_out_iord_bl_s2_2_o_fifoready;
    assign out_iord_bl_s2_2_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc4_ihc8_out_iord_bl_s2_2_o_fifoalmost_full;

    // dupName_2_ext_sig_sync_out_x(GPOUT,46)
    assign out_iord_bl_s2_3_o_fifoready = i_iord_bl_s2_unnamed_ihc5_ihc10_out_iord_bl_s2_3_o_fifoready;
    assign out_iord_bl_s2_3_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc5_ihc10_out_iord_bl_s2_3_o_fifoalmost_full;

    // dupName_3_ext_sig_sync_out_x(GPOUT,47)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;

endmodule
