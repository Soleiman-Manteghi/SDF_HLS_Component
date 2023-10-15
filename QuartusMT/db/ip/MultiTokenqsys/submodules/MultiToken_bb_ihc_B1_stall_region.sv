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
// Created for function/kernel MultiToken
// SystemVerilog created on Sun Sep 17 05:01:31 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_bb_ihc_B1_stall_region (
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
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_120_q;
    wire [31:0] c_i32_221_q;
    wire [31:0] i_iowr_bl_s1_or_28_ihc12_out_iowr_bl_s1_1_o_fifodata;
    wire [0:0] i_iowr_bl_s1_or_28_ihc12_out_iowr_bl_s1_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_or_28_ihc12_out_o_ack;
    wire [0:0] i_iowr_bl_s1_or_28_ihc12_out_o_stall;
    wire [0:0] i_iowr_bl_s1_or_28_ihc12_out_o_valid;
    wire [31:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifodata;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_stall;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_14_ihc15_out_iowr_bl_s2_3_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_14_ihc15_out_iowr_bl_s2_3_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_14_ihc15_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_14_ihc15_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_14_ihc15_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_21_ihc13_out_iowr_bl_s2_2_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_21_ihc13_out_iowr_bl_s2_2_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_21_ihc13_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_21_ihc13_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_21_ihc13_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc3_ihc9_out_iowr_bl_s2_0_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc3_ihc9_out_iowr_bl_s2_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc4_ihc11_out_iowr_bl_s2_1_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc4_ihc11_out_iowr_bl_s2_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc4_ihc11_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc4_ihc11_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_valid_out;
    wire [0:0] i_or_inc9_i_i23_ihc10_s;
    reg [31:0] i_or_inc9_i_i23_ihc10_q;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_3_tpl;
    wire [31:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_4_tpl;
    wire [31:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_0_q;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_q;
    reg [31:0] redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_0_q;
    reg [31:0] redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_1_q;
    reg [31:0] redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_q;
    reg [0:0] redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_q;
    reg [31:0] redist5_i_or_inc9_i_i23_ihc10_q_2_0_q;
    reg [0:0] redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_q;
    reg [0:0] redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_1_0_q;
    wire [0:0] bubble_join_i_iowr_bl_s1_or_28_ihc12_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_or_28_ihc12_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_14_ihc15_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_14_ihc15_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_21_ihc13_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_21_ihc13_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc3_ihc9_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc3_ihc9_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c;
    wire [66:0] bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_f;
    wire [0:0] bubble_join_ihc_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iowr_bl_s1_or_28_ihc12_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_or_28_ihc12_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_or_28_ihc12_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_14_ihc15_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_14_ihc15_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_14_ihc15_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_21_ihc13_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_21_ihc13_and0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_21_ihc13_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_21_ihc13_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_and0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc4_ihc11_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc4_ihc11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_backStall;
    reg [0:0] SE_i_or_inc9_i_i23_ihc10_R_v_0;
    wire [0:0] SE_i_or_inc9_i_i23_ihc10_v_s_0;
    wire [0:0] SE_i_or_inc9_i_i23_ihc10_s_tv_0;
    wire [0:0] SE_i_or_inc9_i_i23_ihc10_backEN;
    wire [0:0] SE_i_or_inc9_i_i23_ihc10_backStall;
    wire [0:0] SE_i_or_inc9_i_i23_ihc10_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_exit_wireValid;
    wire [0:0] SE_stall_exit_and0;
    wire [0:0] SE_stall_exit_and1;
    wire [0:0] SE_stall_exit_backStall;
    wire [0:0] SE_stall_exit_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V4;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_sel_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_sel_for_coalesced_delay_0_and0;
    wire [0:0] SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] SE_sel_for_coalesced_delay_0_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V3;
    reg [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_R_v_0;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_v_s_0;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backEN;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backStall;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_V0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_R_v_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_V0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_or0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_V0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_V1;
    reg [0:0] SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_V0;
    reg [0:0] SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_V0;
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
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0;
    reg [31:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1;
    reg [31:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D0;
    wire [31:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D1;
    wire [31:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D2;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [1:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid;
    reg [31:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_data0;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_V;
    wire [31:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_D0;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_D0;


    // SE_out_i_iowr_bl_s2_unnamed_ihc4_ihc11(STALLENABLE,142)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc4_ihc11_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc4_ihc11_wireValid = i_iowr_bl_s2_unnamed_ihc4_ihc11_out_o_valid;

    // c_i32_221(CONSTANT,4)
    assign c_i32_221_q = $unsigned(32'b00000000000000000000000000000010);

    // bubble_join_i_iowr_bl_s2_unnamed_ihc3_ihc9(BITJOIN,106)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc3_ihc9_q = i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc3_ihc9(BITSELECT,107)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc3_ihc9_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc3_ihc9_q[0:0]);

    // join_for_coalesced_delay_1(BITJOIN,82)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_iowr_bl_s2_unnamed_ihc3_ihc9_b, bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_c};

    // coalesced_delay_1_0(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,83)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_0_q[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_0_q[1:1]);

    // i_iowr_bl_s2_unnamed_ihc4_ihc11(BLACKBOX,14)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_1_o_fifodata@20000000
    // out out_iowr_bl_s2_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc4_ihc0 thei_iowr_bl_s2_unnamed_ihc4_ihc11 (
        .in_c1_exe2(sel_for_coalesced_delay_1_b),
        .in_i_data(c_i32_221_q),
        .in_i_dependence(sel_for_coalesced_delay_1_c),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc4_ihc11_backStall),
        .in_i_valid(SE_coalesced_delay_1_0_V0),
        .in_iowr_bl_s2_1_i_fifoready(in_iowr_bl_s2_1_i_fifoready),
        .out_iowr_bl_s2_1_o_fifodata(i_iowr_bl_s2_unnamed_ihc4_ihc11_out_iowr_bl_s2_1_o_fifodata),
        .out_iowr_bl_s2_1_o_fifovalid(i_iowr_bl_s2_unnamed_ihc4_ihc11_out_iowr_bl_s2_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc4_ihc11_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc4_ihc11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_1_0(STALLENABLE,175)
    // Valid signal propagation
    assign SE_coalesced_delay_1_0_V0 = SE_coalesced_delay_1_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_0_s_tv_0 = i_iowr_bl_s2_unnamed_ihc4_ihc11_out_o_stall & SE_coalesced_delay_1_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_0_backEN = ~ (SE_coalesced_delay_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_0_v_s_0 = SE_coalesced_delay_1_0_backEN & SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_1_0_backStall = ~ (SE_coalesced_delay_1_0_v_s_0);
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

    // i_iowr_bl_s2_or_21_ihc13(BLACKBOX,12)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_2_o_fifodata@20000000
    // out out_iowr_bl_s2_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_21_ihc0 thei_iowr_bl_s2_or_21_ihc13 (
        .in_c1_exe1(redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_q),
        .in_i_data(redist5_i_or_inc9_i_i23_ihc10_q_2_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_21_ihc13_backStall),
        .in_i_valid(SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V3),
        .in_iowr_bl_s2_2_i_fifoready(in_iowr_bl_s2_2_i_fifoready),
        .out_iowr_bl_s2_2_o_fifodata(i_iowr_bl_s2_or_21_ihc13_out_iowr_bl_s2_2_o_fifodata),
        .out_iowr_bl_s2_2_o_fifovalid(i_iowr_bl_s2_or_21_ihc13_out_iowr_bl_s2_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_21_ihc13_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_21_ihc13_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_21_ihc13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_1(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b1)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D1);
        end
    end

    // SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0(STALLENABLE,172)
    // Valid signal propagation
    assign SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_V0 = SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_stall_out & SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backEN = ~ (SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_v_s_0 = SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_or_14_ihc15_V0;
    // Backward Stall generation
    assign SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backStall = ~ (SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_R_v_0 <= SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_R_v_0 & SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_R_v_0 <= SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s2_or_14_ihc15(STALLENABLE,136)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_14_ihc15_V0 = SE_out_i_iowr_bl_s2_or_14_ihc15_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_14_ihc15_backStall = SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_14_ihc15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_14_ihc15_wireValid = i_iowr_bl_s2_or_14_ihc15_out_o_valid;

    // redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backEN == 1'b1)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_q <= $unsigned(SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_D0);
        end
    end

    // bubble_join_i_iowr_bl_s2_or_21_ihc13(BITJOIN,103)
    assign bubble_join_i_iowr_bl_s2_or_21_ihc13_q = i_iowr_bl_s2_or_21_ihc13_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_21_ihc13(BITSELECT,104)
    assign bubble_select_i_iowr_bl_s2_or_21_ihc13_b = $unsigned(bubble_join_i_iowr_bl_s2_or_21_ihc13_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,79)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iowr_bl_s2_or_21_ihc13_b, redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_q};

    // SR_SE_coalesced_delay_0_0(STALLREG,227)
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
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_i_iowr_bl_s2_or_21_ihc13_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // coalesced_delay_0_0(REG,94)
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

    // sel_for_coalesced_delay_0(BITSELECT,80)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_iowr_bl_s2_or_14_ihc15(BLACKBOX,11)@11
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_3_o_fifodata@20000000
    // out out_iowr_bl_s2_3_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_14_ihc0 thei_iowr_bl_s2_or_14_ihc15 (
        .in_c1_exe1(sel_for_coalesced_delay_0_b),
        .in_i_data(redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_q),
        .in_i_dependence(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_14_ihc15_backStall),
        .in_i_valid(SE_sel_for_coalesced_delay_0_V0),
        .in_iowr_bl_s2_3_i_fifoready(in_iowr_bl_s2_3_i_fifoready),
        .out_iowr_bl_s2_3_o_fifodata(i_iowr_bl_s2_or_14_ihc15_out_iowr_bl_s2_3_o_fifodata),
        .out_iowr_bl_s2_3_o_fifovalid(i_iowr_bl_s2_or_14_ihc15_out_iowr_bl_s2_3_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_14_ihc15_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_14_ihc15_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_14_ihc15_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,174)
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

    // SE_sel_for_coalesced_delay_0(STALLENABLE,161)
    // Valid signal propagation
    assign SE_sel_for_coalesced_delay_0_V0 = SE_sel_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_sel_for_coalesced_delay_0_backStall = i_iowr_bl_s2_or_14_ihc15_out_o_stall | ~ (SE_sel_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_sel_for_coalesced_delay_0_and0 = SE_coalesced_delay_0_0_V0;
    assign SE_sel_for_coalesced_delay_0_wireValid = SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_V0 & SE_sel_for_coalesced_delay_0_and0;

    // SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2(STALLENABLE,168)
    // Valid signal propagation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_V0 = SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backEN = ~ (SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_v_s_0 = SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backEN & SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backStall = ~ (SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_R_v_0 <= SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_R_v_0 & SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_R_v_0 <= SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_v_s_0;
            end

        end
    end

    // SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2(STALLREG,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid <= SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backStall & (SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid | SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_i_valid);

            if (SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_data0 <= $unsigned(redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V1;
    // Stall signal propagation
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backStall = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid | ~ (SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_V = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid : SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_i_valid;

    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_D0 = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_r_data0 : redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_1_q;

    // SE_out_i_iowr_bl_s2_or_21_ihc13(STALLENABLE,138)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_21_ihc13_V0 = SE_out_i_iowr_bl_s2_or_21_ihc13_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_21_ihc13_backStall = SR_SE_coalesced_delay_0_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_21_ihc13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_21_ihc13_and0 = i_iowr_bl_s2_or_21_ihc13_out_o_valid;
    assign SE_out_i_iowr_bl_s2_or_21_ihc13_wireValid = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V0 & SE_out_i_iowr_bl_s2_or_21_ihc13_and0;

    // i_or_inc9_i_i23_ihc10(MUX,19)@8 + 1
    assign i_or_inc9_i_i23_ihc10_s = bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_d;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_or_inc9_i_i23_ihc10_q <= 32'b0;
        end
        else if (SE_i_or_inc9_i_i23_ihc10_backEN == 1'b1)
        begin
            unique case (i_or_inc9_i_i23_ihc10_s)
                1'b0 : i_or_inc9_i_i23_ihc10_q <= bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_e;
                1'b1 : i_or_inc9_i_i23_ihc10_q <= c_i32_120_q;
                default : i_or_inc9_i_i23_ihc10_q <= 32'b0;
            endcase
        end
    end

    // redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_0(REG,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_or_inc9_i_i23_ihc10_backEN == 1'b1)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_f);
        end
    end

    // redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_0(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_i_or_inc9_i_i23_ihc10_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_b);
        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1(STALLREG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backStall & (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid | SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1 <= $unsigned(redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2 <= i_or_inc9_i_i23_ihc10_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid = SE_i_or_inc9_i_i23_ihc10_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backStall = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid : SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid;

    // Data0
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_0_q;
    // Data1
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D1 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1 : redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_0_q;
    // Data2
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D2 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2 : i_or_inc9_i_i23_ihc10_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1(STALLENABLE,165)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V2 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V3 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0 = SE_out_i_iowr_bl_s2_or_21_ihc13_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1 = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl_3_2_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2 = i_iowr_bl_s1_or_28_ihc12_out_o_stall & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3 = i_iowr_bl_s2_or_21_ihc13_out_o_stall & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or1 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or2 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2 | SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3 | SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN & SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 & SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 <= SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

        end
    end

    // redist5_i_or_inc9_i_i23_ihc10_q_2_0(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_or_inc9_i_i23_ihc10_q_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b1)
        begin
            redist5_i_or_inc9_i_i23_ihc10_q_2_0_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D2);
        end
    end

    // redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1(REG,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_D0);
        end
    end

    // i_iowr_bl_s1_or_28_ihc12(BLACKBOX,9)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_1_o_fifodata@20000000
    // out out_iowr_bl_s1_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s1_or_28_ihc0 thei_iowr_bl_s1_or_28_ihc12 (
        .in_c1_exe1(redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_q),
        .in_i_data(redist5_i_or_inc9_i_i23_ihc10_q_2_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_or_28_ihc12_backStall),
        .in_i_valid(SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_V2),
        .in_iowr_bl_s1_1_i_fifoready(in_iowr_bl_s1_1_i_fifoready),
        .out_iowr_bl_s1_1_o_fifodata(i_iowr_bl_s1_or_28_ihc12_out_iowr_bl_s1_1_o_fifodata),
        .out_iowr_bl_s1_1_o_fifovalid(i_iowr_bl_s1_or_28_ihc12_out_iowr_bl_s1_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_or_28_ihc12_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_or_28_ihc12_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_or_28_ihc12_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s1_or_28_ihc12(BITJOIN,97)
    assign bubble_join_i_iowr_bl_s1_or_28_ihc12_q = i_iowr_bl_s1_or_28_ihc12_out_o_ack;

    // bubble_select_i_iowr_bl_s1_or_28_ihc12(BITSELECT,98)
    assign bubble_select_i_iowr_bl_s1_or_28_ihc12_b = $unsigned(bubble_join_i_iowr_bl_s1_or_28_ihc12_q[0:0]);

    // SE_out_i_iowr_bl_s1_or_28_ihc12(STALLENABLE,132)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_or_28_ihc12_V0 = SE_out_i_iowr_bl_s1_or_28_ihc12_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_or_28_ihc12_backStall = SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s1_or_28_ihc12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_or_28_ihc12_wireValid = i_iowr_bl_s1_or_28_ihc12_out_o_valid;

    // SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0(STALLREG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid <= SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backStall & (SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid | SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_i_valid);

            if (SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s1_or_28_ihc12_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s1_or_28_ihc12_V0;
    // Stall signal propagation
    assign SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backStall = SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid | ~ (SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_V = SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid : SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_i_valid;

    assign SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_D0 = SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s1_or_28_ihc12_b;

    // SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0(STALLENABLE,173)
    // Valid signal propagation
    assign SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_V0 = SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_stall_out & SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backEN = ~ (SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_v_s_0 = SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backEN & SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backStall = ~ (SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_R_v_0 <= SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_R_v_0 & SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_R_v_0 <= SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc14(STALLENABLE,150)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_wireValid = i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_valid_out;

    // redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_q <= $unsigned(SR_SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_D0);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push4_ihc14(BLACKBOX,18)@11
    // in in_stall_in@20000000
    // out out_data_out@12
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@12
    MultiToken_i_llvm_fpga_push_i1_memdep_phi_push4_ihc0 thei_llvm_fpga_push_i1_memdep_phi_push4_ihc14 (
        .in_data_in(redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_feedback_stall_out_4),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_backStall),
        .in_valid_in(SE_redist9_i_iowr_bl_s1_or_28_ihc12_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(BLACKBOX,16)@7
    // in in_stall_in@20000000
    // out out_data_out@8
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@8
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc0 thei_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3 (
        .in_data_in(GND_q),
        .in_dir(redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc14_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,117)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,118)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,152)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_B1_merge_reg_aunroll_x(BLACKBOX,67)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    MultiToken_ihc_B1_merge_reg theihc_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_B1_merge_reg_aunroll_x(BITJOIN,128)
    assign bubble_join_ihc_B1_merge_reg_aunroll_x_q = ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_B1_merge_reg_aunroll_x(BITSELECT,129)
    assign bubble_select_ihc_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_B1_merge_reg_aunroll_x(STALLENABLE,159)
    // Valid signal propagation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall | ~ (SE_out_ihc_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_B1_merge_reg_aunroll_x_wireValid = ihc_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BLACKBOX,65)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    MultiToken_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1 thei_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x (
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
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(STALLENABLE,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0 = (~ (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;

    // SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0(STALLENABLE,169)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_V0 = SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_s_tv_0 = SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backStall & SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backEN = ~ (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_v_s_0 = SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backEN & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backStall = ~ (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_R_v_0 <= SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_R_v_0 & SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_R_v_0 <= SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_v_s_0;
            end

        end
    end

    // SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1(STALLENABLE,170)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_V0 = SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_V1 = SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_stall_out & SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_stall_out & SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_or0 = SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_0;
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backEN = ~ (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_1 | SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_v_s_0 = SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backEN & SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_V0;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backStall = ~ (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_0 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_0 <= SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_0 & SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_0 <= SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_1 <= SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_1 & SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_s_tv_1;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_R_v_1 <= SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4(STALLENABLE,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid = i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16(STALLENABLE,148)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_wireValid = i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_valid_out;

    // bubble_join_i_iowr_bl_s2_or_14_ihc15(BITJOIN,100)
    assign bubble_join_i_iowr_bl_s2_or_14_ihc15_q = i_iowr_bl_s2_or_14_ihc15_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_14_ihc15(BITSELECT,101)
    assign bubble_select_i_iowr_bl_s2_or_14_ihc15_b = $unsigned(bubble_join_i_iowr_bl_s2_or_14_ihc15_q[0:0]);

    // redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_or_14_ihc15_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16(BLACKBOX,17)@12
    // in in_stall_in@20000000
    // out out_data_out@13
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@13
    MultiToken_i_llvm_fpga_push_i1_memdep_phi29_push5_ihc0 thei_llvm_fpga_push_i1_memdep_phi29_push5_ihc16 (
        .in_data_in(redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_feedback_stall_out_5),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_backStall),
        .in_valid_in(SE_redist8_i_iowr_bl_s2_or_14_ihc15_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_feedback_valid_out_5),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITJOIN,121)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q = {i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITSELECT,122)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q[1:1]);

    // redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c);
        end
    end

    // redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_q <= $unsigned(redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4(BLACKBOX,15)@7
    // in in_stall_in@20000000
    // out out_data_out@8
    // out out_feedback_stall_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@8
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc0 thei_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4 (
        .in_data_in(GND_q),
        .in_dir(redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i1_memdep_phi29_push5_ihc16_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_2_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_feedback_stall_out_5),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4(BITJOIN,109)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_q = i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4(BITSELECT,110)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_q[0:0]);

    // i_iowr_bl_s2_unnamed_ihc3_ihc9(BLACKBOX,13)@8
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_0_o_fifodata@20000000
    // out out_iowr_bl_s2_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc3_ihc0 thei_iowr_bl_s2_unnamed_ihc3_ihc9 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_c),
        .in_i_data(c_i32_120_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_b),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_backStall),
        .in_i_valid(SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V0),
        .in_iowr_bl_s2_0_i_fifoready(in_iowr_bl_s2_0_i_fifoready),
        .out_iowr_bl_s2_0_o_fifodata(i_iowr_bl_s2_unnamed_ihc3_ihc9_out_iowr_bl_s2_0_o_fifodata),
        .out_iowr_bl_s2_0_o_fifovalid(i_iowr_bl_s2_unnamed_ihc3_ihc9_out_iowr_bl_s2_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9(STALLENABLE,140)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_backStall = SE_coalesced_delay_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_and0 = i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_valid;
    assign SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V4 & SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_and0;

    // SE_i_or_inc9_i_i23_ihc10(STALLENABLE,151)
    // Valid signal propagation
    assign SE_i_or_inc9_i_i23_ihc10_V0 = SE_i_or_inc9_i_i23_ihc10_R_v_0;
    // Stall signal propagation
    assign SE_i_or_inc9_i_i23_ihc10_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl_2_1_backStall & SE_i_or_inc9_i_i23_ihc10_R_v_0;
    // Backward Enable generation
    assign SE_i_or_inc9_i_i23_ihc10_backEN = ~ (SE_i_or_inc9_i_i23_ihc10_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_or_inc9_i_i23_ihc10_v_s_0 = SE_i_or_inc9_i_i23_ihc10_backEN & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V3;
    // Backward Stall generation
    assign SE_i_or_inc9_i_i23_ihc10_backStall = ~ (SE_i_or_inc9_i_i23_ihc10_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_inc9_i_i23_ihc10_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_or_inc9_i_i23_ihc10_backEN == 1'b0)
            begin
                SE_i_or_inc9_i_i23_ihc10_R_v_0 <= SE_i_or_inc9_i_i23_ihc10_R_v_0 & SE_i_or_inc9_i_i23_ihc10_s_tv_0;
            end
            else
            begin
                SE_i_or_inc9_i_i23_ihc10_R_v_0 <= SE_i_or_inc9_i_i23_ihc10_v_s_0;
            end

        end
    end

    // SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4(STALLENABLE,195)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V0 = SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall = i_iowr_bl_s2_unnamed_ihc3_ihc9_out_o_stall | ~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V1;
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V2 & SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_and0;

    // SE_stall_exit(STALLENABLE,153)
    // Valid signal propagation
    assign SE_stall_exit_V0 = SE_stall_exit_wireValid;
    // Backward Stall generation
    assign SE_stall_exit_backStall = in_stall_in | ~ (SE_stall_exit_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_exit_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0;
    assign SE_stall_exit_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_V0 & SE_stall_exit_and0;
    assign SE_stall_exit_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V0 & SE_stall_exit_and1;

    // i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x(BLACKBOX,66)@5
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c1_exit_0_tpl@8
    // out out_c1_exit_1_tpl@8
    // out out_c1_exit_2_tpl@8
    // out out_c1_exit_3_tpl@8
    // out out_c1_exit_4_tpl@8
    // out out_c1_exit_5_tpl@8
    MultiToken_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6 thei_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_3_tpl),
        .out_c1_exit_4_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_4_tpl),
        .out_c1_exit_5_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x(STALLENABLE,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed2 = (~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop5_ihc4_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed3 = (~ (SE_i_or_inc9_i_i23_ihc10_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed4 = (~ (SE_out_i_iowr_bl_s2_unnamed_ihc3_ihc9_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg3 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_toReg4 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or2 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or3 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed3 & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or2;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_consumed4 & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_or3);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V3 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V4 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_wireValid = i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(STALLENABLE,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_valid_out;

    // SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(STALLENABLE,201)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0 = SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall = i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_stall | ~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V1;
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_V1 & SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_and0;

    // SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8(STALLENABLE,134)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_wireValid = i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(BITJOIN,113)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_q = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(BITSELECT,114)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_q[0:0]);

    // c_i32_120(CONSTANT,3)
    assign c_i32_120_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x(BITJOIN,124)
    assign bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_q = {i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_5_tpl, i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_4_tpl, i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x(BITSELECT,125)
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_q[34:3]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_q[66:35]);

    // i_iowr_bl_s1_unnamed_ihc2_ihc8(BLACKBOX,10)@8
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_0_o_fifodata@20000000
    // out out_iowr_bl_s1_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s1_unnamed_ihc2_ihc0 thei_iowr_bl_s1_unnamed_ihc2_ihc8 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc6_aunroll_x_c),
        .in_i_data(c_i32_120_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_b),
        .in_i_stall(SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_backStall),
        .in_i_valid(SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0),
        .in_iowr_bl_s1_0_i_fifoready(in_iowr_bl_s1_0_i_fifoready),
        .out_iowr_bl_s1_0_o_fifodata(i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifodata),
        .out_iowr_bl_s1_0_o_fifovalid(i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_iowr_bl_s1_0_o_fifodata = i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifodata;
    assign out_iowr_bl_s1_0_o_fifovalid = i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifovalid;

    // pipeline_valid_out_sync(GPOUT,47)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,54)
    assign out_iowr_bl_s2_0_o_fifodata = i_iowr_bl_s2_unnamed_ihc3_ihc9_out_iowr_bl_s2_0_o_fifodata;
    assign out_iowr_bl_s2_0_o_fifovalid = i_iowr_bl_s2_unnamed_ihc3_ihc9_out_iowr_bl_s2_0_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,55)@8
    assign out_valid_out = SE_stall_exit_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,57)
    assign out_iowr_bl_s2_1_o_fifodata = i_iowr_bl_s2_unnamed_ihc4_ihc11_out_iowr_bl_s2_1_o_fifodata;
    assign out_iowr_bl_s2_1_o_fifovalid = i_iowr_bl_s2_unnamed_ihc4_ihc11_out_iowr_bl_s2_1_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,59)
    assign out_iowr_bl_s1_1_o_fifodata = i_iowr_bl_s1_or_28_ihc12_out_iowr_bl_s1_1_o_fifodata;
    assign out_iowr_bl_s1_1_o_fifovalid = i_iowr_bl_s1_or_28_ihc12_out_iowr_bl_s1_1_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,61)
    assign out_iowr_bl_s2_2_o_fifodata = i_iowr_bl_s2_or_21_ihc13_out_iowr_bl_s2_2_o_fifodata;
    assign out_iowr_bl_s2_2_o_fifovalid = i_iowr_bl_s2_or_21_ihc13_out_iowr_bl_s2_2_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,63)
    assign out_iowr_bl_s2_3_o_fifodata = i_iowr_bl_s2_or_14_ihc15_out_iowr_bl_s2_3_o_fifodata;
    assign out_iowr_bl_s2_3_o_fifovalid = i_iowr_bl_s2_or_14_ihc15_out_iowr_bl_s2_3_o_fifovalid;

    // dupName_5_ext_sig_sync_out_x(GPOUT,64)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;

endmodule
