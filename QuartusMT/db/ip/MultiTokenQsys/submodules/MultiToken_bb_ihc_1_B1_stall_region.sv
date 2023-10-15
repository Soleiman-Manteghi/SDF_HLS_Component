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
// SystemVerilog created on Sat Sep 16 17:21:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_bb_ihc_1_B1_stall_region (
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
    input wire [0:0] in_iowr_bl_s3_i_fifoready,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out,
    output wire [31:0] out_iowr_bl_s3_o_fifodata,
    output wire [0:0] out_iowr_bl_s3_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_326_q;
    wire [31:0] c_i32_424_q;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_iord_bl_s2_3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_iord_bl_s2_3_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_valid;
    wire [31:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_iowr_bl_s3_o_fifodata;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_iowr_bl_s3_o_fifovalid;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_o_stall;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_valid_out;
    wire [32:0] i_reduction_ihc_1_0_ihc_110_a;
    wire [32:0] i_reduction_ihc_1_0_ihc_110_b;
    logic [32:0] i_reduction_ihc_1_0_ihc_110_o;
    wire [32:0] i_reduction_ihc_1_0_ihc_110_q;
    wire [32:0] i_reduction_ihc_1_1_ihc_113_a;
    wire [32:0] i_reduction_ihc_1_1_ihc_113_b;
    logic [32:0] i_reduction_ihc_1_1_ihc_113_o;
    wire [32:0] i_reduction_ihc_1_1_ihc_113_q;
    wire [32:0] i_reduction_ihc_1_2_ihc_115_a;
    wire [32:0] i_reduction_ihc_1_2_ihc_115_b;
    logic [32:0] i_reduction_ihc_1_2_ihc_115_o;
    wire [32:0] i_reduction_ihc_1_2_ihc_115_q;
    wire [32:0] i_reduction_ihc_1_3_ihc_116_a;
    wire [32:0] i_reduction_ihc_1_3_ihc_116_b;
    logic [32:0] i_reduction_ihc_1_3_ihc_116_o;
    wire [32:0] i_reduction_ihc_1_3_ihc_116_q;
    wire [32:0] i_sdiv_add_ihc_119_a;
    wire [32:0] i_sdiv_add_ihc_119_b;
    logic [32:0] i_sdiv_add_ihc_119_o;
    wire [32:0] i_sdiv_add_ihc_119_q;
    wire [31:0] i_sdiv_and_ihc_118_q;
    wire [29:0] i_sdiv_and_ihc_118_vt_const_31_q;
    wire [31:0] i_sdiv_and_ihc_118_vt_join_q;
    wire [1:0] i_sdiv_and_ihc_118_vt_select_1_b;
    wire [31:0] bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b;
    wire [31:0] bgTrunc_i_sdiv_add_ihc_119_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_toi1_intcast1_ihc_17_sel_x_b;
    wire [0:0] i_toi1_intcast2_ihc_19_sel_x_b;
    wire [0:0] i_toi1_intcast3_ihc_112_sel_x_b;
    wire [0:0] i_toi1_intcast_ihc_15_sel_x_b;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid108_i_sdiv_mask_ihc_10_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid109_i_sdiv_mask_ihc_10_shift_x_q;
    wire [0:0] rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_s;
    reg [31:0] rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_q;
    wire [1:0] seMsb_to2_uid112_in;
    wire [1:0] seMsb_to2_uid112_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid113_i_sdiv_mask_ihc_10_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid114_i_sdiv_mask_ihc_10_shift_x_q;
    wire [0:0] rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_s;
    reg [31:0] rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_q;
    wire [3:0] seMsb_to4_uid117_in;
    wire [3:0] seMsb_to4_uid117_b;
    wire [27:0] rightShiftStage2Idx1Rng4_uid118_i_sdiv_mask_ihc_10_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid119_i_sdiv_mask_ihc_10_shift_x_q;
    wire [0:0] rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_s;
    reg [31:0] rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_q;
    wire [7:0] seMsb_to8_uid122_in;
    wire [7:0] seMsb_to8_uid122_b;
    wire [23:0] rightShiftStage3Idx1Rng8_uid123_i_sdiv_mask_ihc_10_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid124_i_sdiv_mask_ihc_10_shift_x_q;
    wire [0:0] rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_s;
    reg [31:0] rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_q;
    wire [15:0] seMsb_to16_uid127_in;
    wire [15:0] seMsb_to16_uid127_b;
    wire [15:0] rightShiftStage4Idx1Rng16_uid128_i_sdiv_mask_ihc_10_shift_x_b;
    wire [31:0] rightShiftStage4Idx1_uid129_i_sdiv_mask_ihc_10_shift_x_q;
    wire [0:0] rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_s;
    reg [31:0] rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_q;
    wire [0:0] xMSB_uid133_i_sdiv_sh_ihc_10_shift_x_b;
    wire [1:0] seMsb_to2_uid135_in;
    wire [1:0] seMsb_to2_uid135_b;
    wire [29:0] rightShiftStage0Idx1Rng2_uid136_i_sdiv_sh_ihc_10_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid137_i_sdiv_sh_ihc_10_shift_x_q;
    wire [0:0] rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_s;
    reg [31:0] rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_q;
    reg [0:0] redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_q;
    reg [31:0] redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q;
    reg [31:0] redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_q;
    reg [31:0] redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_q;
    reg [31:0] redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_q;
    reg [31:0] redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_q;
    reg [31:0] redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_q;
    reg [31:0] redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_q;
    reg [31:0] redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_q;
    reg [31:0] redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_q;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_111_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_111_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b;
    wire [0:0] bubble_join_ihc_1_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_1_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg2;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg2;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed2;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_or1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V2;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_121_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_121_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_backStall;
    wire [0:0] SE_i_reduction_ihc_1_0_ihc_110_wireValid;
    wire [0:0] SE_i_reduction_ihc_1_0_ihc_110_and0;
    wire [0:0] SE_i_reduction_ihc_1_0_ihc_110_backStall;
    wire [0:0] SE_i_reduction_ihc_1_0_ihc_110_V0;
    wire [0:0] SE_i_reduction_ihc_1_1_ihc_113_wireValid;
    wire [0:0] SE_i_reduction_ihc_1_1_ihc_113_and0;
    wire [0:0] SE_i_reduction_ihc_1_1_ihc_113_backStall;
    wire [0:0] SE_i_reduction_ihc_1_1_ihc_113_V0;
    wire [0:0] SE_i_reduction_ihc_1_2_ihc_115_wireValid;
    wire [0:0] SE_i_reduction_ihc_1_2_ihc_115_and0;
    wire [0:0] SE_i_reduction_ihc_1_2_ihc_115_backStall;
    wire [0:0] SE_i_reduction_ihc_1_2_ihc_115_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_V0;
    reg [0:0] SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_V0;
    reg [0:0] SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_V0;
    reg [0:0] SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_V0;
    reg [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_R_v_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_v_s_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_s_tv_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backEN;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backStall;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_V0;
    reg [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_R_v_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_v_s_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_s_tv_0;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backEN;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backStall;
    wire [0:0] SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_V0;
    reg [0:0] SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_R_v_0;
    wire [0:0] SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_v_s_0;
    wire [0:0] SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backEN;
    wire [0:0] SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backStall;
    wire [0:0] SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_V0;
    reg [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_R_v_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_v_s_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_s_tv_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backEN;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backStall;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_V0;
    reg [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_R_v_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_v_s_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_s_tv_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backEN;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backStall;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_V0;
    reg [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_R_v_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_v_s_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_s_tv_0;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backEN;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backStall;
    wire [0:0] SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_V0;
    wire [0:0] SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_i_valid;
    reg [0:0] SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid;
    reg [31:0] SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_data0;
    wire [0:0] SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backStall;
    wire [0:0] SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_V;
    wire [31:0] SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_D0;
    wire [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_i_valid;
    reg [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid;
    reg [31:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_data0;
    wire [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backStall;
    wire [0:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_V;
    wire [31:0] SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_D0;
    wire [0:0] SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_D0;


    // bubble_join_stall_entry(BITJOIN,174)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,175)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,206)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_1_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_1_B1_merge_reg_aunroll_x(BLACKBOX,93)@0
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

    // bubble_join_ihc_1_B1_merge_reg_aunroll_x(BITJOIN,181)
    assign bubble_join_ihc_1_B1_merge_reg_aunroll_x_q = ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_1_B1_merge_reg_aunroll_x(BITSELECT,182)
    assign bubble_select_ihc_1_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_1_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_1_B1_merge_reg_aunroll_x(STALLENABLE,220)
    // Valid signal propagation
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall | ~ (SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid = ihc_1_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BLACKBOX,88)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@6
    // out out_c0_exit_1_tpl@6
    // out out_c0_exit_2_tpl@6
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
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(STALLENABLE,214)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_111(BITJOIN,167)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_111_q = i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_111(BITSELECT,168)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_111_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_111_q[31:0]);

    // SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0(STALLENABLE,253)
    // Valid signal propagation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_V0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_s_tv_0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backStall & SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backEN = ~ (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_v_s_0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V0;
    // Backward Stall generation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backStall = ~ (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backEN == 1'b0)
            begin
                SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_R_v_0 <= SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_R_v_0 & SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_R_v_0 <= SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_v_s_0;
            end

        end
    end

    // bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14(BITJOIN,158)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14_q = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14(BITSELECT,159)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14_q[31:0]);

    // redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0(REG,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backEN == 1'b1)
        begin
            redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_q <= $unsigned(bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14_b);
        end
    end

    // redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1(REG,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backEN == 1'b1)
        begin
            redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_q <= $unsigned(redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_q);
        end
    end

    // SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1(STALLENABLE,254)
    // Valid signal propagation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_V0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_s_tv_0 = SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backStall & SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backEN = ~ (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_v_s_0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backEN & SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_V0;
    // Backward Stall generation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backStall = ~ (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_backEN == 1'b0)
            begin
                SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_R_v_0 <= SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_R_v_0 & SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_R_v_0 <= SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2(STALLREG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid <= 1'b0;
            SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid <= SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backStall & (SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid | SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_i_valid);

            if (SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_data0 <= $unsigned(redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_i_valid = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backStall = SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid | ~ (SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_i_valid);

    // Valid
    assign SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_V = SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid == 1'b1 ? SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid : SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_i_valid;

    assign SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_D0 = SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_valid == 1'b1 ? SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_r_data0 : redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_1_q;

    // redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2(REG,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backEN == 1'b1)
        begin
            redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_q <= $unsigned(SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_D0);
        end
    end

    // i_reduction_ihc_1_1_ihc_113(ADD,24)@11
    assign i_reduction_ihc_1_1_ihc_113_a = {1'b0, redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_q};
    assign i_reduction_ihc_1_1_ihc_113_b = {1'b0, bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_111_b};
    assign i_reduction_ihc_1_1_ihc_113_o = $unsigned(i_reduction_ihc_1_1_ihc_113_a) + $unsigned(i_reduction_ihc_1_1_ihc_113_b);
    assign i_reduction_ihc_1_1_ihc_113_q = i_reduction_ihc_1_1_ihc_113_o[32:0];

    // bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x(BITSELECT,62)@11
    assign bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b = i_reduction_ihc_1_1_ihc_113_q[31:0];

    // redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b);
        end
    end

    // i_toi1_intcast1_ihc_17_sel_x(BITSELECT,89)@9
    assign i_toi1_intcast1_ihc_17_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16_b[0:0];

    // i_iord_bl_s2_unnamed_ihc_14_ihc_18(BLACKBOX,18)@9
    // in in_i_stall@20000000
    // out out_iord_bl_s2_2_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_2_o_fifoready@20000000
    // out out_o_data@10
    // out out_o_stall@20000000
    // out out_o_valid@10
    MultiToken_i_iord_bl_s2_unnamed_ihc_14_ihc_10 thei_iord_bl_s2_unnamed_ihc_14_ihc_18 (
        .in_i_dependence(i_toi1_intcast1_ihc_17_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V1),
        .in_iord_bl_s2_2_i_fifodata(in_iord_bl_s2_2_i_fifodata),
        .in_iord_bl_s2_2_i_fifovalid(in_iord_bl_s2_2_i_fifovalid),
        .out_iord_bl_s2_2_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoalmost_full),
        .out_iord_bl_s2_2_o_fifoready(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18(STALLENABLE,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed0 = (~ (SE_i_reduction_ihc_1_0_ihc_110_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed1 = (~ (i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_stall) & SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_backStall & SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_or0 = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_or0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_backStall = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V1 = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_valid;

    // SE_i_reduction_ihc_1_0_ihc_110(STALLENABLE,198)
    // Valid signal propagation
    assign SE_i_reduction_ihc_1_0_ihc_110_V0 = SE_i_reduction_ihc_1_0_ihc_110_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_ihc_1_0_ihc_110_backStall = SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backStall | ~ (SE_i_reduction_ihc_1_0_ihc_110_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_ihc_1_0_ihc_110_and0 = SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_V0;
    assign SE_i_reduction_ihc_1_0_ihc_110_wireValid = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V0 & SE_i_reduction_ihc_1_0_ihc_110_and0;

    // i_toi1_intcast_ihc_15_sel_x(BITSELECT,92)@8
    assign i_toi1_intcast_ihc_15_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14_b[0:0];

    // i_iord_bl_s2_unnamed_ihc_13_ihc_16(BLACKBOX,17)@8
    // in in_i_stall@20000000
    // out out_iord_bl_s2_1_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_1_o_fifoready@20000000
    // out out_o_data@9
    // out out_o_stall@20000000
    // out out_o_valid@9
    MultiToken_i_iord_bl_s2_unnamed_ihc_13_ihc_10 thei_iord_bl_s2_unnamed_ihc_13_ihc_16 (
        .in_i_dependence(i_toi1_intcast_ihc_15_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V1),
        .in_iord_bl_s2_1_i_fifodata(in_iord_bl_s2_1_i_fifodata),
        .in_iord_bl_s2_1_i_fifovalid(in_iord_bl_s2_1_i_fifovalid),
        .out_iord_bl_s2_1_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoalmost_full),
        .out_iord_bl_s2_1_o_fifoready(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16(STALLENABLE,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed0 = (~ (SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed1 = (~ (i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_stall) & SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_backStall & SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_or0 = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_or0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_backStall = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V1 = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_valid;

    // SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0(STALLENABLE,252)
    // Valid signal propagation
    assign SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_V0 = SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_s_tv_0 = SE_i_reduction_ihc_1_0_ihc_110_backStall & SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backEN = ~ (SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_v_s_0 = SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V0;
    // Backward Stall generation
    assign SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backStall = ~ (SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_R_v_0 <= SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_R_v_0 & SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_R_v_0 <= SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16(BITJOIN,161)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16_q = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16(BITSELECT,162)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16_q[31:0]);

    // redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_backEN == 1'b1)
        begin
            redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_q <= $unsigned(bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16_b);
        end
    end

    // bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18(BITJOIN,164)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18_q = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18(BITSELECT,165)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18_q[31:0]);

    // i_reduction_ihc_1_0_ihc_110(ADD,23)@10
    assign i_reduction_ihc_1_0_ihc_110_a = {1'b0, bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18_b};
    assign i_reduction_ihc_1_0_ihc_110_b = {1'b0, redist5_i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data_1_0_q};
    assign i_reduction_ihc_1_0_ihc_110_o = $unsigned(i_reduction_ihc_1_0_ihc_110_a) + $unsigned(i_reduction_ihc_1_0_ihc_110_b);
    assign i_reduction_ihc_1_0_ihc_110_q = i_reduction_ihc_1_0_ihc_110_o[32:0];

    // bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x(BITSELECT,61)@10
    assign bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b = i_reduction_ihc_1_0_ihc_110_q[31:0];

    // redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0(REG,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backEN == 1'b1)
        begin
            redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_q <= $unsigned(bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b);
        end
    end

    // SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0(STALLENABLE,250)
    // Valid signal propagation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_V0 = SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_s_tv_0 = SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backStall & SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backEN = ~ (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_v_s_0 = SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backEN & SE_i_reduction_ihc_1_0_ihc_110_V0;
    // Backward Stall generation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backStall = ~ (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_backEN == 1'b0)
            begin
                SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_R_v_0 <= SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_R_v_0 & SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_s_tv_0;
            end
            else
            begin
                SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_R_v_0 <= SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1(STALLREG,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid <= 1'b0;
            SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid <= SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backStall & (SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid | SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_i_valid);

            if (SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_data0 <= $unsigned(redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_i_valid = SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backStall = SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid | ~ (SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_i_valid);

    // Valid
    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_V = SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid == 1'b1 ? SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid : SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_i_valid;

    assign SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_D0 = SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_valid == 1'b1 ? SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_r_data0 : redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_0_q;

    // redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1(REG,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backEN == 1'b1)
        begin
            redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_q <= $unsigned(SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_D0);
        end
    end

    // i_reduction_ihc_1_2_ihc_115(ADD,25)@12
    assign i_reduction_ihc_1_2_ihc_115_a = {1'b0, redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_q};
    assign i_reduction_ihc_1_2_ihc_115_b = {1'b0, redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_q};
    assign i_reduction_ihc_1_2_ihc_115_o = $unsigned(i_reduction_ihc_1_2_ihc_115_a) + $unsigned(i_reduction_ihc_1_2_ihc_115_b);
    assign i_reduction_ihc_1_2_ihc_115_q = i_reduction_ihc_1_2_ihc_115_o[32:0];

    // bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x(BITSELECT,63)@12
    assign bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b = i_reduction_ihc_1_2_ihc_115_q[31:0];

    // SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_121(STALLENABLE,193)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_121_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_121_wireValid = i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_o_valid;

    // xMSB_uid133_i_sdiv_sh_ihc_10_shift_x(BITSELECT,132)@14
    assign xMSB_uid133_i_sdiv_sh_ihc_10_shift_x_b = $unsigned(bgTrunc_i_sdiv_add_ihc_119_sel_x_b[31:31]);

    // seMsb_to2_uid135(BITSELECT,134)@14
    assign seMsb_to2_uid135_in = $unsigned({{1{xMSB_uid133_i_sdiv_sh_ihc_10_shift_x_b[0]}}, xMSB_uid133_i_sdiv_sh_ihc_10_shift_x_b});
    assign seMsb_to2_uid135_b = $unsigned(seMsb_to2_uid135_in[1:0]);

    // rightShiftStage0Idx1Rng2_uid136_i_sdiv_sh_ihc_10_shift_x(BITSELECT,135)@14
    assign rightShiftStage0Idx1Rng2_uid136_i_sdiv_sh_ihc_10_shift_x_b = $unsigned(bgTrunc_i_sdiv_add_ihc_119_sel_x_b[31:2]);

    // rightShiftStage0Idx1_uid137_i_sdiv_sh_ihc_10_shift_x(BITJOIN,136)@14
    assign rightShiftStage0Idx1_uid137_i_sdiv_sh_ihc_10_shift_x_q = {seMsb_to2_uid135_b, rightShiftStage0Idx1Rng2_uid136_i_sdiv_sh_ihc_10_shift_x_b};

    // redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0(REG,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_q <= $unsigned(SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_D0);
        end
    end

    // c_i32_424(CONSTANT,11)
    assign c_i32_424_q = $unsigned(32'b11111111111111111111111111111100);

    // i_reduction_ihc_1_3_ihc_116(ADD,26)@13
    assign i_reduction_ihc_1_3_ihc_116_a = {1'b0, c_i32_424_q};
    assign i_reduction_ihc_1_3_ihc_116_b = {1'b0, redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_q};
    assign i_reduction_ihc_1_3_ihc_116_o = $unsigned(i_reduction_ihc_1_3_ihc_116_a) + $unsigned(i_reduction_ihc_1_3_ihc_116_b);
    assign i_reduction_ihc_1_3_ihc_116_q = i_reduction_ihc_1_3_ihc_116_o[32:0];

    // bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x(BITSELECT,64)@13
    assign bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b = i_reduction_ihc_1_3_ihc_116_q[31:0];

    // redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0(REG,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b);
        end
    end

    // i_sdiv_and_ihc_118_vt_const_31(CONSTANT,29)
    assign i_sdiv_and_ihc_118_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // c_i32_326(CONSTANT,10)
    assign c_i32_326_q = $unsigned(32'b00000000000000000000000000000011);

    // xMSB_uid106_i_sdiv_mask_ihc_10_shift_x(BITSELECT,105)@14
    assign xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b = $unsigned(redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q[31:31]);

    // seMsb_to16_uid127(BITSELECT,126)@14
    assign seMsb_to16_uid127_in = $unsigned({{15{xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b[0]}}, xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b});
    assign seMsb_to16_uid127_b = $unsigned(seMsb_to16_uid127_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid128_i_sdiv_mask_ihc_10_shift_x(BITSELECT,127)@14
    assign rightShiftStage4Idx1Rng16_uid128_i_sdiv_mask_ihc_10_shift_x_b = $unsigned(rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_q[31:16]);

    // rightShiftStage4Idx1_uid129_i_sdiv_mask_ihc_10_shift_x(BITJOIN,128)@14
    assign rightShiftStage4Idx1_uid129_i_sdiv_mask_ihc_10_shift_x_q = {seMsb_to16_uid127_b, rightShiftStage4Idx1Rng16_uid128_i_sdiv_mask_ihc_10_shift_x_b};

    // seMsb_to8_uid122(BITSELECT,121)@14
    assign seMsb_to8_uid122_in = $unsigned({{7{xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b[0]}}, xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b});
    assign seMsb_to8_uid122_b = $unsigned(seMsb_to8_uid122_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid123_i_sdiv_mask_ihc_10_shift_x(BITSELECT,122)@14
    assign rightShiftStage3Idx1Rng8_uid123_i_sdiv_mask_ihc_10_shift_x_b = $unsigned(rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_q[31:8]);

    // rightShiftStage3Idx1_uid124_i_sdiv_mask_ihc_10_shift_x(BITJOIN,123)@14
    assign rightShiftStage3Idx1_uid124_i_sdiv_mask_ihc_10_shift_x_q = {seMsb_to8_uid122_b, rightShiftStage3Idx1Rng8_uid123_i_sdiv_mask_ihc_10_shift_x_b};

    // seMsb_to4_uid117(BITSELECT,116)@14
    assign seMsb_to4_uid117_in = $unsigned({{3{xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b[0]}}, xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b});
    assign seMsb_to4_uid117_b = $unsigned(seMsb_to4_uid117_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid118_i_sdiv_mask_ihc_10_shift_x(BITSELECT,117)@14
    assign rightShiftStage2Idx1Rng4_uid118_i_sdiv_mask_ihc_10_shift_x_b = $unsigned(rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_q[31:4]);

    // rightShiftStage2Idx1_uid119_i_sdiv_mask_ihc_10_shift_x(BITJOIN,118)@14
    assign rightShiftStage2Idx1_uid119_i_sdiv_mask_ihc_10_shift_x_q = {seMsb_to4_uid117_b, rightShiftStage2Idx1Rng4_uid118_i_sdiv_mask_ihc_10_shift_x_b};

    // seMsb_to2_uid112(BITSELECT,111)@14
    assign seMsb_to2_uid112_in = $unsigned({{1{xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b[0]}}, xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b});
    assign seMsb_to2_uid112_b = $unsigned(seMsb_to2_uid112_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid113_i_sdiv_mask_ihc_10_shift_x(BITSELECT,112)@14
    assign rightShiftStage1Idx1Rng2_uid113_i_sdiv_mask_ihc_10_shift_x_b = $unsigned(rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid114_i_sdiv_mask_ihc_10_shift_x(BITJOIN,113)@14
    assign rightShiftStage1Idx1_uid114_i_sdiv_mask_ihc_10_shift_x_q = {seMsb_to2_uid112_b, rightShiftStage1Idx1Rng2_uid113_i_sdiv_mask_ihc_10_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid108_i_sdiv_mask_ihc_10_shift_x(BITSELECT,107)@14
    assign rightShiftStage0Idx1Rng1_uid108_i_sdiv_mask_ihc_10_shift_x_b = $unsigned(redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q[31:1]);

    // rightShiftStage0Idx1_uid109_i_sdiv_mask_ihc_10_shift_x(BITJOIN,108)@14
    assign rightShiftStage0Idx1_uid109_i_sdiv_mask_ihc_10_shift_x_q = {xMSB_uid106_i_sdiv_mask_ihc_10_shift_x_b, rightShiftStage0Idx1Rng1_uid108_i_sdiv_mask_ihc_10_shift_x_b};

    // rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x(MUX,110)@14
    assign rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_s or redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q or rightShiftStage0Idx1_uid109_i_sdiv_mask_ihc_10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_s)
            1'b0 : rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_q = redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q;
            1'b1 : rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage0Idx1_uid109_i_sdiv_mask_ihc_10_shift_x_q;
            default : rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x(MUX,115)@14
    assign rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_s or rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_q or rightShiftStage1Idx1_uid114_i_sdiv_mask_ihc_10_shift_x_q)
    begin
        unique case (rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_s)
            1'b0 : rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage0_uid111_i_sdiv_mask_ihc_10_shift_x_q;
            1'b1 : rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage1Idx1_uid114_i_sdiv_mask_ihc_10_shift_x_q;
            default : rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x(MUX,120)@14
    assign rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_s or rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_q or rightShiftStage2Idx1_uid119_i_sdiv_mask_ihc_10_shift_x_q)
    begin
        unique case (rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_s)
            1'b0 : rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage1_uid116_i_sdiv_mask_ihc_10_shift_x_q;
            1'b1 : rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage2Idx1_uid119_i_sdiv_mask_ihc_10_shift_x_q;
            default : rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x(MUX,125)@14
    assign rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_s or rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_q or rightShiftStage3Idx1_uid124_i_sdiv_mask_ihc_10_shift_x_q)
    begin
        unique case (rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_s)
            1'b0 : rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage2_uid121_i_sdiv_mask_ihc_10_shift_x_q;
            1'b1 : rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage3Idx1_uid124_i_sdiv_mask_ihc_10_shift_x_q;
            default : rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x(MUX,130)@14
    assign rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_s or rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_q or rightShiftStage4Idx1_uid129_i_sdiv_mask_ihc_10_shift_x_q)
    begin
        unique case (rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_s)
            1'b0 : rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage3_uid126_i_sdiv_mask_ihc_10_shift_x_q;
            1'b1 : rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_q = rightShiftStage4Idx1_uid129_i_sdiv_mask_ihc_10_shift_x_q;
            default : rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_q = 32'b0;
        endcase
    end

    // i_sdiv_and_ihc_118(LOGICAL,28)@14
    assign i_sdiv_and_ihc_118_q = rightShiftStage4_uid131_i_sdiv_mask_ihc_10_shift_x_q & c_i32_326_q;

    // i_sdiv_and_ihc_118_vt_select_1(BITSELECT,31)@14
    assign i_sdiv_and_ihc_118_vt_select_1_b = i_sdiv_and_ihc_118_q[1:0];

    // i_sdiv_and_ihc_118_vt_join(BITJOIN,30)@14
    assign i_sdiv_and_ihc_118_vt_join_q = {i_sdiv_and_ihc_118_vt_const_31_q, i_sdiv_and_ihc_118_vt_select_1_b};

    // i_sdiv_add_ihc_119(ADD,27)@14
    assign i_sdiv_add_ihc_119_a = {1'b0, i_sdiv_and_ihc_118_vt_join_q};
    assign i_sdiv_add_ihc_119_b = {1'b0, redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_q};
    assign i_sdiv_add_ihc_119_o = $unsigned(i_sdiv_add_ihc_119_a) + $unsigned(i_sdiv_add_ihc_119_b);
    assign i_sdiv_add_ihc_119_q = i_sdiv_add_ihc_119_o[32:0];

    // bgTrunc_i_sdiv_add_ihc_119_sel_x(BITSELECT,65)@14
    assign bgTrunc_i_sdiv_add_ihc_119_sel_x_b = i_sdiv_add_ihc_119_q[31:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x(MUX,138)@14
    assign rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_s or bgTrunc_i_sdiv_add_ihc_119_sel_x_b or rightShiftStage0Idx1_uid137_i_sdiv_sh_ihc_10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_s)
            1'b0 : rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_q = bgTrunc_i_sdiv_add_ihc_119_sel_x_b;
            1'b1 : rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_q = rightShiftStage0Idx1_uid137_i_sdiv_sh_ihc_10_shift_x_q;
            default : rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_q = 32'b0;
        endcase
    end

    // i_iowr_bl_s3_unnamed_ihc_16_ihc_121(BLACKBOX,20)@14
    // in in_i_stall@20000000
    // out out_iowr_bl_s3_o_fifodata@20000000
    // out out_iowr_bl_s3_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s3_unnamed_ihc_16_ihc_10 thei_iowr_bl_s3_unnamed_ihc_16_ihc_121 (
        .in_i_data(rightShiftStage0_uid139_i_sdiv_sh_ihc_10_shift_x_q),
        .in_i_stall(SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_121_backStall),
        .in_i_valid(SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_V0),
        .in_iowr_bl_s3_i_fifoready(in_iowr_bl_s3_i_fifoready),
        .out_iowr_bl_s3_o_fifodata(i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_iowr_bl_s3_o_fifodata),
        .out_iowr_bl_s3_o_fifovalid(i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_iowr_bl_s3_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_o_stall),
        .out_o_valid(i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0(STALLENABLE,247)
    // Valid signal propagation
    assign SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_V0 = SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_s_tv_0 = i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_o_stall & SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backEN = ~ (SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_v_s_0 = SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backEN & SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backStall = ~ (SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_R_v_0 & SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0(STALLENABLE,248)
    // Valid signal propagation
    assign SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_V0 = SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_s_tv_0 = SE_redist1_bgTrunc_i_reduction_ihc_1_3_ihc_116_sel_x_b_1_0_backStall & SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backEN = ~ (SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_v_s_0 = SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backEN & SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backStall = ~ (SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_R_v_0 <= SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_R_v_0 & SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_R_v_0 <= SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0(STALLREG,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid <= SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backStall & (SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid | SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_i_valid);

            if (SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_data0 <= bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_i_valid = SE_i_reduction_ihc_1_2_ihc_115_V0;
    // Stall signal propagation
    assign SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backStall = SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid | ~ (SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_V = SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid : SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_i_valid;

    assign SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_D0 = SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_r_data0 : bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b;

    // SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1(STALLENABLE,251)
    // Valid signal propagation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_V0 = SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_s_tv_0 = SE_i_reduction_ihc_1_2_ihc_115_backStall & SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backEN = ~ (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_v_s_0 = SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backEN & SR_SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_V;
    // Backward Stall generation
    assign SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backStall = ~ (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_backEN == 1'b0)
            begin
                SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_R_v_0 <= SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_R_v_0 & SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_s_tv_0;
            end
            else
            begin
                SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_R_v_0 <= SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_v_s_0;
            end

        end
    end

    // SE_i_reduction_ihc_1_2_ihc_115(STALLENABLE,200)
    // Valid signal propagation
    assign SE_i_reduction_ihc_1_2_ihc_115_V0 = SE_i_reduction_ihc_1_2_ihc_115_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_ihc_1_2_ihc_115_backStall = SR_SE_redist2_bgTrunc_i_reduction_ihc_1_2_ihc_115_sel_x_b_1_0_backStall | ~ (SE_i_reduction_ihc_1_2_ihc_115_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_ihc_1_2_ihc_115_and0 = SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_V0;
    assign SE_i_reduction_ihc_1_2_ihc_115_wireValid = SE_redist4_bgTrunc_i_reduction_ihc_1_0_ihc_110_sel_x_b_2_1_V0 & SE_i_reduction_ihc_1_2_ihc_115_and0;

    // SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0(STALLENABLE,249)
    // Valid signal propagation
    assign SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_V0 = SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_s_tv_0 = SE_i_reduction_ihc_1_2_ihc_115_backStall & SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backEN = ~ (SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_v_s_0 = SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backEN & SE_i_reduction_ihc_1_1_ihc_113_V0;
    // Backward Stall generation
    assign SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backStall = ~ (SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_R_v_0 & SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2(STALLENABLE,255)
    // Valid signal propagation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_V0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_s_tv_0 = SE_i_reduction_ihc_1_1_ihc_113_backStall & SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backEN = ~ (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_v_s_0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backEN & SR_SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_V;
    // Backward Stall generation
    assign SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backStall = ~ (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_backEN == 1'b0)
            begin
                SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_R_v_0 <= SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_R_v_0 & SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_R_v_0 <= SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_v_s_0;
            end

        end
    end

    // SE_i_reduction_ihc_1_1_ihc_113(STALLENABLE,199)
    // Valid signal propagation
    assign SE_i_reduction_ihc_1_1_ihc_113_V0 = SE_i_reduction_ihc_1_1_ihc_113_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_ihc_1_1_ihc_113_backStall = SE_redist3_bgTrunc_i_reduction_ihc_1_1_ihc_113_sel_x_b_1_0_backStall | ~ (SE_i_reduction_ihc_1_1_ihc_113_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_ihc_1_1_ihc_113_and0 = SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_2_V0;
    assign SE_i_reduction_ihc_1_1_ihc_113_wireValid = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V1 & SE_i_reduction_ihc_1_1_ihc_113_and0;

    // i_toi1_intcast2_ihc_19_sel_x(BITSELECT,90)@10
    assign i_toi1_intcast2_ihc_19_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18_b[0:0];

    // i_iord_bl_s2_unnamed_ihc_15_ihc_111(BLACKBOX,19)@10
    // in in_i_stall@20000000
    // out out_iord_bl_s2_3_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_3_o_fifoready@20000000
    // out out_o_data@11
    // out out_o_stall@20000000
    // out out_o_valid@11
    MultiToken_i_iord_bl_s2_unnamed_ihc_15_ihc_10 thei_iord_bl_s2_unnamed_ihc_15_ihc_111 (
        .in_i_dependence(i_toi1_intcast2_ihc_19_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V1),
        .in_iord_bl_s2_3_i_fifodata(in_iord_bl_s2_3_i_fifodata),
        .in_iord_bl_s2_3_i_fifovalid(in_iord_bl_s2_3_i_fifovalid),
        .out_iord_bl_s2_3_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_iord_bl_s2_3_o_fifoalmost_full),
        .out_iord_bl_s2_3_o_fifoready(i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_iord_bl_s2_3_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111(STALLENABLE,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg1 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg1;
            // Successor 2
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg2 <= SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed1 = (~ (SE_i_reduction_ihc_1_1_ihc_113_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg1;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed2 = (~ (SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_backStall & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed1;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_toReg2 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_or0 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_or1 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_or0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_consumed2 & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_or1);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_backStall = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V1 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg1);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V2 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_wireValid = i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_o_valid;

    // SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0(STALLENABLE,246)
    // Valid signal propagation
    assign SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_V0 = SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_stall_out & SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backEN = ~ (SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_v_s_0 = SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V2;
    // Backward Stall generation
    assign SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backStall = ~ (SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_R_v_0 <= SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_R_v_0 & SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_R_v_0 <= SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114(STALLENABLE,197)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_wireValid = i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_valid_out;

    // i_toi1_intcast3_ihc_112_sel_x(BITSELECT,91)@11
    assign i_toi1_intcast3_ihc_112_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_111_b[0:0];

    // redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0(REG,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_q <= $unsigned(i_toi1_intcast3_ihc_112_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114(BLACKBOX,22)@12
    // in in_stall_in@20000000
    // out out_data_out@13
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@13
    MultiToken_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_10 thei_llvm_fpga_push_i1_memdep_phi_push3_ihc_114 (
        .in_data_in(redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_feedback_stall_out_3),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_backStall),
        .in_valid_in(SE_redist0_i_toi1_intcast3_ihc_112_sel_x_b_1_0_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BITJOIN,178)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BITSELECT,179)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(BLACKBOX,21)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_10 thei_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b),
        .in_feedback_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_114_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_feedback_stall_out_3),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(STALLENABLE,195)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_backStall = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_valid_out;

    // SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14(STALLENABLE,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed0 = (~ (SE_redist6_i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data_3_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed1 = (~ (i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_stall) & SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_backStall & SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_or0 = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_or0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_backStall = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V1 = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(BITJOIN,171)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(BITSELECT,172)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_q[0:0]);

    // i_iord_bl_s2_unnamed_ihc_12_ihc_14(BLACKBOX,16)@7
    // in in_i_stall@20000000
    // out out_iord_bl_s2_0_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_0_o_fifoready@20000000
    // out out_o_data@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    MultiToken_i_iord_bl_s2_unnamed_ihc_12_ihc_10 thei_iord_bl_s2_unnamed_ihc_12_ihc_14 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_V0),
        .in_iord_bl_s2_0_i_fifodata(in_iord_bl_s2_0_i_fifodata),
        .in_iord_bl_s2_0_i_fifovalid(in_iord_bl_s2_0_i_fifovalid),
        .out_iord_bl_s2_0_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoalmost_full),
        .out_iord_bl_s2_0_o_fifoready(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,15)
    assign out_iord_bl_s2_0_o_fifoready = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoready;
    assign out_iord_bl_s2_0_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoalmost_full;

    // pipeline_valid_out_sync(GPOUT,55)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,59)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,67)
    assign out_iord_bl_s2_1_o_fifoready = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoready;
    assign out_iord_bl_s2_1_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,68)@11
    assign out_valid_out = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_111_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,70)
    assign out_iord_bl_s2_2_o_fifoready = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoready;
    assign out_iord_bl_s2_2_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoalmost_full;

    // dupName_2_ext_sig_sync_out_x(GPOUT,72)
    assign out_iord_bl_s2_3_o_fifoready = i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_iord_bl_s2_3_o_fifoready;
    assign out_iord_bl_s2_3_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_15_ihc_111_out_iord_bl_s2_3_o_fifoalmost_full;

    // dupName_3_ext_sig_sync_out_x(GPOUT,74)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out;

    // dupName_4_ext_sig_sync_out_x(GPOUT,75)
    assign out_iowr_bl_s3_o_fifodata = i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_iowr_bl_s3_o_fifodata;
    assign out_iowr_bl_s3_o_fifovalid = i_iowr_bl_s3_unnamed_ihc_16_ihc_121_out_iowr_bl_s3_o_fifovalid;

endmodule
