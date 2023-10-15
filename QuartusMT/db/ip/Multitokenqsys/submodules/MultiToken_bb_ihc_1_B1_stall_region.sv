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
// Created for function/kernel MultiToken
// SystemVerilog created on Sat Sep 16 18:56:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_bb_ihc_1_B1_stall_region (
    input wire [0:0] in_iowr_bl_s2_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_0_o_fifovalid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s2_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_1_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_s2_2_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_2_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_3_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_3_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_3_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_4_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_4_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_4_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_5_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_5_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_5_o_fifovalid,
    input wire [31:0] in_iord_bl_s0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out,
    output wire [0:0] out_iord_bl_s0_o_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoalmost_full,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_122_q;
    wire [31:0] c_i32_223_q;
    wire [32:0] i_add12_i_i_ihc_19_a;
    wire [32:0] i_add12_i_i_ihc_19_b;
    logic [32:0] i_add12_i_i_ihc_19_o;
    wire [32:0] i_add12_i_i_ihc_19_q;
    wire [32:0] i_add13_i_i_ihc_110_a;
    wire [32:0] i_add13_i_i_ihc_110_b;
    logic [32:0] i_add13_i_i_ihc_110_o;
    wire [32:0] i_add13_i_i_ihc_110_q;
    wire [0:0] i_iord_bl_s0_or_29_ihc_17_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_or_29_ihc_17_out_iord_bl_s0_o_fifoready;
    wire [31:0] i_iord_bl_s0_or_29_ihc_17_out_o_data;
    wire [0:0] i_iord_bl_s0_or_29_ihc_17_out_o_stall;
    wire [0:0] i_iord_bl_s0_or_29_ihc_17_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_15_ihc_117_out_iowr_bl_s2_5_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_15_ihc_117_out_iowr_bl_s2_5_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_15_ihc_117_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_15_ihc_117_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_15_ihc_117_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_22_ihc_116_out_iowr_bl_s2_4_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_22_ihc_116_out_iowr_bl_s2_4_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_22_ihc_116_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_22_ihc_116_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_22_ihc_116_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_iowr_bl_s2_0_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_iowr_bl_s2_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_iowr_bl_s2_1_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_iowr_bl_s2_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_iowr_bl_s2_2_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_iowr_bl_s2_2_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_iowr_bl_s2_3_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_iowr_bl_s2_3_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_valid_out;
    wire [0:0] i_or_add12_i_i_ihc_112_s;
    reg [31:0] i_or_add12_i_i_ihc_112_q;
    wire [0:0] i_or_add13_i_i_ihc_113_s;
    reg [31:0] i_or_add13_i_i_ihc_113_q;
    wire [31:0] bgTrunc_i_add12_i_i_ihc_19_sel_x_b;
    wire [31:0] bgTrunc_i_add13_i_i_ihc_110_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_q;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_q;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_q;
    reg [0:0] redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_q;
    reg [0:0] redist3_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_1_0_q;
    reg [0:0] redist4_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_2_0_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_0_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_1_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_2_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_3_q;
    reg [0:0] redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    reg [31:0] redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_q;
    reg [31:0] redist9_bgTrunc_i_add12_i_i_ihc_19_sel_x_b_1_0_q;
    reg [0:0] redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_q;
    reg [0:0] redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_q;
    reg [0:0] redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_1_0_q;
    wire [31:0] bubble_join_i_iord_bl_s0_or_29_ihc_17_q;
    wire [31:0] bubble_select_i_iord_bl_s0_or_29_ihc_17_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_15_ihc_117_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_15_ihc_117_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_22_ihc_116_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_22_ihc_116_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_c;
    wire [2:0] bubble_join_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_d;
    wire [0:0] bubble_join_ihc_1_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_1_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_wireStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_StallValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_toReg0;
    reg [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_consumed0;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_toReg1;
    reg [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_consumed1;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_or0;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_V0;
    wire [0:0] SE_out_i_iord_bl_s0_or_29_ihc_17_V1;
    wire [0:0] SE_out_i_iowr_bl_s2_or_15_ihc_117_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_15_ihc_117_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_15_ihc_117_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_22_ihc_116_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_22_ihc_116_and0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_22_ihc_116_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_22_ihc_116_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_and0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_15_ihc_115_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_15_ihc_115_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_backStall;
    wire [0:0] SE_i_or_add12_i_i_ihc_112_wireValid;
    wire [0:0] SE_i_or_add12_i_i_ihc_112_and0;
    wire [0:0] SE_i_or_add12_i_i_ihc_112_backStall;
    wire [0:0] SE_i_or_add12_i_i_ihc_112_V0;
    reg [0:0] SE_i_or_add13_i_i_ihc_113_R_v_0;
    wire [0:0] SE_i_or_add13_i_i_ihc_113_v_s_0;
    wire [0:0] SE_i_or_add13_i_i_ihc_113_s_tv_0;
    wire [0:0] SE_i_or_add13_i_i_ihc_113_backEN;
    wire [0:0] SE_i_or_add13_i_i_ihc_113_backStall;
    wire [0:0] SE_i_or_add13_i_i_ihc_113_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_V1;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_sel_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_sel_for_coalesced_delay_0_and0;
    wire [0:0] SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] SE_sel_for_coalesced_delay_0_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_V1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_or1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V2;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V1;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_or0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_or1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V2;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    reg [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_or0;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V0;
    wire [0:0] SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V1;
    reg [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_V0;
    reg [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_V0;
    reg [0:0] SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_1_0_R_v_0;
    wire [0:0] SE_coalesced_delay_1_0_v_s_0;
    wire [0:0] SE_coalesced_delay_1_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_0_backEN;
    wire [0:0] SE_coalesced_delay_1_0_backStall;
    wire [0:0] SE_coalesced_delay_1_0_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D1;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D2;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_D1;
    wire [0:0] SR_SE_coalesced_delay_1_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_1_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_0_V;
    wire [1:0] SR_SE_coalesced_delay_1_0_D0;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data0;
    reg [31:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data1;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_D0;
    wire [31:0] SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_D1;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_D1;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [1:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_i_or_add13_i_i_ihc_113_i_valid;
    reg [0:0] SR_SE_i_or_add13_i_i_ihc_113_r_valid;
    wire [0:0] SR_SE_i_or_add13_i_i_ihc_113_and0;
    reg [0:0] SR_SE_i_or_add13_i_i_ihc_113_r_data0;
    reg [31:0] SR_SE_i_or_add13_i_i_ihc_113_r_data1;
    wire [0:0] SR_SE_i_or_add13_i_i_ihc_113_backStall;
    wire [0:0] SR_SE_i_or_add13_i_i_ihc_113_V;
    wire [0:0] SR_SE_i_or_add13_i_i_ihc_113_D0;
    wire [31:0] SR_SE_i_or_add13_i_i_ihc_113_D1;
    wire [0:0] SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_D0;


    // bubble_join_i_iowr_bl_s2_unnamed_ihc_14_ihc_114(BITJOIN,132)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_q = i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_14_ihc_114(BITSELECT,133)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_q[0:0]);

    // join_for_coalesced_delay_1(BITJOIN,95)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_b, redist4_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_2_0_q};

    // SE_out_i_iowr_bl_s2_unnamed_ihc_15_ihc_115(STALLENABLE,167)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_15_ihc_115_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_15_ihc_115_wireValid = i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_o_valid;

    // coalesced_delay_1_0(REG,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(SR_SE_coalesced_delay_1_0_D0);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,96)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_0_q[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_0_q[1:1]);

    // i_iowr_bl_s2_unnamed_ihc_15_ihc_115(BLACKBOX,19)@12
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_3_o_fifodata@20000000
    // out out_iowr_bl_s2_3_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_15_ihc_10 thei_iowr_bl_s2_unnamed_ihc_15_ihc_115 (
        .in_c1_exe2(sel_for_coalesced_delay_1_b),
        .in_i_data(c_i32_223_q),
        .in_i_dependence(sel_for_coalesced_delay_1_c),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_15_ihc_115_backStall),
        .in_i_valid(SE_coalesced_delay_1_0_V0),
        .in_iowr_bl_s2_3_i_fifoready(in_iowr_bl_s2_3_i_fifoready),
        .out_iowr_bl_s2_3_o_fifodata(i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_iowr_bl_s2_3_o_fifodata),
        .out_iowr_bl_s2_3_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_iowr_bl_s2_3_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_1_0(STALLENABLE,205)
    // Valid signal propagation
    assign SE_coalesced_delay_1_0_V0 = SE_coalesced_delay_1_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_0_s_tv_0 = i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_o_stall & SE_coalesced_delay_1_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_0_backEN = ~ (SE_coalesced_delay_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_0_v_s_0 = SE_coalesced_delay_1_0_backEN & SR_SE_coalesced_delay_1_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_0_backStall = ~ (SE_coalesced_delay_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_0_R_v_0 <= SE_coalesced_delay_1_0_R_v_0 & SE_coalesced_delay_1_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_0_R_v_0 <= SE_coalesced_delay_1_0_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_0(STALLREG,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_0_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_0_r_valid <= SE_coalesced_delay_1_0_backStall & (SR_SE_coalesced_delay_1_0_r_valid | SR_SE_coalesced_delay_1_0_i_valid);

            if (SR_SE_coalesced_delay_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_0_r_data0 <= $unsigned(join_for_coalesced_delay_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_0_i_valid = SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_0_backStall = SR_SE_coalesced_delay_1_0_r_valid | ~ (SR_SE_coalesced_delay_1_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_0_V = SR_SE_coalesced_delay_1_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_0_r_valid : SR_SE_coalesced_delay_1_0_i_valid;

    assign SR_SE_coalesced_delay_1_0_D0 = SR_SE_coalesced_delay_1_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_0_r_data0 : join_for_coalesced_delay_1_q;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114(STALLENABLE,165)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall = SR_SE_coalesced_delay_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_and0 = i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_valid;
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V2 & SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_and0;

    // bubble_join_i_iowr_bl_s2_unnamed_ihc_13_ihc_111(BITJOIN,129)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_q = i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_13_ihc_111(BITSELECT,130)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_q[0:0]);

    // redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0(REG,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_b);
        end
    end

    // redist4_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_2_0(REG,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_2_0_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D1);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_14_ihc_114(BLACKBOX,18)@11
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_2_o_fifodata@20000000
    // out out_iowr_bl_s2_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_14_ihc_10 thei_iowr_bl_s2_unnamed_ihc_14_ihc_114 (
        .in_c1_exe2(redist4_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_2_0_q),
        .in_i_data(c_i32_122_q),
        .in_i_dependence(redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_V0),
        .in_iowr_bl_s2_2_i_fifoready(in_iowr_bl_s2_2_i_fifoready),
        .out_iowr_bl_s2_2_o_fifodata(i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_iowr_bl_s2_2_o_fifodata),
        .out_iowr_bl_s2_2_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_iowr_bl_s2_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_1(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D2);
        end
    end

    // redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D0);
        end
    end

    // bubble_join_i_iord_bl_s0_or_29_ihc_17(BITJOIN,116)
    assign bubble_join_i_iord_bl_s0_or_29_ihc_17_q = i_iord_bl_s0_or_29_ihc_17_out_o_data;

    // bubble_select_i_iord_bl_s0_or_29_ihc_17(BITSELECT,117)
    assign bubble_select_i_iord_bl_s0_or_29_ihc_17_b = $unsigned(bubble_join_i_iord_bl_s0_or_29_ihc_17_q[31:0]);

    // i_add12_i_i_ihc_19(ADD,11)@12
    assign i_add12_i_i_ihc_19_a = {1'b0, bubble_select_i_iord_bl_s0_or_29_ihc_17_b};
    assign i_add12_i_i_ihc_19_b = {1'b0, c_i32_122_q};
    assign i_add12_i_i_ihc_19_o = $unsigned(i_add12_i_i_ihc_19_a) + $unsigned(i_add12_i_i_ihc_19_b);
    assign i_add12_i_i_ihc_19_q = i_add12_i_i_ihc_19_o[32:0];

    // bgTrunc_i_add12_i_i_ihc_19_sel_x(BITSELECT,55)@12
    assign bgTrunc_i_add12_i_i_ihc_19_sel_x_b = i_add12_i_i_ihc_19_q[31:0];

    // i_add13_i_i_ihc_110(ADD,12)@12
    assign i_add13_i_i_ihc_110_a = {1'b0, bubble_select_i_iord_bl_s0_or_29_ihc_17_b};
    assign i_add13_i_i_ihc_110_b = {1'b0, c_i32_223_q};
    assign i_add13_i_i_ihc_110_o = $unsigned(i_add13_i_i_ihc_110_a) + $unsigned(i_add13_i_i_ihc_110_b);
    assign i_add13_i_i_ihc_110_q = i_add13_i_i_ihc_110_o[32:0];

    // bgTrunc_i_add13_i_i_ihc_110_sel_x(BITSELECT,56)@12
    assign bgTrunc_i_add13_i_i_ihc_110_sel_x_b = i_add13_i_i_ihc_110_q[31:0];

    // bubble_join_i_iowr_bl_s2_or_22_ihc_116(BITJOIN,123)
    assign bubble_join_i_iowr_bl_s2_or_22_ihc_116_q = i_iowr_bl_s2_or_22_ihc_116_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_22_ihc_116(BITSELECT,124)
    assign bubble_select_i_iowr_bl_s2_or_22_ihc_116_b = $unsigned(bubble_join_i_iowr_bl_s2_or_22_ihc_116_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,92)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iowr_bl_s2_or_22_ihc_116_b, redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_q};

    // bubble_join_i_iowr_bl_s2_or_15_ihc_117(BITJOIN,120)
    assign bubble_join_i_iowr_bl_s2_or_15_ihc_117_q = i_iowr_bl_s2_or_15_ihc_117_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_15_ihc_117(BITSELECT,121)
    assign bubble_select_i_iowr_bl_s2_or_15_ihc_117_b = $unsigned(bubble_join_i_iowr_bl_s2_or_15_ihc_117_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118(STALLENABLE,171)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_wireValid = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,139)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,140)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,174)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_1_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_1_B1_merge_reg_aunroll_x(BLACKBOX,73)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    MultiToken_ihc_1_B1_merge_reg theihc_1_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_1_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_1_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_1_B1_merge_reg_aunroll_x(BITJOIN,149)
    assign bubble_join_ihc_1_B1_merge_reg_aunroll_x_q = ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_1_B1_merge_reg_aunroll_x(BITSELECT,150)
    assign bubble_select_ihc_1_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_1_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_1_B1_merge_reg_aunroll_x(STALLENABLE,183)
    // Valid signal propagation
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall | ~ (SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid = ihc_1_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BLACKBOX,71)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@7
    // out out_c0_exit_1_tpl@7
    // out out_c0_exit_2_tpl@7
    MultiToken_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11 thei_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall),
        .in_i_valid(SE_out_ihc_1_B1_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ihc_1_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(STALLENABLE,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed0 = (~ (SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid;

    // SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0(STALLENABLE,198)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_V0 = SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_stall_out & SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backEN = ~ (SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0 = SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backEN & SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = ~ (SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 & SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BITJOIN,143)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q = {i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BITSELECT,144)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q[1:1]);

    // redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0(REG,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_c);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13(BLACKBOX,20)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_10 thei_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13 (
        .in_data_in(GND_q),
        .in_dir(redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_backStall),
        .in_valid_in(SE_redist7_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl_1_0_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_q <= $unsigned(SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_D0);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118(BLACKBOX,21)@15
    // in in_stall_in@20000000
    // out out_data_out@16
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@16
    MultiToken_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_10 thei_llvm_fpga_push_i1_memdep_phi_push4_ihc_118 (
        .in_data_in(redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_feedback_stall_out_4),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_backStall),
        .in_valid_in(SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0(STALLENABLE,203)
    // Valid signal propagation
    assign SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_V0 = SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_118_out_stall_out & SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backEN = ~ (SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_v_s_0 = SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backEN & SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backStall = ~ (SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_R_v_0 <= SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_R_v_0 & SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_R_v_0 <= SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0(STALLREG,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid <= SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backStall & (SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid | SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_i_valid);

            if (SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s2_or_15_ihc_117_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s2_or_15_ihc_117_V0;
    // Stall signal propagation
    assign SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backStall = SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid | ~ (SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_V = SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid : SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_i_valid;

    assign SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_D0 = SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s2_or_15_ihc_117_b;

    // SE_out_i_iowr_bl_s2_or_15_ihc_117(STALLENABLE,157)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_15_ihc_117_V0 = SE_out_i_iowr_bl_s2_or_15_ihc_117_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_15_ihc_117_backStall = SR_SE_redist14_i_iowr_bl_s2_or_15_ihc_117_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_15_ihc_117_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_15_ihc_117_wireValid = i_iowr_bl_s2_or_15_ihc_117_out_o_valid;

    // i_or_add13_i_i_ihc_113(MUX,23)@13 + 1
    assign i_or_add13_i_i_ihc_113_s = SR_SE_i_or_add13_i_i_ihc_113_D0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_or_add13_i_i_ihc_113_q <= 32'b0;
        end
        else if (SE_i_or_add13_i_i_ihc_113_backEN == 1'b1)
        begin
            unique case (i_or_add13_i_i_ihc_113_s)
                1'b0 : i_or_add13_i_i_ihc_113_q <= SR_SE_i_or_add13_i_i_ihc_113_D1;
                1'b1 : i_or_add13_i_i_ihc_113_q <= c_i32_223_q;
                default : i_or_add13_i_i_ihc_113_q <= 32'b0;
            endcase
        end
    end

    // coalesced_delay_0_0(REG,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,93)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_iowr_bl_s2_or_15_ihc_117(BLACKBOX,14)@14
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_5_o_fifodata@20000000
    // out out_iowr_bl_s2_5_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_15_ihc_10 thei_iowr_bl_s2_or_15_ihc_117 (
        .in_c1_exe1(sel_for_coalesced_delay_0_b),
        .in_i_data(i_or_add13_i_i_ihc_113_q),
        .in_i_dependence(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_15_ihc_117_backStall),
        .in_i_valid(SE_sel_for_coalesced_delay_0_V0),
        .in_iowr_bl_s2_5_i_fifoready(in_iowr_bl_s2_5_i_fifoready),
        .out_iowr_bl_s2_5_o_fifodata(i_iowr_bl_s2_or_15_ihc_117_out_iowr_bl_s2_5_o_fifodata),
        .out_iowr_bl_s2_5_o_fifovalid(i_iowr_bl_s2_or_15_ihc_117_out_iowr_bl_s2_5_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_15_ihc_117_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_15_ihc_117_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_15_ihc_117_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_or_add13_i_i_ihc_113(STALLENABLE,173)
    // Valid signal propagation
    assign SE_i_or_add13_i_i_ihc_113_V0 = SE_i_or_add13_i_i_ihc_113_R_v_0;
    // Stall signal propagation
    assign SE_i_or_add13_i_i_ihc_113_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_i_or_add13_i_i_ihc_113_R_v_0;
    // Backward Enable generation
    assign SE_i_or_add13_i_i_ihc_113_backEN = ~ (SE_i_or_add13_i_i_ihc_113_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_or_add13_i_i_ihc_113_v_s_0 = SE_i_or_add13_i_i_ihc_113_backEN & SR_SE_i_or_add13_i_i_ihc_113_V;
    // Backward Stall generation
    assign SE_i_or_add13_i_i_ihc_113_backStall = ~ (SE_i_or_add13_i_i_ihc_113_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_add13_i_i_ihc_113_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_or_add13_i_i_ihc_113_backEN == 1'b0)
            begin
                SE_i_or_add13_i_i_ihc_113_R_v_0 <= SE_i_or_add13_i_i_ihc_113_R_v_0 & SE_i_or_add13_i_i_ihc_113_s_tv_0;
            end
            else
            begin
                SE_i_or_add13_i_i_ihc_113_R_v_0 <= SE_i_or_add13_i_i_ihc_113_v_s_0;
            end

        end
    end

    // SE_sel_for_coalesced_delay_0(STALLENABLE,185)
    // Valid signal propagation
    assign SE_sel_for_coalesced_delay_0_V0 = SE_sel_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_sel_for_coalesced_delay_0_backStall = i_iowr_bl_s2_or_15_ihc_117_out_o_stall | ~ (SE_sel_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_sel_for_coalesced_delay_0_and0 = SE_coalesced_delay_0_0_V0;
    assign SE_sel_for_coalesced_delay_0_wireValid = SE_i_or_add13_i_i_ihc_113_V0 & SE_sel_for_coalesced_delay_0_and0;

    // SE_coalesced_delay_0_0(STALLENABLE,204)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SR_SE_coalesced_delay_0_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_backEN);
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

    // SR_SE_coalesced_delay_0_0(STALLREG,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_0_r_valid <= SE_coalesced_delay_0_0_backStall & (SR_SE_coalesced_delay_0_0_r_valid | SR_SE_coalesced_delay_0_0_i_valid);

            if (SR_SE_coalesced_delay_0_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_i_iowr_bl_s2_or_22_ihc_116_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_out_i_iowr_bl_s2_or_22_ihc_116(STALLENABLE,159)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_22_ihc_116_V0 = SE_out_i_iowr_bl_s2_or_22_ihc_116_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_22_ihc_116_backStall = SR_SE_coalesced_delay_0_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_22_ihc_116_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_22_ihc_116_and0 = i_iowr_bl_s2_or_22_ihc_116_out_o_valid;
    assign SE_out_i_iowr_bl_s2_or_22_ihc_116_wireValid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V1 & SE_out_i_iowr_bl_s2_or_22_ihc_116_and0;

    // redist9_bgTrunc_i_add12_i_i_ihc_19_sel_x_b_1_0(REG,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_bgTrunc_i_add12_i_i_ihc_19_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist9_bgTrunc_i_add12_i_i_ihc_19_sel_x_b_1_0_q <= $unsigned(SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_D1);
        end
    end

    // redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_3(REG,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_3_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_D1);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_or_add12_i_i_ihc_112(MUX,22)@13
    assign i_or_add12_i_i_ihc_112_s = redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_3_q;
    always @(i_or_add12_i_i_ihc_112_s or redist9_bgTrunc_i_add12_i_i_ihc_19_sel_x_b_1_0_q or c_i32_122_q)
    begin
        unique case (i_or_add12_i_i_ihc_112_s)
            1'b0 : i_or_add12_i_i_ihc_112_q = redist9_bgTrunc_i_add12_i_i_ihc_19_sel_x_b_1_0_q;
            1'b1 : i_or_add12_i_i_ihc_112_q = c_i32_122_q;
            default : i_or_add12_i_i_ihc_112_q = 32'b0;
        endcase
    end

    // redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0(REG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_D0);
        end
    end

    // i_iowr_bl_s2_or_22_ihc_116(BLACKBOX,15)@13
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_4_o_fifodata@20000000
    // out out_iowr_bl_s2_4_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_22_ihc_10 thei_iowr_bl_s2_or_22_ihc_116 (
        .in_c1_exe1(redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_q),
        .in_i_data(i_or_add12_i_i_ihc_112_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_22_ihc_116_backStall),
        .in_i_valid(SE_i_or_add12_i_i_ihc_112_V0),
        .in_iowr_bl_s2_4_i_fifoready(in_iowr_bl_s2_4_i_fifoready),
        .out_iowr_bl_s2_4_o_fifodata(i_iowr_bl_s2_or_22_ihc_116_out_iowr_bl_s2_4_o_fifodata),
        .out_iowr_bl_s2_4_o_fifovalid(i_iowr_bl_s2_or_22_ihc_116_out_iowr_bl_s2_4_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_22_ihc_116_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_22_ihc_116_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_22_ihc_116_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0(STALLENABLE,191)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V2 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0 = SE_i_or_add12_i_i_ihc_112_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1 = SE_out_i_iowr_bl_s2_or_22_ihc_116_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2 = SR_SE_i_or_add13_i_i_ihc_113_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_or0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_or1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_or0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN & SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backStall = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

        end
    end

    // SE_i_or_add12_i_i_ihc_112(STALLENABLE,172)
    // Valid signal propagation
    assign SE_i_or_add12_i_i_ihc_112_V0 = SE_i_or_add12_i_i_ihc_112_wireValid;
    // Backward Stall generation
    assign SE_i_or_add12_i_i_ihc_112_backStall = i_iowr_bl_s2_or_22_ihc_116_out_o_stall | ~ (SE_i_or_add12_i_i_ihc_112_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_or_add12_i_i_ihc_112_and0 = SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V1;
    assign SE_i_or_add12_i_i_ihc_112_wireValid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V0 & SE_i_or_add12_i_i_ihc_112_and0;

    // redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0(REG,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_q <= $unsigned(SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_D0);
        end
    end

    // SR_SE_i_or_add13_i_i_ihc_113(STALLREG,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_or_add13_i_i_ihc_113_r_valid <= 1'b0;
            SR_SE_i_or_add13_i_i_ihc_113_r_data0 <= 1'bx;
            SR_SE_i_or_add13_i_i_ihc_113_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_or_add13_i_i_ihc_113_r_valid <= SE_i_or_add13_i_i_ihc_113_backStall & (SR_SE_i_or_add13_i_i_ihc_113_r_valid | SR_SE_i_or_add13_i_i_ihc_113_i_valid);

            if (SR_SE_i_or_add13_i_i_ihc_113_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_or_add13_i_i_ihc_113_r_data0 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_3_q);
                SR_SE_i_or_add13_i_i_ihc_113_r_data1 <= $unsigned(redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_or_add13_i_i_ihc_113_and0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V2;
    assign SR_SE_i_or_add13_i_i_ihc_113_i_valid = SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V0 & SR_SE_i_or_add13_i_i_ihc_113_and0;
    // Stall signal propagation
    assign SR_SE_i_or_add13_i_i_ihc_113_backStall = SR_SE_i_or_add13_i_i_ihc_113_r_valid | ~ (SR_SE_i_or_add13_i_i_ihc_113_i_valid);

    // Valid
    assign SR_SE_i_or_add13_i_i_ihc_113_V = SR_SE_i_or_add13_i_i_ihc_113_r_valid == 1'b1 ? SR_SE_i_or_add13_i_i_ihc_113_r_valid : SR_SE_i_or_add13_i_i_ihc_113_i_valid;

    // Data0
    assign SR_SE_i_or_add13_i_i_ihc_113_D0 = SR_SE_i_or_add13_i_i_ihc_113_r_valid == 1'b1 ? SR_SE_i_or_add13_i_i_ihc_113_r_data0 : redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_3_q;
    // Data1
    assign SR_SE_i_or_add13_i_i_ihc_113_D1 = SR_SE_i_or_add13_i_i_ihc_113_r_valid == 1'b1 ? SR_SE_i_or_add13_i_i_ihc_113_r_data1 : redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_q;

    // SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0(STALLENABLE,199)
    // Valid signal propagation
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V0 = SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_0;
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V1 = SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_0 = SR_SE_i_or_add13_i_i_ihc_113_backStall & SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_0;
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_1 = SE_i_or_add12_i_i_ihc_112_backStall & SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_or0 = SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_0;
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN = ~ (SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_1 | SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_v_s_0 = SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN & SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backStall = ~ (SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_0 & SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_1 <= SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_1 & SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_R_v_1 <= SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0(STALLREG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid <= SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backStall & (SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid | SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_i_valid);

            if (SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data0 <= bgTrunc_i_add13_i_i_ihc_110_sel_x_b;
                SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data1 <= bgTrunc_i_add12_i_i_ihc_19_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_i_valid = SE_out_i_iord_bl_s0_or_29_ihc_17_V1;
    // Stall signal propagation
    assign SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backStall = SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid | ~ (SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_V = SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid : SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_i_valid;

    // Data0
    assign SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_D0 = SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data0 : bgTrunc_i_add13_i_i_ihc_110_sel_x_b;
    // Data1
    assign SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_D1 = SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_r_data1 : bgTrunc_i_add12_i_i_ihc_19_sel_x_b;

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg(STALLFIFO,258)
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1(STALLENABLE,237)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_and0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_wireValid = SE_out_i_iord_bl_s0_or_29_ihc_17_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_and0;

    // SE_out_i_iord_bl_s0_or_29_ihc_17(STALLENABLE,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg0 <= '0;
            SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg0 <= SE_out_i_iord_bl_s0_or_29_ihc_17_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg1 <= SE_out_i_iord_bl_s0_or_29_ihc_17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_backStall) & SE_out_i_iord_bl_s0_or_29_ihc_17_wireValid) | SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg0;
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_consumed1 = (~ (SR_SE_redist8_bgTrunc_i_add13_i_i_ihc_110_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s0_or_29_ihc_17_wireValid) | SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_StallValid = SE_out_i_iord_bl_s0_or_29_ihc_17_backStall & SE_out_i_iord_bl_s0_or_29_ihc_17_wireValid;
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_toReg0 = SE_out_i_iord_bl_s0_or_29_ihc_17_StallValid & SE_out_i_iord_bl_s0_or_29_ihc_17_consumed0;
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_toReg1 = SE_out_i_iord_bl_s0_or_29_ihc_17_StallValid & SE_out_i_iord_bl_s0_or_29_ihc_17_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_or0 = SE_out_i_iord_bl_s0_or_29_ihc_17_consumed0;
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_wireStall = ~ (SE_out_i_iord_bl_s0_or_29_ihc_17_consumed1 & SE_out_i_iord_bl_s0_or_29_ihc_17_or0);
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_backStall = SE_out_i_iord_bl_s0_or_29_ihc_17_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_V0 = SE_out_i_iord_bl_s0_or_29_ihc_17_wireValid & ~ (SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg0);
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_V1 = SE_out_i_iord_bl_s0_or_29_ihc_17_wireValid & ~ (SE_out_i_iord_bl_s0_or_29_ihc_17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_or_29_ihc_17_wireValid = i_iord_bl_s0_or_29_ihc_17_out_o_valid;

    // redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2(REG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_D0);
        end
    end

    // i_iord_bl_s0_or_29_ihc_17(BLACKBOX,13)@12
    // in in_i_stall@20000000
    // out out_iord_bl_s0_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_o_fifoready@20000000
    // out out_o_stall@20000000
    MultiToken_i_iord_bl_s0_or_29_ihc_10 thei_iord_bl_s0_or_29_ihc_17 (
        .in_c1_exe1(redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_q),
        .in_i_stall(SE_out_i_iord_bl_s0_or_29_ihc_17_backStall),
        .in_i_valid(SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V1),
        .in_iord_bl_s0_i_fifodata(in_iord_bl_s0_i_fifodata),
        .in_iord_bl_s0_i_fifovalid(in_iord_bl_s0_i_fifovalid),
        .out_iord_bl_s0_o_fifoalmost_full(i_iord_bl_s0_or_29_ihc_17_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(i_iord_bl_s0_or_29_ihc_17_out_iord_bl_s0_o_fifoready),
        .out_o_data(i_iord_bl_s0_or_29_ihc_17_out_o_data),
        .out_o_stall(i_iord_bl_s0_or_29_ihc_17_out_o_stall),
        .out_o_valid(i_iord_bl_s0_or_29_ihc_17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_2(REG,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_2_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_D1);
        end
    end

    // SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0(STALLREG,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 <= 1'bx;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backStall & (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid | SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid);

            if (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_q);
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backStall = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid | ~ (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_V = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid : SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid;

    // Data0
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_D0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_q;
    // Data1
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_D1 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 : redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_2_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2(STALLENABLE,190)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_4_0_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1 = i_iord_bl_s0_or_29_ihc_17_out_o_stall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN & SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2(STALLREG,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backStall & (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid | SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backStall = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_V = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid : SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid;

    // Data0
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_D0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_q;
    // Data1
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_D1 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1 : redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_1_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1(STALLENABLE,189)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V2 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_2_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1 = SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2 = SE_out_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_or1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_or0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN & SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114(STALLENABLE,164)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall = i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_wireValid = SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_and0;

    // SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0(STALLENABLE,201)
    // Valid signal propagation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_V0 = SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_14_ihc_114_backStall & SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backEN = ~ (SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_v_s_0 = SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_V0;
    // Backward Stall generation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backStall = ~ (SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_R_v_0 <= SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_R_v_0 & SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_R_v_0 <= SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111(STALLENABLE,163)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_backStall = SE_redist11_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid = i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_valid;

    // bubble_join_i_iowr_bl_s2_unnamed_ihc_12_ihc_18(BITJOIN,126)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_q = i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_12_ihc_18(BITSELECT,127)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_q[0:0]);

    // redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0(REG,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_b);
        end
    end

    // c_i32_223(CONSTANT,6)
    assign c_i32_223_q = $unsigned(32'b00000000000000000000000000000010);

    // redist3_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_1_0(REG,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b1)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_c);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_13_ihc_111(BLACKBOX,17)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_1_o_fifodata@20000000
    // out out_iowr_bl_s2_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_13_ihc_10 thei_iowr_bl_s2_unnamed_ihc_13_ihc_111 (
        .in_c1_exe2(redist3_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_1_0_q),
        .in_i_data(c_i32_223_q),
        .in_i_dependence(redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_V0),
        .in_iowr_bl_s2_1_i_fifoready(in_iowr_bl_s2_1_i_fifoready),
        .out_iowr_bl_s2_1_o_fifodata(i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_iowr_bl_s2_1_o_fifodata),
        .out_iowr_bl_s2_1_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_iowr_bl_s2_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0(STALLENABLE,202)
    // Valid signal propagation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_V0 = SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_backStall & SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backEN = ~ (SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_v_s_0 = SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_V0;
    // Backward Stall generation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backStall = ~ (SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_R_v_0 <= SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_R_v_0 & SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_R_v_0 <= SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111(STALLENABLE,162)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_backStall = i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_wireValid = SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_and0;

    // redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_0(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_d);
        end
    end

    // redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_b);
        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1(STALLREG,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backStall & (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid | SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1 <= $unsigned(redist3_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_1_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backStall = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_V = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid : SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid;

    // Data0
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_q;
    // Data1
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D1 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1 : redist3_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl_1_0_q;
    // Data2
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_D2 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2 : redist6_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl_4_0_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0(STALLENABLE,188)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_1_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1 = SE_in_i_iowr_bl_s2_unnamed_ihc_13_ihc_111_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN & SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
            end

        end
    end

    // i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x(BLACKBOX,72)@7
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c1_exit_0_tpl@9
    // out out_c1_exit_1_tpl@9
    // out out_c1_exit_2_tpl@9
    // out out_c1_exit_3_tpl@9
    MultiToken_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15 thei_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x(STALLENABLE,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed0 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed1 = (~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl_3_0_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_wireValid = i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13(STALLENABLE,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed1 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_valid_out;

    // SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18(STALLENABLE,160)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_backStall = i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_and0;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18(STALLENABLE,161)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_backStall = SE_redist12_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_wireValid = i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13(BITJOIN,135)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_q = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13(BITSELECT,136)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_q[0:0]);

    // c_i32_122(CONSTANT,5)
    assign c_i32_122_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x(BITJOIN,146)
    assign bubble_join_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_q = {i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x(BITSELECT,147)
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_q[2:2]);

    // i_iowr_bl_s2_unnamed_ihc_12_ihc_18(BLACKBOX,16)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_0_o_fifodata@20000000
    // out out_iowr_bl_s2_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_12_ihc_10 thei_iowr_bl_s2_unnamed_ihc_12_ihc_18 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihc_1s_c1_enter_ihc_15_aunroll_x_c),
        .in_i_data(c_i32_122_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_b),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_12_ihc_18_V0),
        .in_iowr_bl_s2_0_i_fifoready(in_iowr_bl_s2_0_i_fifoready),
        .out_iowr_bl_s2_0_o_fifodata(i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_iowr_bl_s2_0_o_fifodata),
        .out_iowr_bl_s2_0_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_iowr_bl_s2_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_iowr_bl_s2_0_o_fifodata = i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_iowr_bl_s2_0_o_fifodata;
    assign out_iowr_bl_s2_0_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_12_ihc_18_out_iowr_bl_s2_0_o_fifovalid;

    // pipeline_valid_out_sync(GPOUT,49)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,53)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,58)
    assign out_iowr_bl_s2_1_o_fifodata = i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_iowr_bl_s2_1_o_fifodata;
    assign out_iowr_bl_s2_1_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_13_ihc_111_out_iowr_bl_s2_1_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,59)@12
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_13_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,61)
    assign out_iowr_bl_s2_2_o_fifodata = i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_iowr_bl_s2_2_o_fifodata;
    assign out_iowr_bl_s2_2_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_14_ihc_114_out_iowr_bl_s2_2_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,63)
    assign out_iowr_bl_s2_3_o_fifodata = i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_iowr_bl_s2_3_o_fifodata;
    assign out_iowr_bl_s2_3_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_15_ihc_115_out_iowr_bl_s2_3_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,65)
    assign out_iowr_bl_s2_4_o_fifodata = i_iowr_bl_s2_or_22_ihc_116_out_iowr_bl_s2_4_o_fifodata;
    assign out_iowr_bl_s2_4_o_fifovalid = i_iowr_bl_s2_or_22_ihc_116_out_iowr_bl_s2_4_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,67)
    assign out_iowr_bl_s2_5_o_fifodata = i_iowr_bl_s2_or_15_ihc_117_out_iowr_bl_s2_5_o_fifodata;
    assign out_iowr_bl_s2_5_o_fifovalid = i_iowr_bl_s2_or_15_ihc_117_out_iowr_bl_s2_5_o_fifovalid;

    // dupName_5_ext_sig_sync_out_x(GPOUT,69)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out;

    // dupName_6_ext_sig_sync_out_x(GPOUT,70)
    assign out_iord_bl_s0_o_fifoready = i_iord_bl_s0_or_29_ihc_17_out_iord_bl_s0_o_fifoready;
    assign out_iord_bl_s0_o_fifoalmost_full = i_iord_bl_s0_or_29_ihc_17_out_iord_bl_s0_o_fifoalmost_full;

endmodule
