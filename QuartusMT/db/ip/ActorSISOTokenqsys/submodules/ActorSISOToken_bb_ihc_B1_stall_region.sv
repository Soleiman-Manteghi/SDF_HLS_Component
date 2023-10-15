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
// Created for function/kernel ActorSISOToken
// SystemVerilog created on Sun Sep 17 05:59:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSISOToken_bb_ihc_B1_stall_region (
    input wire [0:0] in_iowr_bl_s1_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_0_o_fifovalid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s1_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_1_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_iord_bl_s0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out,
    output wire [0:0] out_iord_bl_s0_o_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoalmost_full,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_116_q;
    wire [32:0] i_add8_i_i_ihc9_a;
    wire [32:0] i_add8_i_i_ihc9_b;
    logic [32:0] i_add8_i_i_ihc9_o;
    wire [32:0] i_add8_i_i_ihc9_q;
    wire [0:0] i_iord_bl_s0_or_17_ihc7_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_or_17_ihc7_out_iord_bl_s0_o_fifoready;
    wire [31:0] i_iord_bl_s0_or_17_ihc7_out_o_data;
    wire [0:0] i_iord_bl_s0_or_17_ihc7_out_o_stall;
    wire [0:0] i_iord_bl_s0_or_17_ihc7_out_o_valid;
    wire [31:0] i_iowr_bl_s1_or_10_ihc11_out_iowr_bl_s1_1_o_fifodata;
    wire [0:0] i_iowr_bl_s1_or_10_ihc11_out_iowr_bl_s1_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_or_10_ihc11_out_o_ack;
    wire [0:0] i_iowr_bl_s1_or_10_ihc11_out_o_stall;
    wire [0:0] i_iowr_bl_s1_or_10_ihc11_out_o_valid;
    wire [31:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifodata;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_iowr_bl_s1_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_stall;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_valid_out;
    wire [0:0] i_or_add8_i_i_ihc10_s;
    reg [31:0] i_or_add8_i_i_ihc10_q;
    wire [31:0] bgTrunc_i_add8_i_i_ihc9_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    reg [31:0] redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_q;
    reg [0:0] redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_iord_bl_s0_or_17_ihc7_q;
    wire [31:0] bubble_select_i_iord_bl_s0_or_17_ihc7_b;
    wire [0:0] bubble_join_i_iowr_bl_s1_or_10_ihc11_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_or_10_ihc11_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c;
    wire [2:0] bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_d;
    wire [0:0] bubble_join_ihc_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_wireStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_StallValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_toReg0;
    reg [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_consumed0;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_toReg1;
    reg [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_consumed1;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_or0;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_V0;
    wire [0:0] SE_out_i_iord_bl_s0_or_17_ihc7_V1;
    wire [0:0] SE_out_i_iowr_bl_s1_or_10_ihc11_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_or_10_ihc11_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_or_10_ihc11_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_backStall;
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
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_exit_wireValid;
    wire [0:0] SE_stall_exit_and0;
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
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V2;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_sel_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_sel_for_coalesced_delay_0_and0;
    wire [0:0] SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] SE_sel_for_coalesced_delay_0_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    reg [0:0] SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_V0;
    reg [0:0] SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0;
    wire [0:0] SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_D0;


    // bubble_join_i_iowr_bl_s1_or_10_ihc11(BITJOIN,67)
    assign bubble_join_i_iowr_bl_s1_or_10_ihc11_q = i_iowr_bl_s1_or_10_ihc11_out_o_ack;

    // bubble_select_i_iowr_bl_s1_or_10_ihc11(BITSELECT,68)
    assign bubble_select_i_iowr_bl_s1_or_10_ihc11_b = $unsigned(bubble_join_i_iowr_bl_s1_or_10_ihc11_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc12(STALLENABLE,97)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_wireValid = i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,74)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,75)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,99)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_B1_merge_reg_aunroll_x(BLACKBOX,48)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    ActorSISOToken_ihc_B1_merge_reg theihc_B1_merge_reg_aunroll_x (
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

    // SE_out_ihc_B1_merge_reg_aunroll_x(STALLENABLE,107)
    // Valid signal propagation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall | ~ (SE_out_ihc_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_B1_merge_reg_aunroll_x_wireValid = ihc_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BLACKBOX,46)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@3
    // out out_c0_exit_1_tpl@3
    // out out_c0_exit_2_tpl@3
    ActorSISOToken_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1 thei_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x (
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

    // SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(STALLENABLE,103)
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
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0 = (~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1;
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

    // SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0(STALLENABLE,110)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_V0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_stall_out & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITJOIN,78)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q = {i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITSELECT,79)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q[1:1]);

    // redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(BLACKBOX,13)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    ActorSISOToken_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc0 thei_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3 (
        .in_data_in(GND_q),
        .in_dir(redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall),
        .in_valid_in(SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_1_0_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_q <= $unsigned(SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_D0);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push4_ihc12(BLACKBOX,14)@7
    // in in_stall_in@20000000
    // out out_data_out@8
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@8
    ActorSISOToken_i_llvm_fpga_push_i1_memdep_phi_push4_ihc0 thei_llvm_fpga_push_i1_memdep_phi_push4_ihc12 (
        .in_data_in(redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_feedback_stall_out_4),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_backStall),
        .in_valid_in(SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0(STALLENABLE,112)
    // Valid signal propagation
    assign SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_V0 = SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push4_ihc12_out_stall_out & SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backEN = ~ (SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_v_s_0 = SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backEN & SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backStall = ~ (SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_R_v_0 <= SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_R_v_0 & SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_R_v_0 <= SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0(STALLREG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid <= SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backStall & (SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid | SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_i_valid);

            if (SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s1_or_10_ihc11_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s1_or_10_ihc11_V0;
    // Stall signal propagation
    assign SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backStall = SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid | ~ (SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_V = SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid : SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_i_valid;

    assign SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_D0 = SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s1_or_10_ihc11_b;

    // SE_out_i_iowr_bl_s1_or_10_ihc11(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_or_10_ihc11_V0 = SE_out_i_iowr_bl_s1_or_10_ihc11_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_or_10_ihc11_backStall = SR_SE_redist4_i_iowr_bl_s1_or_10_ihc11_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s1_or_10_ihc11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_or_10_ihc11_wireValid = i_iowr_bl_s1_or_10_ihc11_out_o_valid;

    // bubble_join_i_iord_bl_s0_or_17_ihc7(BITJOIN,63)
    assign bubble_join_i_iord_bl_s0_or_17_ihc7_q = i_iord_bl_s0_or_17_ihc7_out_o_data;

    // bubble_select_i_iord_bl_s0_or_17_ihc7(BITSELECT,64)
    assign bubble_select_i_iord_bl_s0_or_17_ihc7_b = $unsigned(bubble_join_i_iord_bl_s0_or_17_ihc7_q[31:0]);

    // i_add8_i_i_ihc9(ADD,9)@5
    assign i_add8_i_i_ihc9_a = {1'b0, bubble_select_i_iord_bl_s0_or_17_ihc7_b};
    assign i_add8_i_i_ihc9_b = {1'b0, c_i32_116_q};
    assign i_add8_i_i_ihc9_o = $unsigned(i_add8_i_i_ihc9_a) + $unsigned(i_add8_i_i_ihc9_b);
    assign i_add8_i_i_ihc9_q = i_add8_i_i_ihc9_o[32:0];

    // bgTrunc_i_add8_i_i_ihc9_sel_x(BITSELECT,39)@5
    assign bgTrunc_i_add8_i_i_ihc9_sel_x_b = i_add8_i_i_ihc9_q[31:0];

    // redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add8_i_i_ihc9_sel_x_b);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_or_add8_i_i_ihc10(MUX,15)@6
    assign i_or_add8_i_i_ihc10_s = sel_for_coalesced_delay_0_c;
    always @(i_or_add8_i_i_ihc10_s or redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_q or c_i32_116_q)
    begin
        unique case (i_or_add8_i_i_ihc10_s)
            1'b0 : i_or_add8_i_i_ihc10_q = redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_q;
            1'b1 : i_or_add8_i_i_ihc10_q = c_i32_116_q;
            default : i_or_add8_i_i_ihc10_q = 32'b0;
        endcase
    end

    // join_for_coalesced_delay_0(BITJOIN,56)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_d, bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_b};

    // coalesced_delay_0_0(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,57)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_iowr_bl_s1_or_10_ihc11(BLACKBOX,11)@6
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_1_o_fifodata@20000000
    // out out_iowr_bl_s1_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSISOToken_i_iowr_bl_s1_or_10_ihc0 thei_iowr_bl_s1_or_10_ihc11 (
        .in_c1_exe1(sel_for_coalesced_delay_0_b),
        .in_i_data(i_or_add8_i_i_ihc10_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_or_10_ihc11_backStall),
        .in_i_valid(SE_sel_for_coalesced_delay_0_V0),
        .in_iowr_bl_s1_1_i_fifoready(in_iowr_bl_s1_1_i_fifoready),
        .out_iowr_bl_s1_1_o_fifodata(i_iowr_bl_s1_or_10_ihc11_out_iowr_bl_s1_1_o_fifodata),
        .out_iowr_bl_s1_1_o_fifovalid(i_iowr_bl_s1_or_10_ihc11_out_iowr_bl_s1_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_or_10_ihc11_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_or_10_ihc11_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_or_10_ihc11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_exit(STALLENABLE,100)
    // Valid signal propagation
    assign SE_stall_exit_V0 = SE_stall_exit_wireValid;
    // Backward Stall generation
    assign SE_stall_exit_backStall = in_stall_in | ~ (SE_stall_exit_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_exit_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0;
    assign SE_stall_exit_wireValid = SE_out_i_iord_bl_s0_or_17_ihc7_V0 & SE_stall_exit_and0;

    // SE_out_i_iord_bl_s0_or_17_ihc7(STALLENABLE,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s0_or_17_ihc7_fromReg0 <= '0;
            SE_out_i_iord_bl_s0_or_17_ihc7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s0_or_17_ihc7_fromReg0 <= SE_out_i_iord_bl_s0_or_17_ihc7_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s0_or_17_ihc7_fromReg1 <= SE_out_i_iord_bl_s0_or_17_ihc7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s0_or_17_ihc7_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_iord_bl_s0_or_17_ihc7_wireValid) | SE_out_i_iord_bl_s0_or_17_ihc7_fromReg0;
    assign SE_out_i_iord_bl_s0_or_17_ihc7_consumed1 = (~ (SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s0_or_17_ihc7_wireValid) | SE_out_i_iord_bl_s0_or_17_ihc7_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s0_or_17_ihc7_StallValid = SE_out_i_iord_bl_s0_or_17_ihc7_backStall & SE_out_i_iord_bl_s0_or_17_ihc7_wireValid;
    assign SE_out_i_iord_bl_s0_or_17_ihc7_toReg0 = SE_out_i_iord_bl_s0_or_17_ihc7_StallValid & SE_out_i_iord_bl_s0_or_17_ihc7_consumed0;
    assign SE_out_i_iord_bl_s0_or_17_ihc7_toReg1 = SE_out_i_iord_bl_s0_or_17_ihc7_StallValid & SE_out_i_iord_bl_s0_or_17_ihc7_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_or_17_ihc7_or0 = SE_out_i_iord_bl_s0_or_17_ihc7_consumed0;
    assign SE_out_i_iord_bl_s0_or_17_ihc7_wireStall = ~ (SE_out_i_iord_bl_s0_or_17_ihc7_consumed1 & SE_out_i_iord_bl_s0_or_17_ihc7_or0);
    assign SE_out_i_iord_bl_s0_or_17_ihc7_backStall = SE_out_i_iord_bl_s0_or_17_ihc7_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_or_17_ihc7_V0 = SE_out_i_iord_bl_s0_or_17_ihc7_wireValid & ~ (SE_out_i_iord_bl_s0_or_17_ihc7_fromReg0);
    assign SE_out_i_iord_bl_s0_or_17_ihc7_V1 = SE_out_i_iord_bl_s0_or_17_ihc7_wireValid & ~ (SE_out_i_iord_bl_s0_or_17_ihc7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_or_17_ihc7_wireValid = i_iord_bl_s0_or_17_ihc7_out_o_valid;

    // SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0(STALLENABLE,111)
    // Valid signal propagation
    assign SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_V0 = SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backEN = ~ (SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_v_s_0 = SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backEN & SE_out_i_iord_bl_s0_or_17_ihc7_V1;
    // Backward Stall generation
    assign SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backStall = ~ (SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_R_v_0 & SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_sel_for_coalesced_delay_0(STALLENABLE,109)
    // Valid signal propagation
    assign SE_sel_for_coalesced_delay_0_V0 = SE_sel_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_sel_for_coalesced_delay_0_backStall = i_iowr_bl_s1_or_10_ihc11_out_o_stall | ~ (SE_sel_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_sel_for_coalesced_delay_0_and0 = SE_coalesced_delay_0_0_V0;
    assign SE_sel_for_coalesced_delay_0_wireValid = SE_redist3_bgTrunc_i_add8_i_i_ihc9_sel_x_b_1_0_V0 & SE_sel_for_coalesced_delay_0_and0;

    // SE_coalesced_delay_0_0(STALLENABLE,113)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V2;
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

    // i_iord_bl_s0_or_17_ihc7(BLACKBOX,10)@5
    // in in_i_stall@20000000
    // out out_iord_bl_s0_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_o_fifoready@20000000
    // out out_o_stall@20000000
    ActorSISOToken_i_iord_bl_s0_or_17_ihc0 thei_iord_bl_s0_or_17_ihc7 (
        .in_c1_exe1(bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_b),
        .in_i_stall(SE_out_i_iord_bl_s0_or_17_ihc7_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V1),
        .in_iord_bl_s0_i_fifodata(in_iord_bl_s0_i_fifodata),
        .in_iord_bl_s0_i_fifovalid(in_iord_bl_s0_i_fifovalid),
        .out_iord_bl_s0_o_fifoalmost_full(i_iord_bl_s0_or_17_ihc7_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(i_iord_bl_s0_or_17_ihc7_out_iord_bl_s0_o_fifoready),
        .out_o_data(i_iord_bl_s0_or_17_ihc7_out_o_data),
        .out_o_stall(i_iord_bl_s0_or_17_ihc7_out_o_stall),
        .out_o_valid(i_iord_bl_s0_or_17_ihc7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x(BLACKBOX,47)@3
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c1_exit_0_tpl@5
    // out out_c1_exit_1_tpl@5
    // out out_c1_exit_2_tpl@5
    // out out_c1_exit_3_tpl@5
    ActorSISOToken_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5 thei_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x(STALLENABLE,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed0 = (~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed1 = (~ (i_iord_bl_s0_or_17_ihc7_out_o_stall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_wireValid = i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(STALLENABLE,95)
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

    // SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(STALLENABLE,127)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V0 = SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_backStall = i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_stall | ~ (SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_V1;
    assign SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_V0 & SE_bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_and0;

    // SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8(STALLENABLE,93)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_unnamed_ihc2_ihc8_wireValid = i_iowr_bl_s1_unnamed_ihc2_ihc8_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_q = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc3_q[0:0]);

    // c_i32_116(CONSTANT,4)
    assign c_i32_116_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x(BITJOIN,81)
    assign bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_q = {i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x(BITSELECT,82)
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_q[2:2]);

    // i_iowr_bl_s1_unnamed_ihc2_ihc8(BLACKBOX,12)@5
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_0_o_fifodata@20000000
    // out out_iowr_bl_s1_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSISOToken_i_iowr_bl_s1_unnamed_ihc2_ihc0 thei_iowr_bl_s1_unnamed_ihc2_ihc8 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5_aunroll_x_c),
        .in_i_data(c_i32_116_q),
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

    // pipeline_valid_out_sync(GPOUT,33)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,41)
    assign out_iowr_bl_s1_1_o_fifodata = i_iowr_bl_s1_or_10_ihc11_out_iowr_bl_s1_1_o_fifodata;
    assign out_iowr_bl_s1_1_o_fifovalid = i_iowr_bl_s1_or_10_ihc11_out_iowr_bl_s1_1_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,42)@5
    assign out_valid_out = SE_stall_exit_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,44)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;

    // dupName_2_ext_sig_sync_out_x(GPOUT,45)
    assign out_iord_bl_s0_o_fifoready = i_iord_bl_s0_or_17_ihc7_out_iord_bl_s0_o_fifoready;
    assign out_iord_bl_s0_o_fifoalmost_full = i_iord_bl_s0_or_17_ihc7_out_iord_bl_s0_o_fifoalmost_full;

endmodule
