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
// SystemVerilog created on Sat Sep 16 18:56:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_bb_ihc_B1_stall_region (
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
    input wire [0:0] in_iowr_bl_s3_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s3_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s3_0_o_fifovalid,
    input wire [0:0] in_iowr_bl_s3_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s3_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s3_1_o_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_329_q;
    wire [31:0] c_i32_427_q;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc5_out_iord_bl_s2_0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc5_out_iord_bl_s2_0_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc7_out_iord_bl_s2_1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc7_out_iord_bl_s2_1_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc9_out_iord_bl_s2_2_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc9_out_iord_bl_s2_2_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc12_out_iord_bl_s2_3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc12_out_iord_bl_s2_3_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_valid;
    wire [31:0] i_iowr_bl_s3_unnamed_ihc6_ihc22_out_iowr_bl_s3_0_o_fifodata;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc6_ihc22_out_iowr_bl_s3_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_ack;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_stall;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_valid;
    wire [31:0] i_iowr_bl_s3_unnamed_ihc7_ihc23_out_iowr_bl_s3_1_o_fifodata;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc7_ihc23_out_iowr_bl_s3_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_stall;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_valid_out;
    wire [32:0] i_reduction_ihc_0_ihc11_a;
    wire [32:0] i_reduction_ihc_0_ihc11_b;
    logic [32:0] i_reduction_ihc_0_ihc11_o;
    wire [32:0] i_reduction_ihc_0_ihc11_q;
    wire [32:0] i_reduction_ihc_1_ihc14_a;
    wire [32:0] i_reduction_ihc_1_ihc14_b;
    logic [32:0] i_reduction_ihc_1_ihc14_o;
    wire [32:0] i_reduction_ihc_1_ihc14_q;
    wire [32:0] i_reduction_ihc_2_ihc16_a;
    wire [32:0] i_reduction_ihc_2_ihc16_b;
    logic [32:0] i_reduction_ihc_2_ihc16_o;
    wire [32:0] i_reduction_ihc_2_ihc16_q;
    wire [32:0] i_reduction_ihc_3_ihc17_a;
    wire [32:0] i_reduction_ihc_3_ihc17_b;
    logic [32:0] i_reduction_ihc_3_ihc17_o;
    wire [32:0] i_reduction_ihc_3_ihc17_q;
    wire [32:0] i_sdiv_add_ihc20_a;
    wire [32:0] i_sdiv_add_ihc20_b;
    logic [32:0] i_sdiv_add_ihc20_o;
    wire [32:0] i_sdiv_add_ihc20_q;
    wire [31:0] i_sdiv_and_ihc19_q;
    wire [29:0] i_sdiv_and_ihc19_vt_const_31_q;
    wire [31:0] i_sdiv_and_ihc19_vt_join_q;
    wire [1:0] i_sdiv_and_ihc19_vt_select_1_b;
    wire [31:0] bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b;
    wire [31:0] bgTrunc_i_sdiv_add_ihc20_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_toi1_intcast1_ihc8_sel_x_b;
    wire [0:0] i_toi1_intcast2_ihc10_sel_x_b;
    wire [0:0] i_toi1_intcast3_ihc13_sel_x_b;
    wire [0:0] i_toi1_intcast_ihc6_sel_x_b;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid119_i_sdiv_mask_ihc0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid120_i_sdiv_mask_ihc0_shift_x_q;
    wire [0:0] rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_s;
    reg [31:0] rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_q;
    wire [1:0] seMsb_to2_uid123_in;
    wire [1:0] seMsb_to2_uid123_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid124_i_sdiv_mask_ihc0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid125_i_sdiv_mask_ihc0_shift_x_q;
    wire [0:0] rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_s;
    reg [31:0] rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_q;
    wire [3:0] seMsb_to4_uid128_in;
    wire [3:0] seMsb_to4_uid128_b;
    wire [27:0] rightShiftStage2Idx1Rng4_uid129_i_sdiv_mask_ihc0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid130_i_sdiv_mask_ihc0_shift_x_q;
    wire [0:0] rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_s;
    reg [31:0] rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_q;
    wire [7:0] seMsb_to8_uid133_in;
    wire [7:0] seMsb_to8_uid133_b;
    wire [23:0] rightShiftStage3Idx1Rng8_uid134_i_sdiv_mask_ihc0_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid135_i_sdiv_mask_ihc0_shift_x_q;
    wire [0:0] rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_s;
    reg [31:0] rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_q;
    wire [15:0] seMsb_to16_uid138_in;
    wire [15:0] seMsb_to16_uid138_b;
    wire [15:0] rightShiftStage4Idx1Rng16_uid139_i_sdiv_mask_ihc0_shift_x_b;
    wire [31:0] rightShiftStage4Idx1_uid140_i_sdiv_mask_ihc0_shift_x_q;
    wire [0:0] rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_s;
    reg [31:0] rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_q;
    wire [0:0] xMSB_uid144_i_sdiv_sh_ihc0_shift_x_b;
    wire [1:0] seMsb_to2_uid146_in;
    wire [1:0] seMsb_to2_uid146_b;
    wire [29:0] rightShiftStage0Idx1Rng2_uid147_i_sdiv_sh_ihc0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid148_i_sdiv_sh_ihc0_shift_x_q;
    wire [0:0] rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_s;
    reg [31:0] rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_q;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_q;
    reg [0:0] redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_q;
    reg [0:0] redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_q;
    reg [31:0] redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q;
    reg [31:0] redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_q;
    reg [31:0] redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_q;
    reg [31:0] redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_q;
    reg [31:0] redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_q;
    reg [0:0] redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_q;
    reg [31:0] redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_q;
    reg [31:0] redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_q;
    reg [31:0] redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_q;
    reg [31:0] redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_q;
    reg [32:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc5_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc5_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc7_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc7_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc9_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc9_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc12_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc12_b;
    wire [0:0] bubble_join_i_iowr_bl_s3_unnamed_ihc6_ihc22_q;
    wire [0:0] bubble_select_i_iowr_bl_s3_unnamed_ihc6_ihc22_b;
    wire [0:0] bubble_join_i_iowr_bl_s3_unnamed_ihc7_ihc23_q;
    wire [0:0] bubble_select_i_iowr_bl_s3_unnamed_ihc7_ihc23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b;
    wire [0:0] bubble_join_ihc_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg2;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg2;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed2;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_or1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V2;
    wire [0:0] SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_and0;
    wire [0:0] SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall;
    wire [0:0] SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_V0;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_and0;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_V0;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_backStall;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_backStall;
    wire [0:0] SE_i_reduction_ihc_0_ihc11_wireValid;
    wire [0:0] SE_i_reduction_ihc_0_ihc11_and0;
    wire [0:0] SE_i_reduction_ihc_0_ihc11_backStall;
    wire [0:0] SE_i_reduction_ihc_0_ihc11_V0;
    wire [0:0] SE_i_reduction_ihc_1_ihc14_wireValid;
    wire [0:0] SE_i_reduction_ihc_1_ihc14_and0;
    wire [0:0] SE_i_reduction_ihc_1_ihc14_backStall;
    wire [0:0] SE_i_reduction_ihc_1_ihc14_V0;
    wire [0:0] SE_i_reduction_ihc_2_ihc16_wireValid;
    wire [0:0] SE_i_reduction_ihc_2_ihc16_and0;
    wire [0:0] SE_i_reduction_ihc_2_ihc16_backStall;
    wire [0:0] SE_i_reduction_ihc_2_ihc16_V0;
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
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_V0;
    reg [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_or0;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_V0;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_V1;
    reg [0:0] SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_V0;
    reg [0:0] SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_V0;
    reg [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_R_v_0;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_v_s_0;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_s_tv_0;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backEN;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backStall;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_V0;
    reg [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_R_v_0;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_v_s_0;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_s_tv_0;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backEN;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backStall;
    wire [0:0] SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_V0;
    reg [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_R_v_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_V0;
    reg [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_V0;
    reg [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_R_v_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_V0;
    reg [0:0] SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_V0;
    reg [0:0] SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_R_v_0;
    wire [0:0] SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_v_s_0;
    wire [0:0] SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_s_tv_0;
    wire [0:0] SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backEN;
    wire [0:0] SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backStall;
    wire [0:0] SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_V0;
    reg [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_R_v_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_v_s_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_s_tv_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backEN;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backStall;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_V0;
    reg [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_R_v_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_v_s_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_s_tv_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backEN;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backStall;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_V0;
    reg [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_R_v_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_v_s_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_s_tv_0;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backEN;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backStall;
    wire [0:0] SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_i_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_data0;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backStall;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_V;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_D0;
    wire [0:0] SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_i_valid;
    reg [0:0] SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid;
    reg [31:0] SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_data0;
    wire [0:0] SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backStall;
    wire [0:0] SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_V;
    wire [31:0] SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_D0;
    wire [0:0] SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_i_valid;
    reg [0:0] SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid;
    reg [31:0] SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_data0;
    wire [0:0] SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backStall;
    wire [0:0] SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_V;
    wire [31:0] SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_D0;
    wire [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_D0;
    wire [0:0] SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_i_valid;
    reg [0:0] SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid;
    reg [0:0] SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_data0;
    wire [0:0] SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backStall;
    wire [0:0] SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_V;
    wire [0:0] SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [32:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [32:0] SR_SE_coalesced_delay_0_0_D0;


    // redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0(REG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b);
        end
    end

    // redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1(REG,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_q <= $unsigned(redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4(BITJOIN,205)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_q = i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4(BITSELECT,206)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_q[0:0]);

    // redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0(REG,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_b);
        end
    end

    // redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_q <= $unsigned(redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_q);
        end
    end

    // bubble_join_i_iowr_bl_s3_unnamed_ihc6_ihc22(BITJOIN,199)
    assign bubble_join_i_iowr_bl_s3_unnamed_ihc6_ihc22_q = i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_ack;

    // bubble_select_i_iowr_bl_s3_unnamed_ihc6_ihc22(BITSELECT,200)
    assign bubble_select_i_iowr_bl_s3_unnamed_ihc6_ihc22_b = $unsigned(bubble_join_i_iowr_bl_s3_unnamed_ihc6_ihc22_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,164)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iowr_bl_s3_unnamed_ihc6_ihc22_b, rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_q};

    // SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0(STALLENABLE,305)
    // Valid signal propagation
    assign SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_V0 = SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_stall_out & SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backEN = ~ (SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_v_s_0 = SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_V0;
    // Backward Stall generation
    assign SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backStall = ~ (SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_R_v_0 <= SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_R_v_0 & SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_R_v_0 <= SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23(STALLENABLE,233)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_V0 = SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_backStall = SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_wireValid = i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_valid;

    // coalesced_delay_0_0(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,165)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);

    // i_iowr_bl_s3_unnamed_ihc7_ihc23(BLACKBOX,21)@15
    // in in_i_stall@20000000
    // out out_iowr_bl_s3_1_o_fifodata@20000000
    // out out_iowr_bl_s3_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s3_unnamed_ihc7_ihc0 thei_iowr_bl_s3_unnamed_ihc7_ihc23 (
        .in_i_data(sel_for_coalesced_delay_0_b),
        .in_i_dependence(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_iowr_bl_s3_unnamed_ihc7_ihc23_backStall),
        .in_i_valid(SE_coalesced_delay_0_0_V0),
        .in_iowr_bl_s3_1_i_fifoready(in_iowr_bl_s3_1_i_fifoready),
        .out_iowr_bl_s3_1_o_fifodata(i_iowr_bl_s3_unnamed_ihc7_ihc23_out_iowr_bl_s3_1_o_fifodata),
        .out_iowr_bl_s3_1_o_fifovalid(i_iowr_bl_s3_unnamed_ihc7_ihc23_out_iowr_bl_s3_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack),
        .out_o_stall(i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_stall),
        .out_o_valid(i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,310)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_stall & SE_coalesced_delay_0_0_R_v_0;
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

    // SR_SE_coalesced_delay_0_0(STALLREG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22(STALLENABLE,231)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_V0 = SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall = SR_SE_coalesced_delay_0_0_backStall | ~ (SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_and0 = i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_valid;
    assign SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid = SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_V1 & SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_and0;

    // redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2(REG,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_q <= $unsigned(SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_D0);
        end
    end

    // xMSB_uid144_i_sdiv_sh_ihc0_shift_x(BITSELECT,143)@14
    assign xMSB_uid144_i_sdiv_sh_ihc0_shift_x_b = $unsigned(bgTrunc_i_sdiv_add_ihc20_sel_x_b[31:31]);

    // seMsb_to2_uid146(BITSELECT,145)@14
    assign seMsb_to2_uid146_in = $unsigned({{1{xMSB_uid144_i_sdiv_sh_ihc0_shift_x_b[0]}}, xMSB_uid144_i_sdiv_sh_ihc0_shift_x_b});
    assign seMsb_to2_uid146_b = $unsigned(seMsb_to2_uid146_in[1:0]);

    // rightShiftStage0Idx1Rng2_uid147_i_sdiv_sh_ihc0_shift_x(BITSELECT,146)@14
    assign rightShiftStage0Idx1Rng2_uid147_i_sdiv_sh_ihc0_shift_x_b = $unsigned(bgTrunc_i_sdiv_add_ihc20_sel_x_b[31:2]);

    // rightShiftStage0Idx1_uid148_i_sdiv_sh_ihc0_shift_x(BITJOIN,147)@14
    assign rightShiftStage0Idx1_uid148_i_sdiv_sh_ihc0_shift_x_q = {seMsb_to2_uid146_b, rightShiftStage0Idx1Rng2_uid147_i_sdiv_sh_ihc0_shift_x_b};

    // SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0(STALLENABLE,298)
    // Valid signal propagation
    assign SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_V0 = SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_s_tv_0 = SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backStall & SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backEN = ~ (SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_v_s_0 = SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backEN & SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backStall = ~ (SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_R_v_0 <= SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_R_v_0 & SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_R_v_0 <= SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0(STALLENABLE,292)
    // Valid signal propagation
    assign SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_V0 = SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_stall_out & SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backEN = ~ (SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_v_s_0 = SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V2;
    // Backward Stall generation
    assign SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backStall = ~ (SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_R_v_0 <= SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_R_v_0 & SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_R_v_0 <= SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7(STALLENABLE,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed0 = (~ (SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed1 = (~ (i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_stall) & SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_backStall & SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_or0 = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_or0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_backStall = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_V0 = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_V1 = SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_wireValid = i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc5(BITJOIN,186)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc5_q = i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc5(BITSELECT,187)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc5_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc2_ihc5_q[31:0]);

    // i_toi1_intcast_ihc6_sel_x(BITSELECT,103)@8
    assign i_toi1_intcast_ihc6_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc5_b[0:0];

    // i_iord_bl_s2_unnamed_ihc3_ihc7(BLACKBOX,17)@8
    // in in_i_stall@20000000
    // out out_iord_bl_s2_1_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_1_o_fifoready@20000000
    // out out_o_data@9
    // out out_o_stall@20000000
    // out out_o_valid@9
    MultiToken_i_iord_bl_s2_unnamed_ihc3_ihc0 thei_iord_bl_s2_unnamed_ihc3_ihc7 (
        .in_i_dependence(i_toi1_intcast_ihc6_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_V1),
        .in_iord_bl_s2_1_i_fifodata(in_iord_bl_s2_1_i_fifodata),
        .in_iord_bl_s2_1_i_fifovalid(in_iord_bl_s2_1_i_fifovalid),
        .out_iord_bl_s2_1_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc3_ihc7_out_iord_bl_s2_1_o_fifoalmost_full),
        .out_iord_bl_s2_1_o_fifoready(i_iord_bl_s2_unnamed_ihc3_ihc7_out_iord_bl_s2_1_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc7(BITJOIN,189)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc7_q = i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc7(BITSELECT,190)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc7_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc3_ihc7_q[31:0]);

    // redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0(REG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backEN == 1'b1)
        begin
            redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_q <= $unsigned(bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc7_b);
        end
    end

    // bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc9(BITJOIN,192)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc9_q = i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc9(BITSELECT,193)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc9_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc4_ihc9_q[31:0]);

    // i_reduction_ihc_0_ihc11(ADD,26)@10
    assign i_reduction_ihc_0_ihc11_a = {1'b0, bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc9_b};
    assign i_reduction_ihc_0_ihc11_b = {1'b0, redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_q};
    assign i_reduction_ihc_0_ihc11_o = $unsigned(i_reduction_ihc_0_ihc11_a) + $unsigned(i_reduction_ihc_0_ihc11_b);
    assign i_reduction_ihc_0_ihc11_q = i_reduction_ihc_0_ihc11_o[32:0];

    // bgTrunc_i_reduction_ihc_0_ihc11_sel_x(BITSELECT,70)@10
    assign bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b = i_reduction_ihc_0_ihc11_q[31:0];

    // redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0(REG,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backEN == 1'b1)
        begin
            redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_q <= $unsigned(bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b);
        end
    end

    // SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1(STALLENABLE,301)
    // Valid signal propagation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_V0 = SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_s_tv_0 = SE_i_reduction_ihc_2_ihc16_backStall & SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backEN = ~ (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_v_s_0 = SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backEN & SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_V;
    // Backward Stall generation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backStall = ~ (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backEN == 1'b0)
            begin
                SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_R_v_0 <= SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_R_v_0 & SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_s_tv_0;
            end
            else
            begin
                SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_R_v_0 <= SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1(STALLREG,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid <= 1'b0;
            SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid <= SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backStall & (SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid | SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_i_valid);

            if (SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_data0 <= $unsigned(redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_i_valid = SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backStall = SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid | ~ (SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_i_valid);

    // Valid
    assign SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_V = SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid == 1'b1 ? SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid : SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_i_valid;

    assign SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_D0 = SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_valid == 1'b1 ? SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_r_data0 : redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_q;

    // SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0(STALLENABLE,300)
    // Valid signal propagation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_V0 = SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_s_tv_0 = SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backStall & SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backEN = ~ (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_v_s_0 = SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backEN & SE_i_reduction_ihc_0_ihc11_V0;
    // Backward Stall generation
    assign SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backStall = ~ (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backEN == 1'b0)
            begin
                SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_R_v_0 <= SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_R_v_0 & SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_s_tv_0;
            end
            else
            begin
                SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_R_v_0 <= SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_v_s_0;
            end

        end
    end

    // SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0(STALLENABLE,306)
    // Valid signal propagation
    assign SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_V0 = SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_s_tv_0 = SE_i_reduction_ihc_0_ihc11_backStall & SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backEN = ~ (SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_v_s_0 = SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_V0;
    // Backward Stall generation
    assign SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backStall = ~ (SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_backEN == 1'b0)
            begin
                SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_R_v_0 <= SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_R_v_0 & SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_R_v_0 <= SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_v_s_0;
            end

        end
    end

    // SE_i_reduction_ihc_0_ihc11(STALLENABLE,242)
    // Valid signal propagation
    assign SE_i_reduction_ihc_0_ihc11_V0 = SE_i_reduction_ihc_0_ihc11_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_ihc_0_ihc11_backStall = SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_0_backStall | ~ (SE_i_reduction_ihc_0_ihc11_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_ihc_0_ihc11_and0 = SE_redist10_i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_data_1_0_V0;
    assign SE_i_reduction_ihc_0_ihc11_wireValid = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_V0 & SE_i_reduction_ihc_0_ihc11_and0;

    // i_toi1_intcast1_ihc8_sel_x(BITSELECT,100)@9
    assign i_toi1_intcast1_ihc8_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc3_ihc7_b[0:0];

    // i_iord_bl_s2_unnamed_ihc4_ihc9(BLACKBOX,18)@9
    // in in_i_stall@20000000
    // out out_iord_bl_s2_2_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_2_o_fifoready@20000000
    // out out_o_data@10
    // out out_o_stall@20000000
    // out out_o_valid@10
    MultiToken_i_iord_bl_s2_unnamed_ihc4_ihc0 thei_iord_bl_s2_unnamed_ihc4_ihc9 (
        .in_i_dependence(i_toi1_intcast1_ihc8_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc3_ihc7_V1),
        .in_iord_bl_s2_2_i_fifodata(in_iord_bl_s2_2_i_fifodata),
        .in_iord_bl_s2_2_i_fifovalid(in_iord_bl_s2_2_i_fifovalid),
        .out_iord_bl_s2_2_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc4_ihc9_out_iord_bl_s2_2_o_fifoalmost_full),
        .out_iord_bl_s2_2_o_fifoready(i_iord_bl_s2_unnamed_ihc4_ihc9_out_iord_bl_s2_2_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9(STALLENABLE,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed0 = (~ (SE_i_reduction_ihc_0_ihc11_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed1 = (~ (i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_stall) & SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_backStall & SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_or0 = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_or0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_backStall = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_V0 = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_V1 = SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_wireValid = i_iord_bl_s2_unnamed_ihc4_ihc9_out_o_valid;

    // i_toi1_intcast2_ihc10_sel_x(BITSELECT,101)@10
    assign i_toi1_intcast2_ihc10_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc4_ihc9_b[0:0];

    // i_iord_bl_s2_unnamed_ihc5_ihc12(BLACKBOX,19)@10
    // in in_i_stall@20000000
    // out out_iord_bl_s2_3_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_3_o_fifoready@20000000
    // out out_o_data@11
    // out out_o_stall@20000000
    // out out_o_valid@11
    MultiToken_i_iord_bl_s2_unnamed_ihc5_ihc0 thei_iord_bl_s2_unnamed_ihc5_ihc12 (
        .in_i_dependence(i_toi1_intcast2_ihc10_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc4_ihc9_V1),
        .in_iord_bl_s2_3_i_fifodata(in_iord_bl_s2_3_i_fifodata),
        .in_iord_bl_s2_3_i_fifovalid(in_iord_bl_s2_3_i_fifovalid),
        .out_iord_bl_s2_3_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc5_ihc12_out_iord_bl_s2_3_o_fifoalmost_full),
        .out_iord_bl_s2_3_o_fifoready(i_iord_bl_s2_unnamed_ihc5_ihc12_out_iord_bl_s2_3_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12(STALLENABLE,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg1 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg1;
            // Successor 2
            SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg2 <= SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed1 = (~ (SE_i_reduction_ihc_1_ihc14_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg1;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed2 = (~ (SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_backStall & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed1;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_toReg2 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_or0 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_or1 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_or0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_consumed2 & SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_or1);
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_backStall = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V0 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V1 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg1);
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V2 = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_wireValid = i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_valid;

    // SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0(STALLENABLE,307)
    // Valid signal propagation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_V0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_s_tv_0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backStall & SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backEN = ~ (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_v_s_0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_V0;
    // Backward Stall generation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backStall = ~ (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backEN == 1'b0)
            begin
                SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_R_v_0 <= SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_R_v_0 & SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_R_v_0 <= SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_v_s_0;
            end

        end
    end

    // redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0(REG,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backEN == 1'b1)
        begin
            redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_q <= $unsigned(bubble_select_i_iord_bl_s2_unnamed_ihc2_ihc5_b);
        end
    end

    // redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1(REG,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backEN == 1'b1)
        begin
            redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_q <= $unsigned(redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_q);
        end
    end

    // SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1(STALLENABLE,308)
    // Valid signal propagation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_V0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_s_tv_0 = SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backStall & SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backEN = ~ (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_v_s_0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backEN & SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_V0;
    // Backward Stall generation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backStall = ~ (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_backEN == 1'b0)
            begin
                SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_R_v_0 <= SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_R_v_0 & SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_s_tv_0;
            end
            else
            begin
                SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_R_v_0 <= SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2(STALLREG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid <= 1'b0;
            SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid <= SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backStall & (SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid | SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_i_valid);

            if (SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_data0 <= $unsigned(redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_i_valid = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backStall = SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid | ~ (SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_i_valid);

    // Valid
    assign SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_V = SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid == 1'b1 ? SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid : SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_i_valid;

    assign SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_D0 = SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_valid == 1'b1 ? SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_r_data0 : redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_1_q;

    // SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2(STALLENABLE,309)
    // Valid signal propagation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_V0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_s_tv_0 = SE_i_reduction_ihc_1_ihc14_backStall & SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backEN = ~ (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_v_s_0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backEN & SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_V;
    // Backward Stall generation
    assign SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backStall = ~ (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backEN == 1'b0)
            begin
                SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_R_v_0 <= SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_R_v_0 & SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_s_tv_0;
            end
            else
            begin
                SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_R_v_0 <= SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_v_s_0;
            end

        end
    end

    // SE_i_reduction_ihc_1_ihc14(STALLENABLE,243)
    // Valid signal propagation
    assign SE_i_reduction_ihc_1_ihc14_V0 = SE_i_reduction_ihc_1_ihc14_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_ihc_1_ihc14_backStall = SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backStall | ~ (SE_i_reduction_ihc_1_ihc14_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_ihc_1_ihc14_and0 = SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_V0;
    assign SE_i_reduction_ihc_1_ihc14_wireValid = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V1 & SE_i_reduction_ihc_1_ihc14_and0;

    // SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0(STALLENABLE,299)
    // Valid signal propagation
    assign SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_V0 = SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_s_tv_0 = SE_i_reduction_ihc_2_ihc16_backStall & SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backEN = ~ (SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_v_s_0 = SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backEN & SE_i_reduction_ihc_1_ihc14_V0;
    // Backward Stall generation
    assign SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backStall = ~ (SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_R_v_0 <= SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_R_v_0 & SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_R_v_0 <= SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc12(BITJOIN,195)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc12_q = i_iord_bl_s2_unnamed_ihc5_ihc12_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc12(BITSELECT,196)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc12_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc5_ihc12_q[31:0]);

    // redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_backEN == 1'b1)
        begin
            redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_q <= $unsigned(SR_SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_D0);
        end
    end

    // i_reduction_ihc_1_ihc14(ADD,27)@11
    assign i_reduction_ihc_1_ihc14_a = {1'b0, redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_2_q};
    assign i_reduction_ihc_1_ihc14_b = {1'b0, bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc12_b};
    assign i_reduction_ihc_1_ihc14_o = $unsigned(i_reduction_ihc_1_ihc14_a) + $unsigned(i_reduction_ihc_1_ihc14_b);
    assign i_reduction_ihc_1_ihc14_q = i_reduction_ihc_1_ihc14_o[32:0];

    // bgTrunc_i_reduction_ihc_1_ihc14_sel_x(BITSELECT,71)@11
    assign bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b = i_reduction_ihc_1_ihc14_q[31:0];

    // redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b);
        end
    end

    // redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1(REG,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_backEN == 1'b1)
        begin
            redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_q <= $unsigned(SR_SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_D0);
        end
    end

    // i_reduction_ihc_2_ihc16(ADD,28)@12
    assign i_reduction_ihc_2_ihc16_a = {1'b0, redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_q};
    assign i_reduction_ihc_2_ihc16_b = {1'b0, redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_q};
    assign i_reduction_ihc_2_ihc16_o = $unsigned(i_reduction_ihc_2_ihc16_a) + $unsigned(i_reduction_ihc_2_ihc16_b);
    assign i_reduction_ihc_2_ihc16_q = i_reduction_ihc_2_ihc16_o[32:0];

    // bgTrunc_i_reduction_ihc_2_ihc16_sel_x(BITSELECT,72)@12
    assign bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b = i_reduction_ihc_2_ihc16_q[31:0];

    // SE_i_reduction_ihc_2_ihc16(STALLENABLE,244)
    // Valid signal propagation
    assign SE_i_reduction_ihc_2_ihc16_V0 = SE_i_reduction_ihc_2_ihc16_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_ihc_2_ihc16_backStall = SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backStall | ~ (SE_i_reduction_ihc_2_ihc16_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_ihc_2_ihc16_and0 = SE_redist5_bgTrunc_i_reduction_ihc_1_ihc14_sel_x_b_1_0_V0;
    assign SE_i_reduction_ihc_2_ihc16_wireValid = SE_redist6_bgTrunc_i_reduction_ihc_0_ihc11_sel_x_b_2_1_V0 & SE_i_reduction_ihc_2_ihc16_and0;

    // SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0(STALLREG,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid <= SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backStall & (SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid | SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_i_valid);

            if (SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_data0 <= bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_i_valid = SE_i_reduction_ihc_2_ihc16_V0;
    // Stall signal propagation
    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backStall = SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid | ~ (SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_V = SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid : SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_i_valid;

    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_D0 = SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_r_data0 : bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b;

    // redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0(REG,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_q <= $unsigned(SR_SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_D0);
        end
    end

    // c_i32_427(CONSTANT,11)
    assign c_i32_427_q = $unsigned(32'b11111111111111111111111111111100);

    // i_reduction_ihc_3_ihc17(ADD,29)@13
    assign i_reduction_ihc_3_ihc17_a = {1'b0, c_i32_427_q};
    assign i_reduction_ihc_3_ihc17_b = {1'b0, redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_q};
    assign i_reduction_ihc_3_ihc17_o = $unsigned(i_reduction_ihc_3_ihc17_a) + $unsigned(i_reduction_ihc_3_ihc17_b);
    assign i_reduction_ihc_3_ihc17_q = i_reduction_ihc_3_ihc17_o[32:0];

    // bgTrunc_i_reduction_ihc_3_ihc17_sel_x(BITSELECT,73)@13
    assign bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b = i_reduction_ihc_3_ihc17_q[31:0];

    // redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0(REG,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b);
        end
    end

    // i_sdiv_and_ihc19_vt_const_31(CONSTANT,32)
    assign i_sdiv_and_ihc19_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // c_i32_329(CONSTANT,10)
    assign c_i32_329_q = $unsigned(32'b00000000000000000000000000000011);

    // xMSB_uid117_i_sdiv_mask_ihc0_shift_x(BITSELECT,116)@14
    assign xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b = $unsigned(redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q[31:31]);

    // seMsb_to16_uid138(BITSELECT,137)@14
    assign seMsb_to16_uid138_in = $unsigned({{15{xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b[0]}}, xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b});
    assign seMsb_to16_uid138_b = $unsigned(seMsb_to16_uid138_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid139_i_sdiv_mask_ihc0_shift_x(BITSELECT,138)@14
    assign rightShiftStage4Idx1Rng16_uid139_i_sdiv_mask_ihc0_shift_x_b = $unsigned(rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_q[31:16]);

    // rightShiftStage4Idx1_uid140_i_sdiv_mask_ihc0_shift_x(BITJOIN,139)@14
    assign rightShiftStage4Idx1_uid140_i_sdiv_mask_ihc0_shift_x_q = {seMsb_to16_uid138_b, rightShiftStage4Idx1Rng16_uid139_i_sdiv_mask_ihc0_shift_x_b};

    // seMsb_to8_uid133(BITSELECT,132)@14
    assign seMsb_to8_uid133_in = $unsigned({{7{xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b[0]}}, xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b});
    assign seMsb_to8_uid133_b = $unsigned(seMsb_to8_uid133_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid134_i_sdiv_mask_ihc0_shift_x(BITSELECT,133)@14
    assign rightShiftStage3Idx1Rng8_uid134_i_sdiv_mask_ihc0_shift_x_b = $unsigned(rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_q[31:8]);

    // rightShiftStage3Idx1_uid135_i_sdiv_mask_ihc0_shift_x(BITJOIN,134)@14
    assign rightShiftStage3Idx1_uid135_i_sdiv_mask_ihc0_shift_x_q = {seMsb_to8_uid133_b, rightShiftStage3Idx1Rng8_uid134_i_sdiv_mask_ihc0_shift_x_b};

    // seMsb_to4_uid128(BITSELECT,127)@14
    assign seMsb_to4_uid128_in = $unsigned({{3{xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b[0]}}, xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b});
    assign seMsb_to4_uid128_b = $unsigned(seMsb_to4_uid128_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid129_i_sdiv_mask_ihc0_shift_x(BITSELECT,128)@14
    assign rightShiftStage2Idx1Rng4_uid129_i_sdiv_mask_ihc0_shift_x_b = $unsigned(rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_q[31:4]);

    // rightShiftStage2Idx1_uid130_i_sdiv_mask_ihc0_shift_x(BITJOIN,129)@14
    assign rightShiftStage2Idx1_uid130_i_sdiv_mask_ihc0_shift_x_q = {seMsb_to4_uid128_b, rightShiftStage2Idx1Rng4_uid129_i_sdiv_mask_ihc0_shift_x_b};

    // seMsb_to2_uid123(BITSELECT,122)@14
    assign seMsb_to2_uid123_in = $unsigned({{1{xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b[0]}}, xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b});
    assign seMsb_to2_uid123_b = $unsigned(seMsb_to2_uid123_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid124_i_sdiv_mask_ihc0_shift_x(BITSELECT,123)@14
    assign rightShiftStage1Idx1Rng2_uid124_i_sdiv_mask_ihc0_shift_x_b = $unsigned(rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid125_i_sdiv_mask_ihc0_shift_x(BITJOIN,124)@14
    assign rightShiftStage1Idx1_uid125_i_sdiv_mask_ihc0_shift_x_q = {seMsb_to2_uid123_b, rightShiftStage1Idx1Rng2_uid124_i_sdiv_mask_ihc0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid119_i_sdiv_mask_ihc0_shift_x(BITSELECT,118)@14
    assign rightShiftStage0Idx1Rng1_uid119_i_sdiv_mask_ihc0_shift_x_b = $unsigned(redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q[31:1]);

    // rightShiftStage0Idx1_uid120_i_sdiv_mask_ihc0_shift_x(BITJOIN,119)@14
    assign rightShiftStage0Idx1_uid120_i_sdiv_mask_ihc0_shift_x_q = {xMSB_uid117_i_sdiv_mask_ihc0_shift_x_b, rightShiftStage0Idx1Rng1_uid119_i_sdiv_mask_ihc0_shift_x_b};

    // rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x(MUX,121)@14
    assign rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_s or redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q or rightShiftStage0Idx1_uid120_i_sdiv_mask_ihc0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_s)
            1'b0 : rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_q = redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q;
            1'b1 : rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage0Idx1_uid120_i_sdiv_mask_ihc0_shift_x_q;
            default : rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x(MUX,126)@14
    assign rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_s or rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_q or rightShiftStage1Idx1_uid125_i_sdiv_mask_ihc0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_s)
            1'b0 : rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage0_uid122_i_sdiv_mask_ihc0_shift_x_q;
            1'b1 : rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage1Idx1_uid125_i_sdiv_mask_ihc0_shift_x_q;
            default : rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x(MUX,131)@14
    assign rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_s or rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_q or rightShiftStage2Idx1_uid130_i_sdiv_mask_ihc0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_s)
            1'b0 : rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage1_uid127_i_sdiv_mask_ihc0_shift_x_q;
            1'b1 : rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage2Idx1_uid130_i_sdiv_mask_ihc0_shift_x_q;
            default : rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x(MUX,136)@14
    assign rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_s or rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_q or rightShiftStage3Idx1_uid135_i_sdiv_mask_ihc0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_s)
            1'b0 : rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage2_uid132_i_sdiv_mask_ihc0_shift_x_q;
            1'b1 : rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage3Idx1_uid135_i_sdiv_mask_ihc0_shift_x_q;
            default : rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x(MUX,141)@14
    assign rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_s or rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_q or rightShiftStage4Idx1_uid140_i_sdiv_mask_ihc0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_s)
            1'b0 : rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage3_uid137_i_sdiv_mask_ihc0_shift_x_q;
            1'b1 : rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_q = rightShiftStage4Idx1_uid140_i_sdiv_mask_ihc0_shift_x_q;
            default : rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_q = 32'b0;
        endcase
    end

    // i_sdiv_and_ihc19(LOGICAL,31)@14
    assign i_sdiv_and_ihc19_q = rightShiftStage4_uid142_i_sdiv_mask_ihc0_shift_x_q & c_i32_329_q;

    // i_sdiv_and_ihc19_vt_select_1(BITSELECT,34)@14
    assign i_sdiv_and_ihc19_vt_select_1_b = i_sdiv_and_ihc19_q[1:0];

    // i_sdiv_and_ihc19_vt_join(BITJOIN,33)@14
    assign i_sdiv_and_ihc19_vt_join_q = {i_sdiv_and_ihc19_vt_const_31_q, i_sdiv_and_ihc19_vt_select_1_b};

    // i_sdiv_add_ihc20(ADD,30)@14
    assign i_sdiv_add_ihc20_a = {1'b0, i_sdiv_and_ihc19_vt_join_q};
    assign i_sdiv_add_ihc20_b = {1'b0, redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_q};
    assign i_sdiv_add_ihc20_o = $unsigned(i_sdiv_add_ihc20_a) + $unsigned(i_sdiv_add_ihc20_b);
    assign i_sdiv_add_ihc20_q = i_sdiv_add_ihc20_o[32:0];

    // bgTrunc_i_sdiv_add_ihc20_sel_x(BITSELECT,74)@14
    assign bgTrunc_i_sdiv_add_ihc20_sel_x_b = i_sdiv_add_ihc20_q[31:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x(MUX,149)@14
    assign rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_s or bgTrunc_i_sdiv_add_ihc20_sel_x_b or rightShiftStage0Idx1_uid148_i_sdiv_sh_ihc0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_s)
            1'b0 : rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_q = bgTrunc_i_sdiv_add_ihc20_sel_x_b;
            1'b1 : rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_q = rightShiftStage0Idx1_uid148_i_sdiv_sh_ihc0_shift_x_q;
            default : rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_q = 32'b0;
        endcase
    end

    // i_iowr_bl_s3_unnamed_ihc6_ihc22(BLACKBOX,20)@14
    // in in_i_stall@20000000
    // out out_iowr_bl_s3_0_o_fifodata@20000000
    // out out_iowr_bl_s3_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s3_unnamed_ihc6_ihc0 thei_iowr_bl_s3_unnamed_ihc6_ihc22 (
        .in_i_data(rightShiftStage0_uid150_i_sdiv_sh_ihc0_shift_x_q),
        .in_i_dependence(redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_q),
        .in_i_stall(SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_V0),
        .in_iowr_bl_s3_0_i_fifoready(in_iowr_bl_s3_0_i_fifoready),
        .out_iowr_bl_s3_0_o_fifodata(i_iowr_bl_s3_unnamed_ihc6_ihc22_out_iowr_bl_s3_0_o_fifodata),
        .out_iowr_bl_s3_0_o_fifovalid(i_iowr_bl_s3_unnamed_ihc6_ihc22_out_iowr_bl_s3_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_ack),
        .out_o_stall(i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_stall),
        .out_o_valid(i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0(STALLENABLE,297)
    // Valid signal propagation
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_V0 = SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_0;
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_V1 = SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_0 = SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall & SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_0;
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_1 = SE_out_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall & SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_or0 = SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_0;
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backEN = ~ (SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_1 | SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_v_s_0 = SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backEN & SE_redist4_bgTrunc_i_reduction_ihc_2_ihc16_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backStall = ~ (SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_0 & SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_1 <= SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_1 & SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_R_v_1 <= SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22(STALLENABLE,230)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_V0 = SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall = i_iowr_bl_s3_unnamed_ihc6_ihc22_out_o_stall | ~ (SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_and0 = SE_redist3_bgTrunc_i_reduction_ihc_3_ihc17_sel_x_b_1_0_V0;
    assign SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_wireValid = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_V0 & SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_and0;

    // SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2(STALLENABLE,304)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_V0 = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_s_tv_0 = SE_in_i_iowr_bl_s3_unnamed_ihc6_ihc22_backStall & SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backEN = ~ (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_v_s_0 = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backEN & SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_V;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backStall = ~ (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_R_v_0 <= SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_R_v_0 & SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_R_v_0 <= SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_v_s_0;
            end

        end
    end

    // SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2(STALLREG,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid <= 1'b0;
            SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid <= SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backStall & (SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid | SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_i_valid);

            if (SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_data0 <= $unsigned(redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_i_valid = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backStall = SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid | ~ (SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_i_valid);

    // Valid
    assign SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_V = SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid == 1'b1 ? SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid : SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_i_valid;

    assign SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_D0 = SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_valid == 1'b1 ? SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_r_data0 : redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_q;

    // SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1(STALLENABLE,303)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_V0 = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_s_tv_0 = SR_SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_2_backStall & SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backEN = ~ (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_v_s_0 = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backEN & SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_V0;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backStall = ~ (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_R_v_0 <= SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_R_v_0 & SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_R_v_0 <= SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_v_s_0;
            end

        end
    end

    // SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0(STALLENABLE,302)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_V0 = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_s_tv_0 = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_1_backStall & SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backEN = ~ (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_v_s_0 = SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_V1;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backStall = ~ (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_R_v_0 <= SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_R_v_0 & SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_R_v_0 <= SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_v_s_0;
            end

        end
    end

    // SE_stall_exit(STALLENABLE,251)
    // Valid signal propagation
    assign SE_stall_exit_V0 = SE_stall_exit_wireValid;
    // Backward Stall generation
    assign SE_stall_exit_backStall = in_stall_in | ~ (SE_stall_exit_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_exit_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_V0;
    assign SE_stall_exit_wireValid = SE_out_i_iord_bl_s2_unnamed_ihc5_ihc12_V0 & SE_stall_exit_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4(STALLENABLE,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed1 = (~ (SE_redist7_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out_3_0_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_wireValid = i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24(STALLENABLE,239)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_wireValid = i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_valid_out;

    // bubble_join_i_iowr_bl_s3_unnamed_ihc7_ihc23(BITJOIN,202)
    assign bubble_join_i_iowr_bl_s3_unnamed_ihc7_ihc23_q = i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack;

    // bubble_select_i_iowr_bl_s3_unnamed_ihc7_ihc23(BITSELECT,203)
    assign bubble_select_i_iowr_bl_s3_unnamed_ihc7_ihc23_b = $unsigned(bubble_join_i_iowr_bl_s3_unnamed_ihc7_ihc23_q[0:0]);

    // redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0(REG,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s3_unnamed_ihc7_ihc23_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24(BLACKBOX,24)@16
    // in in_stall_in@20000000
    // out out_data_out@17
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    MultiToken_i_llvm_fpga_push_i1_memdep_phi4_push4_ihc0 thei_llvm_fpga_push_i1_memdep_phi4_push4_ihc24 (
        .in_data_in(redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_feedback_stall_out_4),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_backStall),
        .in_valid_in(SE_redist8_i_iowr_bl_s3_unnamed_ihc7_ihc23_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2(REG,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_q <= $unsigned(SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_D0);
        end
    end

    // redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_q <= $unsigned(redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4(BLACKBOX,22)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc0 thei_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4 (
        .in_data_in(GND_q),
        .in_dir(redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_q),
        .in_feedback_in_4(i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i1_memdep_phi4_push4_ihc24_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_backStall),
        .in_valid_in(SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3(STALLENABLE,296)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_V0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi4_pop4_ihc4_out_stall_out & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backEN = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_v_s_0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backEN & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backStall = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_R_v_0 & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_v_s_0;
            end

        end
    end

    // SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2(STALLENABLE,295)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_V0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_s_tv_0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_3_backStall & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backEN = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_v_s_0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backEN & SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_V;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backStall = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_R_v_0 & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_v_s_0;
            end

        end
    end

    // SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2(STALLREG,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid <= 1'b0;
            SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backStall & (SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid | SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_i_valid);

            if (SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_data0 <= $unsigned(redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_i_valid = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_V0;
    // Stall signal propagation
    assign SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backStall = SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid | ~ (SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_i_valid);

    // Valid
    assign SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_V = SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid : SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_i_valid;

    assign SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_D0 = SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_r_data0 : redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_q;

    // SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1(STALLENABLE,294)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_V0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_s_tv_0 = SR_SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_2_backStall & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backEN = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_v_s_0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backEN & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backStall = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_R_v_0 & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_v_s_0;
            end

        end
    end

    // SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0(STALLENABLE,293)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_V0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_s_tv_0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_1_backStall & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backEN = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_v_s_0 = SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backEN & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backStall = ~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_R_v_0 & SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_R_v_0 <= SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,212)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,213)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,250)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_B1_merge_reg_aunroll_x(BLACKBOX,104)@0
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

    // bubble_join_ihc_B1_merge_reg_aunroll_x(BITJOIN,219)
    assign bubble_join_ihc_B1_merge_reg_aunroll_x_q = ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_B1_merge_reg_aunroll_x(BITSELECT,220)
    assign bubble_select_ihc_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_B1_merge_reg_aunroll_x(STALLENABLE,264)
    // Valid signal propagation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall | ~ (SE_out_ihc_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_B1_merge_reg_aunroll_x_wireValid = ihc_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BLACKBOX,99)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@6
    // out out_c0_exit_1_tpl@6
    // out out_c0_exit_2_tpl@6
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
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(STALLENABLE,258)
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
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0 = (~ (SE_redist2_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl_4_0_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_stall_out) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1;
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

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc15(STALLENABLE,241)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_wireValid = i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_valid_out;

    // i_toi1_intcast3_ihc13_sel_x(BITSELECT,102)@11
    assign i_toi1_intcast3_ihc13_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc5_ihc12_b[0:0];

    // redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0(REG,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_q <= $unsigned(i_toi1_intcast3_ihc13_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push3_ihc15(BLACKBOX,25)@12
    // in in_stall_in@20000000
    // out out_data_out@13
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@13
    MultiToken_i_llvm_fpga_push_i1_memdep_phi_push3_ihc0 thei_llvm_fpga_push_i1_memdep_phi_push3_ihc15 (
        .in_data_in(redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_feedback_stall_out_3),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_backStall),
        .in_valid_in(SE_redist1_i_toi1_intcast3_ihc13_sel_x_b_1_0_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITJOIN,216)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITSELECT,217)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(BLACKBOX,23)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc0 thei_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b),
        .in_feedback_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc15_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_feedback_stall_out_3),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(STALLENABLE,237)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_backStall = i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_valid_out;

    // SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5(STALLENABLE,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed0 = (~ (SE_redist11_i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data_3_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed1 = (~ (i_iord_bl_s2_unnamed_ihc3_ihc7_out_o_stall) & SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_backStall & SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_or0 = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_or0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_backStall = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_V0 = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_V1 = SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_wireValid = i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(BITJOIN,209)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3(BITSELECT,210)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_q[0:0]);

    // i_iord_bl_s2_unnamed_ihc2_ihc5(BLACKBOX,16)@7
    // in in_i_stall@20000000
    // out out_iord_bl_s2_0_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_0_o_fifoready@20000000
    // out out_o_data@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    MultiToken_i_iord_bl_s2_unnamed_ihc2_ihc0 thei_iord_bl_s2_unnamed_ihc2_ihc5 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc2_ihc5_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc3_V0),
        .in_iord_bl_s2_0_i_fifodata(in_iord_bl_s2_0_i_fifodata),
        .in_iord_bl_s2_0_i_fifovalid(in_iord_bl_s2_0_i_fifovalid),
        .out_iord_bl_s2_0_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc2_ihc5_out_iord_bl_s2_0_o_fifoalmost_full),
        .out_iord_bl_s2_0_o_fifoready(i_iord_bl_s2_unnamed_ihc2_ihc5_out_iord_bl_s2_0_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc2_ihc5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,15)
    assign out_iord_bl_s2_0_o_fifoready = i_iord_bl_s2_unnamed_ihc2_ihc5_out_iord_bl_s2_0_o_fifoready;
    assign out_iord_bl_s2_0_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc2_ihc5_out_iord_bl_s2_0_o_fifoalmost_full;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,68)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,76)
    assign out_iord_bl_s2_1_o_fifoready = i_iord_bl_s2_unnamed_ihc3_ihc7_out_iord_bl_s2_1_o_fifoready;
    assign out_iord_bl_s2_1_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc3_ihc7_out_iord_bl_s2_1_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,77)@11
    assign out_valid_out = SE_stall_exit_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,79)
    assign out_iord_bl_s2_2_o_fifoready = i_iord_bl_s2_unnamed_ihc4_ihc9_out_iord_bl_s2_2_o_fifoready;
    assign out_iord_bl_s2_2_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc4_ihc9_out_iord_bl_s2_2_o_fifoalmost_full;

    // dupName_2_ext_sig_sync_out_x(GPOUT,81)
    assign out_iord_bl_s2_3_o_fifoready = i_iord_bl_s2_unnamed_ihc5_ihc12_out_iord_bl_s2_3_o_fifoready;
    assign out_iord_bl_s2_3_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc5_ihc12_out_iord_bl_s2_3_o_fifoalmost_full;

    // dupName_3_ext_sig_sync_out_x(GPOUT,83)
    assign out_iowr_bl_s3_0_o_fifodata = i_iowr_bl_s3_unnamed_ihc6_ihc22_out_iowr_bl_s3_0_o_fifodata;
    assign out_iowr_bl_s3_0_o_fifovalid = i_iowr_bl_s3_unnamed_ihc6_ihc22_out_iowr_bl_s3_0_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,85)
    assign out_iowr_bl_s3_1_o_fifodata = i_iowr_bl_s3_unnamed_ihc7_ihc23_out_iowr_bl_s3_1_o_fifodata;
    assign out_iowr_bl_s3_1_o_fifovalid = i_iowr_bl_s3_unnamed_ihc7_ihc23_out_iowr_bl_s3_1_o_fifovalid;

    // dupName_5_ext_sig_sync_out_x(GPOUT,86)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;

endmodule
