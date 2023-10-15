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
// Created for function/kernel ActorSIMOToken5
// SystemVerilog created on Mon Sep 18 23:25:57 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSIMOToken5_bb_ihc_2_B1_stall_region (
    input wire [0:0] in_iowr_bl_s1_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_0_o_fifovalid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s2_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_0_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_s2_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_1_o_fifovalid,
    input wire [0:0] in_iowr_bl_s1_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_1_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_2_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_2_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_3_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_3_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_3_o_fifovalid,
    input wire [31:0] in_iord_bl_s0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out,
    output wire [0:0] out_iord_bl_s0_o_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoalmost_full,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_122_q;
    wire [32:0] i_add12_i_i_ihc_211_a;
    wire [32:0] i_add12_i_i_ihc_211_b;
    logic [32:0] i_add12_i_i_ihc_211_o;
    wire [32:0] i_add12_i_i_ihc_211_q;
    wire [0:0] i_iord_bl_s0_or_38_ihc_28_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_or_38_ihc_28_out_iord_bl_s0_o_fifoready;
    wire [31:0] i_iord_bl_s0_or_38_ihc_28_out_o_data;
    wire [0:0] i_iord_bl_s0_or_38_ihc_28_out_o_stall;
    wire [0:0] i_iord_bl_s0_or_38_ihc_28_out_o_valid;
    wire [31:0] i_iowr_bl_s1_or_31_ihc_214_out_iowr_bl_s1_1_o_fifodata;
    wire [0:0] i_iowr_bl_s1_or_31_ihc_214_out_iowr_bl_s1_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_or_31_ihc_214_out_o_ack;
    wire [0:0] i_iowr_bl_s1_or_31_ihc_214_out_o_stall;
    wire [0:0] i_iowr_bl_s1_or_31_ihc_214_out_o_valid;
    wire [31:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifodata;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_stall;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_16_ihc_217_out_iowr_bl_s2_3_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_16_ihc_217_out_iowr_bl_s2_3_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_16_ihc_217_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_16_ihc_217_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_16_ihc_217_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_24_ihc_215_out_iowr_bl_s2_2_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_24_ihc_215_out_iowr_bl_s2_2_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_24_ihc_215_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_24_ihc_215_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_24_ihc_215_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_iowr_bl_s2_1_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_iowr_bl_s2_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_valid_out;
    wire [0:0] i_or_add12_i_i26_ihc_213_s;
    reg [31:0] i_or_add12_i_i26_ihc_213_q;
    wire [31:0] bgTrunc_i_add12_i_i_ihc_211_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_q;
    reg [0:0] redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q;
    reg [0:0] redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_q;
    reg [0:0] redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_1_q;
    reg [0:0] redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    reg [31:0] redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_q;
    reg [31:0] redist7_i_or_add12_i_i26_ihc_213_q_1_0_q;
    reg [0:0] redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q;
    reg [0:0] redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_q;
    reg [0:0] redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_q;
    reg [0:0] redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_iord_bl_s0_or_38_ihc_28_q;
    wire [31:0] bubble_select_i_iord_bl_s0_or_38_ihc_28_b;
    wire [0:0] bubble_join_i_iowr_bl_s1_or_31_ihc_214_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_or_31_ihc_214_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_16_ihc_217_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_16_ihc_217_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_24_ihc_215_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_24_ihc_215_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c;
    wire [2:0] bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_d;
    wire [0:0] bubble_join_ihc_2_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_2_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_wireStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_StallValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_toReg0;
    reg [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_consumed0;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_toReg1;
    reg [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_consumed1;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_or0;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_V0;
    wire [0:0] SE_out_i_iord_bl_s0_or_38_ihc_28_V1;
    wire [0:0] SE_in_i_iowr_bl_s1_or_31_ihc_214_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_or_31_ihc_214_and0;
    wire [0:0] SE_in_i_iowr_bl_s1_or_31_ihc_214_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_or_31_ihc_214_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_or_31_ihc_214_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_or_31_ihc_214_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_or_31_ihc_214_V0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_and0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_or_16_ihc_217_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_or_16_ihc_217_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_or_16_ihc_217_and1;
    wire [0:0] SE_in_i_iowr_bl_s2_or_16_ihc_217_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_or_16_ihc_217_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_16_ihc_217_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_16_ihc_217_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_16_ihc_217_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_or_24_ihc_215_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_or_24_ihc_215_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_or_24_ihc_215_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_24_ihc_215_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_24_ihc_215_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_24_ihc_215_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_backStall;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_wireValid;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_wireStall;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_StallValid;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_toReg0;
    reg [0:0] SE_i_or_add12_i_i26_ihc_213_fromReg0;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_consumed0;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_toReg1;
    reg [0:0] SE_i_or_add12_i_i26_ihc_213_fromReg1;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_consumed1;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_and0;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_or0;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_backStall;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_V0;
    wire [0:0] SE_i_or_add12_i_i26_ihc_213_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V2;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_or0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_or1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V2;
    reg [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    reg [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V1;
    reg [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_0;
    reg [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_1;
    reg [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_2;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_1;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_2;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_or0;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_or1;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V0;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V1;
    wire [0:0] SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V2;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1;
    reg [0:0] SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_V0;
    reg [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_0;
    reg [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_1;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_v_s_0;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_1;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backEN;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_or0;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backStall;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V0;
    wire [0:0] SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V1;
    reg [0:0] SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_V0;
    reg [0:0] SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_V0;
    reg [0:0] SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_V0;
    reg [0:0] SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V0;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_V0;
    wire [0:0] SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_i_valid;
    reg [0:0] SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid;
    wire [0:0] SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and0;
    wire [0:0] SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and1;
    wire [0:0] SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall;
    wire [0:0] SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data0;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data1;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_D1;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_i_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_data0;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_D0;
    wire [0:0] SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_D0;
    wire [0:0] SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_i_valid;
    reg [0:0] SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid;
    reg [31:0] SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_data0;
    wire [0:0] SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backStall;
    wire [0:0] SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V;
    wire [31:0] SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_D0;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_i_valid;
    reg [0:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_and0;
    reg [0:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data0;
    reg [31:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data1;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_backStall;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_V;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_D0;
    wire [31:0] SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_D1;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_D0;


    // bubble_join_i_iord_bl_s0_or_38_ihc_28(BITJOIN,104)
    assign bubble_join_i_iord_bl_s0_or_38_ihc_28_q = i_iord_bl_s0_or_38_ihc_28_out_o_data;

    // bubble_select_i_iord_bl_s0_or_38_ihc_28(BITSELECT,105)
    assign bubble_select_i_iord_bl_s0_or_38_ihc_28_b = $unsigned(bubble_join_i_iord_bl_s0_or_38_ihc_28_q[31:0]);

    // i_add12_i_i_ihc_211(ADD,9)@8
    assign i_add12_i_i_ihc_211_a = {1'b0, bubble_select_i_iord_bl_s0_or_38_ihc_28_b};
    assign i_add12_i_i_ihc_211_b = {1'b0, c_i32_122_q};
    assign i_add12_i_i_ihc_211_o = $unsigned(i_add12_i_i_ihc_211_a) + $unsigned(i_add12_i_i_ihc_211_b);
    assign i_add12_i_i_ihc_211_q = i_add12_i_i_ihc_211_o[32:0];

    // bgTrunc_i_add12_i_i_ihc_211_sel_x(BITSELECT,57)@8
    assign bgTrunc_i_add12_i_i_ihc_211_sel_x_b = i_add12_i_i_ihc_211_q[31:0];

    // redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_q <= $unsigned(SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_D0);
        end
    end

    // redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_1(REG,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_1_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_D1);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_or_add12_i_i26_ihc_213(MUX,21)@9
    assign i_or_add12_i_i26_ihc_213_s = redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_1_q;
    always @(i_or_add12_i_i26_ihc_213_s or redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_q or c_i32_122_q)
    begin
        unique case (i_or_add12_i_i26_ihc_213_s)
            1'b0 : i_or_add12_i_i26_ihc_213_q = redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_q;
            1'b1 : i_or_add12_i_i26_ihc_213_q = c_i32_122_q;
            default : i_or_add12_i_i26_ihc_213_q = 32'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218(STALLENABLE,161)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_wireValid = i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_valid_out;

    // i_iowr_bl_s1_or_31_ihc_214(BLACKBOX,11)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_1_o_fifodata@20000000
    // out out_iowr_bl_s1_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken5_i_iowr_bl_s1_or_31_ihc_20 thei_iowr_bl_s1_or_31_ihc_214 (
        .in_c1_exe1(redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q),
        .in_i_data(redist7_i_or_add12_i_i26_ihc_213_q_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_or_31_ihc_214_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_or_31_ihc_214_V0),
        .in_iowr_bl_s1_1_i_fifoready(in_iowr_bl_s1_1_i_fifoready),
        .out_iowr_bl_s1_1_o_fifodata(i_iowr_bl_s1_or_31_ihc_214_out_iowr_bl_s1_1_o_fifodata),
        .out_iowr_bl_s1_1_o_fifovalid(i_iowr_bl_s1_or_31_ihc_214_out_iowr_bl_s1_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_or_31_ihc_214_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_or_31_ihc_214_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_or_31_ihc_214_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s1_or_31_ihc_214(STALLENABLE,145)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_or_31_ihc_214_V0 = SE_out_i_iowr_bl_s1_or_31_ihc_214_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_or_31_ihc_214_backStall = SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s1_or_31_ihc_214_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_or_31_ihc_214_wireValid = i_iowr_bl_s1_or_31_ihc_214_out_o_valid;

    // SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0(STALLENABLE,186)
    // Valid signal propagation
    assign SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_V0 = SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_stall_out & SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backEN = ~ (SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_v_s_0 = SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s1_or_31_ihc_214_V0;
    // Backward Stall generation
    assign SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backStall = ~ (SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_R_v_0 <= SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_R_v_0 & SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_R_v_0 <= SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216(STALLENABLE,163)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_wireValid = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_valid_out;

    // bubble_join_i_iowr_bl_s1_or_31_ihc_214(BITJOIN,108)
    assign bubble_join_i_iowr_bl_s1_or_31_ihc_214_q = i_iowr_bl_s1_or_31_ihc_214_out_o_ack;

    // bubble_select_i_iowr_bl_s1_or_31_ihc_214(BITSELECT,109)
    assign bubble_select_i_iowr_bl_s1_or_31_ihc_214_b = $unsigned(bubble_join_i_iowr_bl_s1_or_31_ihc_214_q[0:0]);

    // redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0(REG,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s1_or_31_ihc_214_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216(BLACKBOX,20)@11
    // in in_stall_in@20000000
    // out out_data_out@12
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@12
    ActorSIMOToken5_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_20 thei_llvm_fpga_push_i1_memdep_phi_push4_ihc_216 (
        .in_data_in(redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_feedback_stall_out_4),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_backStall),
        .in_valid_in(SE_redist11_i_iowr_bl_s1_or_31_ihc_214_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(BLACKBOX,18)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    ActorSIMOToken5_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_20 thei_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23 (
        .in_data_in(GND_q),
        .in_dir(redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_216_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,128)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,129)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,165)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_2_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_2_B1_merge_reg_aunroll_x(BLACKBOX,74)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    ActorSIMOToken5_ihc_2_B1_merge_reg theihc_2_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_2_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_2_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_2_B1_merge_reg_aunroll_x(BITJOIN,138)
    assign bubble_join_ihc_2_B1_merge_reg_aunroll_x_q = ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_2_B1_merge_reg_aunroll_x(BITSELECT,139)
    assign bubble_select_ihc_2_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_2_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_2_B1_merge_reg_aunroll_x(STALLENABLE,173)
    // Valid signal propagation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall | ~ (SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid = ihc_2_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BLACKBOX,72)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    ActorSIMOToken5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21 thei_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x (
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

    // SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(STALLENABLE,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0 = (~ (SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid;

    // SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0(STALLENABLE,180)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0 = SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1 = SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_stall_out & SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_stall_out & SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0 = SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN = ~ (SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 | SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0 = SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = ~ (SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 & SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

            if (SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 & SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg(STALLENABLE,242)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_s_tv_0 = SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall & bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24(STALLENABLE,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed1 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_wireValid = i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITJOIN,132)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q = {i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITSELECT,133)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[1:1]);

    // redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24(BLACKBOX,17)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    ActorSIMOToken5_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_20 thei_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24 (
        .in_data_in(GND_q),
        .in_dir(redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_5(i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_feedback_stall_out_5),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_or_16_ihc_217(BITJOIN,111)
    assign bubble_join_i_iowr_bl_s2_or_16_ihc_217_q = i_iowr_bl_s2_or_16_ihc_217_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_16_ihc_217(BITSELECT,112)
    assign bubble_select_i_iowr_bl_s2_or_16_ihc_217_b = $unsigned(bubble_join_i_iowr_bl_s2_or_16_ihc_217_q[0:0]);

    // redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0(REG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_or_16_ihc_217_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218(BLACKBOX,19)@11
    // in in_stall_in@20000000
    // out out_data_out@12
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@12
    ActorSIMOToken5_i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_20 thei_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218 (
        .in_data_in(redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_feedback_stall_out_5),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_backStall),
        .in_valid_in(SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_feedback_valid_out_5),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0(STALLENABLE,185)
    // Valid signal propagation
    assign SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_V0 = SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi39_push5_ihc_218_out_stall_out & SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backEN = ~ (SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_v_s_0 = SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_or_16_ihc_217_V0;
    // Backward Stall generation
    assign SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backStall = ~ (SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_R_v_0 <= SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_R_v_0 & SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_R_v_0 <= SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s2_or_16_ihc_217(STALLENABLE,149)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_16_ihc_217_V0 = SE_out_i_iowr_bl_s2_or_16_ihc_217_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_16_ihc_217_backStall = SE_redist10_i_iowr_bl_s2_or_16_ihc_217_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_16_ihc_217_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_16_ihc_217_wireValid = i_iowr_bl_s2_or_16_ihc_217_out_o_valid;

    // SE_in_i_iowr_bl_s2_or_24_ihc_215(STALLENABLE,150)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_or_24_ihc_215_V0 = SE_in_i_iowr_bl_s2_or_24_ihc_215_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_or_24_ihc_215_backStall = i_iowr_bl_s2_or_24_ihc_215_out_o_stall | ~ (SE_in_i_iowr_bl_s2_or_24_ihc_215_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_or_24_ihc_215_wireValid = SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_V;

    // i_iowr_bl_s2_or_24_ihc_215(BLACKBOX,14)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_2_o_fifodata@20000000
    // out out_iowr_bl_s2_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken5_i_iowr_bl_s2_or_24_ihc_20 thei_iowr_bl_s2_or_24_ihc_215 (
        .in_c1_exe1(SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_D0),
        .in_i_data(SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_D1),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_24_ihc_215_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_or_24_ihc_215_V0),
        .in_iowr_bl_s2_2_i_fifoready(in_iowr_bl_s2_2_i_fifoready),
        .out_iowr_bl_s2_2_o_fifodata(i_iowr_bl_s2_or_24_ihc_215_out_iowr_bl_s2_2_o_fifodata),
        .out_iowr_bl_s2_2_o_fifovalid(i_iowr_bl_s2_or_24_ihc_215_out_iowr_bl_s2_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_24_ihc_215_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_24_ihc_215_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_24_ihc_215_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_or_24_ihc_215(BITJOIN,114)
    assign bubble_join_i_iowr_bl_s2_or_24_ihc_215_q = i_iowr_bl_s2_or_24_ihc_215_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_24_ihc_215(BITSELECT,115)
    assign bubble_select_i_iowr_bl_s2_or_24_ihc_215_b = $unsigned(bubble_join_i_iowr_bl_s2_or_24_ihc_215_q[0:0]);

    // SE_out_i_iowr_bl_s2_or_24_ihc_215(STALLENABLE,151)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_24_ihc_215_V0 = SE_out_i_iowr_bl_s2_or_24_ihc_215_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_24_ihc_215_backStall = SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_24_ihc_215_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_24_ihc_215_wireValid = i_iowr_bl_s2_or_24_ihc_215_out_o_valid;

    // SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0(STALLREG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid <= SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backStall & (SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid | SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_i_valid);

            if (SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s2_or_24_ihc_215_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s2_or_24_ihc_215_V0;
    // Stall signal propagation
    assign SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backStall = SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid | ~ (SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_V = SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid : SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_i_valid;

    assign SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_D0 = SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s2_or_24_ihc_215_b;

    // redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0(REG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_q <= $unsigned(SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_D0);
        end
    end

    // redist7_i_or_add12_i_i26_ihc_213_q_1_0(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_or_add12_i_i26_ihc_213_q_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backEN == 1'b1)
        begin
            redist7_i_or_add12_i_i26_ihc_213_q_1_0_q <= $unsigned(SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_D0);
        end
    end

    // redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_D0);
        end
    end

    // SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0(STALLREG,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid <= 1'b0;
            SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall & (SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid | SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_i_valid);

            if (SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_data0 <= $unsigned(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_i_valid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V1;
    // Stall signal propagation
    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid | ~ (SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_i_valid);

    // Valid
    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid : SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_i_valid;

    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_D0 = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_r_data0 : redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_q;

    // redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q <= $unsigned(SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_D0);
        end
    end

    // i_iowr_bl_s2_or_16_ihc_217(BLACKBOX,13)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_3_o_fifodata@20000000
    // out out_iowr_bl_s2_3_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken5_i_iowr_bl_s2_or_16_ihc_20 thei_iowr_bl_s2_or_16_ihc_217 (
        .in_c1_exe1(redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q),
        .in_i_data(redist7_i_or_add12_i_i26_ihc_213_q_1_0_q),
        .in_i_dependence(redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_16_ihc_217_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_or_16_ihc_217_V0),
        .in_iowr_bl_s2_3_i_fifoready(in_iowr_bl_s2_3_i_fifoready),
        .out_iowr_bl_s2_3_o_fifodata(i_iowr_bl_s2_or_16_ihc_217_out_iowr_bl_s2_3_o_fifodata),
        .out_iowr_bl_s2_3_o_fifovalid(i_iowr_bl_s2_or_16_ihc_217_out_iowr_bl_s2_3_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_16_ihc_217_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_16_ihc_217_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_16_ihc_217_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0(STALLENABLE,184)
    // Valid signal propagation
    assign SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_V0 = SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_or_16_ihc_217_backStall & SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backEN = ~ (SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_v_s_0 = SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backEN & SR_SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backStall = ~ (SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_R_v_0 <= SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_R_v_0 & SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_R_v_0 <= SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0(STALLENABLE,177)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V1 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0 = SE_in_i_iowr_bl_s1_or_31_ihc_214_backStall & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1 = SE_in_i_iowr_bl_s2_or_16_ihc_217_backStall & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN = ~ (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1 | SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN & SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall = ~ (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= 1'b0;
            SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
            end

            if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1;
            end
            else
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_or_16_ihc_217(STALLENABLE,148)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_or_16_ihc_217_V0 = SE_in_i_iowr_bl_s2_or_16_ihc_217_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_or_16_ihc_217_backStall = i_iowr_bl_s2_or_16_ihc_217_out_o_stall | ~ (SE_in_i_iowr_bl_s2_or_16_ihc_217_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_or_16_ihc_217_and0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V1;
    assign SE_in_i_iowr_bl_s2_or_16_ihc_217_and1 = SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V1 & SE_in_i_iowr_bl_s2_or_16_ihc_217_and0;
    assign SE_in_i_iowr_bl_s2_or_16_ihc_217_wireValid = SE_redist9_i_iowr_bl_s2_or_24_ihc_215_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_or_16_ihc_217_and1;

    // SE_in_i_iowr_bl_s1_or_31_ihc_214(STALLENABLE,144)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_or_31_ihc_214_V0 = SE_in_i_iowr_bl_s1_or_31_ihc_214_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_or_31_ihc_214_backStall = i_iowr_bl_s1_or_31_ihc_214_out_o_stall | ~ (SE_in_i_iowr_bl_s1_or_31_ihc_214_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_or_31_ihc_214_and0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V0;
    assign SE_in_i_iowr_bl_s1_or_31_ihc_214_wireValid = SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V0 & SE_in_i_iowr_bl_s1_or_31_ihc_214_and0;

    // SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0(STALLENABLE,182)
    // Valid signal propagation
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V0 = SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_0;
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V1 = SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_0 = SE_in_i_iowr_bl_s1_or_31_ihc_214_backStall & SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_0;
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_1 = SE_in_i_iowr_bl_s2_or_16_ihc_217_backStall & SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_or0 = SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_0;
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backEN = ~ (SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_1 | SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_v_s_0 = SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backEN & SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V;
    // Backward Stall generation
    assign SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backStall = ~ (SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_0 <= 1'b0;
            SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_0 <= SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_0 & SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_0 <= SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_v_s_0;
            end

            if (SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_1 <= SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_1 & SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_R_v_1 <= SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0(STALLREG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid <= 1'b0;
            SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid <= SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backStall & (SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid | SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_i_valid);

            if (SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_data0 <= i_or_add12_i_i26_ihc_213_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_i_valid = SE_i_or_add12_i_i26_ihc_213_V1;
    // Stall signal propagation
    assign SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backStall = SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid | ~ (SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_V = SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid == 1'b1 ? SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid : SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_i_valid;

    assign SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_D0 = SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_valid == 1'b1 ? SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_r_data0 : i_or_add12_i_i26_ihc_213_q;

    // SR_SE_in_i_iowr_bl_s2_or_24_ihc_215(STALLREG,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid <= 1'b0;
            SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data0 <= 1'bx;
            SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid <= SE_in_i_iowr_bl_s2_or_24_ihc_215_backStall & (SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid | SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_i_valid);

            if (SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data0 <= $unsigned(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_q);
                SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data1 <= i_or_add12_i_i26_ihc_213_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_and0 = SE_i_or_add12_i_i26_ihc_213_V0;
    assign SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_i_valid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V0 & SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_and0;
    // Stall signal propagation
    assign SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_backStall = SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid | ~ (SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_i_valid);

    // Valid
    assign SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_V = SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid : SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_i_valid;

    // Data0
    assign SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_D0 = SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data0 : redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_q;
    // Data1
    assign SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_D1 = SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_r_data1 : i_or_add12_i_i26_ihc_213_q;

    // SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0(STALLENABLE,176)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V2 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_2;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0 = SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1 = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_2 = SE_i_or_add12_i_i26_ihc_213_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_2;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_or0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_or1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_or0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_2 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN & SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backStall = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_2 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_2;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0;
            end

        end
    end

    // SE_i_or_add12_i_i26_ihc_213(STALLENABLE,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_add12_i_i26_ihc_213_fromReg0 <= '0;
            SE_i_or_add12_i_i26_ihc_213_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_or_add12_i_i26_ihc_213_fromReg0 <= SE_i_or_add12_i_i26_ihc_213_toReg0;
            // Successor 1
            SE_i_or_add12_i_i26_ihc_213_fromReg1 <= SE_i_or_add12_i_i26_ihc_213_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_or_add12_i_i26_ihc_213_consumed0 = (~ (SR_SE_in_i_iowr_bl_s2_or_24_ihc_215_backStall) & SE_i_or_add12_i_i26_ihc_213_wireValid) | SE_i_or_add12_i_i26_ihc_213_fromReg0;
    assign SE_i_or_add12_i_i26_ihc_213_consumed1 = (~ (SR_SE_redist7_i_or_add12_i_i26_ihc_213_q_1_0_backStall) & SE_i_or_add12_i_i26_ihc_213_wireValid) | SE_i_or_add12_i_i26_ihc_213_fromReg1;
    // Consuming
    assign SE_i_or_add12_i_i26_ihc_213_StallValid = SE_i_or_add12_i_i26_ihc_213_backStall & SE_i_or_add12_i_i26_ihc_213_wireValid;
    assign SE_i_or_add12_i_i26_ihc_213_toReg0 = SE_i_or_add12_i_i26_ihc_213_StallValid & SE_i_or_add12_i_i26_ihc_213_consumed0;
    assign SE_i_or_add12_i_i26_ihc_213_toReg1 = SE_i_or_add12_i_i26_ihc_213_StallValid & SE_i_or_add12_i_i26_ihc_213_consumed1;
    // Backward Stall generation
    assign SE_i_or_add12_i_i26_ihc_213_or0 = SE_i_or_add12_i_i26_ihc_213_consumed0;
    assign SE_i_or_add12_i_i26_ihc_213_wireStall = ~ (SE_i_or_add12_i_i26_ihc_213_consumed1 & SE_i_or_add12_i_i26_ihc_213_or0);
    assign SE_i_or_add12_i_i26_ihc_213_backStall = SE_i_or_add12_i_i26_ihc_213_wireStall;
    // Valid signal propagation
    assign SE_i_or_add12_i_i26_ihc_213_V0 = SE_i_or_add12_i_i26_ihc_213_wireValid & ~ (SE_i_or_add12_i_i26_ihc_213_fromReg0);
    assign SE_i_or_add12_i_i26_ihc_213_V1 = SE_i_or_add12_i_i26_ihc_213_wireValid & ~ (SE_i_or_add12_i_i26_ihc_213_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_or_add12_i_i26_ihc_213_and0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V2;
    assign SE_i_or_add12_i_i26_ihc_213_wireValid = SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_V0 & SE_i_or_add12_i_i26_ihc_213_and0;

    // SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0(STALLENABLE,181)
    // Valid signal propagation
    assign SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_V0 = SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_s_tv_0 = SE_i_or_add12_i_i26_ihc_213_backStall & SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backEN = ~ (SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_v_s_0 = SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backEN & SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backStall = ~ (SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_R_v_0 <= SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_R_v_0 & SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_R_v_0 <= SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0(STALLREG,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid <= SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backStall & (SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid | SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_i_valid);

            if (SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_data0 <= bgTrunc_i_add12_i_i_ihc_211_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_i_valid = SE_out_i_iord_bl_s0_or_38_ihc_28_V1;
    // Stall signal propagation
    assign SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backStall = SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid | ~ (SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_V = SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid : SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_i_valid;

    assign SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_D0 = SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_r_data0 : bgTrunc_i_add12_i_i_ihc_211_sel_x_b;

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg(STALLENABLE,243)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_s_tv_0 = SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall & bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1(STALLENABLE,221)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid = SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V;

    // SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1(STALLREG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid <= 1'b0;
        end
        else
        begin
            // Valid
            SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid <= SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall & (SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid | SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_i_valid);

            if (SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid == 1'b0)
            begin
                // Data(s)
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_V0;
    assign SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and1 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_1_reg_V0 & SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and0;
    assign SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_i_valid = SE_out_i_iord_bl_s0_or_38_ihc_28_V0 & SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and1;
    // Stall signal propagation
    assign SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall = SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid | ~ (SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_i_valid);

    // Valid
    assign SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V = SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid == 1'b1 ? SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_r_valid : SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_i_valid;


    // SE_out_i_iord_bl_s0_or_38_ihc_28(STALLENABLE,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg0 <= '0;
            SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg0 <= SE_out_i_iord_bl_s0_or_38_ihc_28_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg1 <= SE_out_i_iord_bl_s0_or_38_ihc_28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_consumed0 = (~ (SR_SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall) & SE_out_i_iord_bl_s0_or_38_ihc_28_wireValid) | SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg0;
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_consumed1 = (~ (SR_SE_redist6_bgTrunc_i_add12_i_i_ihc_211_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s0_or_38_ihc_28_wireValid) | SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_StallValid = SE_out_i_iord_bl_s0_or_38_ihc_28_backStall & SE_out_i_iord_bl_s0_or_38_ihc_28_wireValid;
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_toReg0 = SE_out_i_iord_bl_s0_or_38_ihc_28_StallValid & SE_out_i_iord_bl_s0_or_38_ihc_28_consumed0;
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_toReg1 = SE_out_i_iord_bl_s0_or_38_ihc_28_StallValid & SE_out_i_iord_bl_s0_or_38_ihc_28_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_or0 = SE_out_i_iord_bl_s0_or_38_ihc_28_consumed0;
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_wireStall = ~ (SE_out_i_iord_bl_s0_or_38_ihc_28_consumed1 & SE_out_i_iord_bl_s0_or_38_ihc_28_or0);
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_backStall = SE_out_i_iord_bl_s0_or_38_ihc_28_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_V0 = SE_out_i_iord_bl_s0_or_38_ihc_28_wireValid & ~ (SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg0);
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_V1 = SE_out_i_iord_bl_s0_or_38_ihc_28_wireValid & ~ (SE_out_i_iord_bl_s0_or_38_ihc_28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_or_38_ihc_28_wireValid = i_iord_bl_s0_or_38_ihc_28_out_o_valid;

    // join_for_coalesced_delay_0(BITJOIN,89)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c, bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_b};

    // coalesced_delay_0_0(REG,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,90)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_iord_bl_s0_or_38_ihc_28(BLACKBOX,10)@8
    // in in_i_stall@20000000
    // out out_iord_bl_s0_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_o_fifoready@20000000
    // out out_o_stall@20000000
    ActorSIMOToken5_i_iord_bl_s0_or_38_ihc_20 thei_iord_bl_s0_or_38_ihc_28 (
        .in_c1_exe1(sel_for_coalesced_delay_0_b),
        .in_i_stall(SE_out_i_iord_bl_s0_or_38_ihc_28_backStall),
        .in_i_valid(SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V2),
        .in_iord_bl_s0_i_fifodata(in_iord_bl_s0_i_fifodata),
        .in_iord_bl_s0_i_fifovalid(in_iord_bl_s0_i_fifovalid),
        .out_iord_bl_s0_o_fifoalmost_full(i_iord_bl_s0_or_38_ihc_28_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(i_iord_bl_s0_or_38_ihc_28_out_iord_bl_s0_o_fifoready),
        .out_o_data(i_iord_bl_s0_or_38_ihc_28_out_o_data),
        .out_o_stall(i_iord_bl_s0_or_38_ihc_28_out_o_stall),
        .out_o_valid(i_iord_bl_s0_or_38_ihc_28_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_d);
        end
    end

    // SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0(STALLREG,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data0 <= 1'bx;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backStall & (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid | SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_i_valid);

            if (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data0 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data1 <= $unsigned(redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_i_valid = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V1;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backStall = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid | ~ (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_V = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid : SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_i_valid;

    // Data0
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_D0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data0 : sel_for_coalesced_delay_0_b;
    // Data1
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_D1 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_r_data1 : redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_q;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_24_ihc_212(STALLENABLE,155)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_wireValid = i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_o_valid;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(STALLENABLE,153)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall = SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24(BITJOIN,120)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_q = i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24(BITSELECT,121)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_q[0:0]);

    // i_iowr_bl_s2_unnamed_ihc_23_ihc_210(BLACKBOX,15)@7
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_0_o_fifodata@20000000
    // out out_iowr_bl_s2_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken5_i_iowr_bl_s2_unnamed_ihc_23_ihc_20 thei_iowr_bl_s2_unnamed_ihc_23_ihc_210 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c),
        .in_i_data(c_i32_122_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_b),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0),
        .in_iowr_bl_s2_0_i_fifoready(in_iowr_bl_s2_0_i_fifoready),
        .out_iowr_bl_s2_0_o_fifodata(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifodata),
        .out_iowr_bl_s2_0_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(BITJOIN,117)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_q = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(BITSELECT,118)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_q[0:0]);

    // redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_b);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_24_ihc_212(BLACKBOX,16)@8
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_1_o_fifodata@20000000
    // out out_iowr_bl_s2_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken5_i_iowr_bl_s2_unnamed_ihc_24_ihc_20 thei_iowr_bl_s2_unnamed_ihc_24_ihc_212 (
        .in_c1_exe2(sel_for_coalesced_delay_0_c),
        .in_i_data(c_i32_122_q),
        .in_i_dependence(redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_V0),
        .in_iowr_bl_s2_1_i_fifoready(in_iowr_bl_s2_1_i_fifoready),
        .out_iowr_bl_s2_1_o_fifodata(i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_iowr_bl_s2_1_o_fifodata),
        .out_iowr_bl_s2_1_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_iowr_bl_s2_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0(STALLENABLE,183)
    // Valid signal propagation
    assign SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_V0 = SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_backStall & SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN = ~ (SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0 = SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0;
    // Backward Stall generation
    assign SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backStall = ~ (SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 <= SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 & SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 <= SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212(STALLENABLE,154)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_backStall = i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_and0 = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V0;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_wireValid = SE_redist8_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_and0;

    // SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0(STALLENABLE,178)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V0 = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_0;
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V1 = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_1;
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_V2 = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_2;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_24_ihc_212_backStall & SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_0;
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_1 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_2_0_backStall & SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_1;
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_2 = i_iord_bl_s0_or_38_ihc_28_out_o_stall & SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_2;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_or0 = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_0;
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_or1 = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_1 | SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_or0;
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN = ~ (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_2 | SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_v_s_0 = SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V2;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backStall = ~ (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_0 <= 1'b0;
            SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_1 <= 1'b0;
            SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_0 <= SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_0 & SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_0 <= SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_1 <= SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_1 & SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_1;
            end
            else
            begin
                SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_1 <= SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_2 <= SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_2 & SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_s_tv_2;
            end
            else
            begin
                SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_R_v_2 <= SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(STALLENABLE,152)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop5_ihc_24_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V1 & SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_and0;

    // i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(BLACKBOX,73)@5
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c1_exit_0_tpl@7
    // out out_c1_exit_1_tpl@7
    // out out_c1_exit_2_tpl@7
    // out out_c1_exit_3_tpl@7
    ActorSIMOToken5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26 thei_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(STALLENABLE,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0 = (~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2 = (~ (SE_redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_2_0_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid = i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(STALLENABLE,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1 = (~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_valid_out;

    // SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29(STALLENABLE,146)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0 = SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_stall | ~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V1;
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V0 & SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_and0;

    // SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29(STALLENABLE,147)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(BITJOIN,124)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_q = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(BITSELECT,125)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_q[0:0]);

    // c_i32_122(CONSTANT,4)
    assign c_i32_122_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(BITJOIN,135)
    assign bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q = {i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(BITSELECT,136)
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q[2:2]);

    // i_iowr_bl_s1_unnamed_ihc_22_ihc_29(BLACKBOX,12)@7
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_0_o_fifodata@20000000
    // out out_iowr_bl_s1_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken5_i_iowr_bl_s1_unnamed_ihc_22_ihc_20 thei_iowr_bl_s1_unnamed_ihc_22_ihc_29 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c),
        .in_i_data(c_i32_122_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_b),
        .in_i_stall(SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0),
        .in_iowr_bl_s1_0_i_fifoready(in_iowr_bl_s1_0_i_fifoready),
        .out_iowr_bl_s1_0_o_fifodata(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifodata),
        .out_iowr_bl_s1_0_o_fifovalid(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_iowr_bl_s1_0_o_fifodata = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifodata;
    assign out_iowr_bl_s1_0_o_fifovalid = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifovalid;

    // pipeline_valid_out_sync(GPOUT,51)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,55)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,59)
    assign out_iowr_bl_s2_0_o_fifodata = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifodata;
    assign out_iowr_bl_s2_0_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,60)@8
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,62)
    assign out_iowr_bl_s2_1_o_fifodata = i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_iowr_bl_s2_1_o_fifodata;
    assign out_iowr_bl_s2_1_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_24_ihc_212_out_iowr_bl_s2_1_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,64)
    assign out_iowr_bl_s1_1_o_fifodata = i_iowr_bl_s1_or_31_ihc_214_out_iowr_bl_s1_1_o_fifodata;
    assign out_iowr_bl_s1_1_o_fifovalid = i_iowr_bl_s1_or_31_ihc_214_out_iowr_bl_s1_1_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,66)
    assign out_iowr_bl_s2_2_o_fifodata = i_iowr_bl_s2_or_24_ihc_215_out_iowr_bl_s2_2_o_fifodata;
    assign out_iowr_bl_s2_2_o_fifovalid = i_iowr_bl_s2_or_24_ihc_215_out_iowr_bl_s2_2_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,68)
    assign out_iowr_bl_s2_3_o_fifodata = i_iowr_bl_s2_or_16_ihc_217_out_iowr_bl_s2_3_o_fifodata;
    assign out_iowr_bl_s2_3_o_fifovalid = i_iowr_bl_s2_or_16_ihc_217_out_iowr_bl_s2_3_o_fifovalid;

    // dupName_5_ext_sig_sync_out_x(GPOUT,70)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;

    // dupName_6_ext_sig_sync_out_x(GPOUT,71)
    assign out_iord_bl_s0_o_fifoready = i_iord_bl_s0_or_38_ihc_28_out_iord_bl_s0_o_fifoready;
    assign out_iord_bl_s0_o_fifoalmost_full = i_iord_bl_s0_or_38_ihc_28_out_iord_bl_s0_o_fifoalmost_full;

endmodule
