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
// Created for function/kernel MultiToken
// SystemVerilog created on Sat Sep 16 17:21:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_bb_ihc_2_B1_stall_region (
    input wire [31:0] in_iord_bl_s0_0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_0_i_fifovalid,
    output wire [0:0] out_iord_bl_s0_0_o_fifoready,
    output wire [0:0] out_iord_bl_s0_0_o_fifoalmost_full,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s1_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_0_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_s2_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_0_o_fifovalid,
    input wire [0:0] in_iowr_bl_s1_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_1_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_1_o_fifovalid,
    input wire [31:0] in_iord_bl_s0_1_i_fifodata,
    input wire [0:0] in_iord_bl_s0_1_i_fifovalid,
    output wire [0:0] out_iord_bl_s0_1_o_fifoready,
    output wire [0:0] out_iord_bl_s0_1_o_fifoalmost_full,
    input wire [0:0] in_iowr_bl_s2_2_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_2_o_fifovalid,
    input wire [0:0] in_iowr_bl_s1_2_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_2_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_2_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_3_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_3_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_3_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_4_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_4_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_4_o_fifovalid,
    input wire [0:0] in_iowr_bl_s1_3_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_3_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_3_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_5_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_5_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_5_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_6_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_6_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_6_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_7_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_7_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_7_o_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_139_q;
    wire [31:0] c_i32_240_q;
    wire [32:0] i_add20_i_i_ihc_213_a;
    wire [32:0] i_add20_i_i_ihc_213_b;
    logic [32:0] i_add20_i_i_ihc_213_o;
    wire [32:0] i_add20_i_i_ihc_213_q;
    wire [32:0] i_add21_i_i_ihc_214_a;
    wire [32:0] i_add21_i_i_ihc_214_b;
    logic [32:0] i_add21_i_i_ihc_214_o;
    wire [32:0] i_add21_i_i_ihc_214_q;
    wire [32:0] i_add23_i_i_ihc_222_a;
    wire [32:0] i_add23_i_i_ihc_222_b;
    logic [32:0] i_add23_i_i_ihc_222_o;
    wire [32:0] i_add23_i_i_ihc_222_q;
    wire [32:0] i_add24_i_i_ihc_223_a;
    wire [32:0] i_add24_i_i_ihc_223_b;
    logic [32:0] i_add24_i_i_ihc_223_o;
    wire [32:0] i_add24_i_i_ihc_223_q;
    wire [0:0] i_iord_bl_s0_or_48_ihc_217_out_iord_bl_s0_1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_or_48_ihc_217_out_iord_bl_s0_1_o_fifoready;
    wire [31:0] i_iord_bl_s0_or_48_ihc_217_out_o_data;
    wire [0:0] i_iord_bl_s0_or_48_ihc_217_out_o_stall;
    wire [0:0] i_iord_bl_s0_or_48_ihc_217_out_o_valid;
    wire [0:0] i_iord_bl_s0_or_78_ihc_29_out_iord_bl_s0_0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_or_78_ihc_29_out_iord_bl_s0_0_o_fifoready;
    wire [31:0] i_iord_bl_s0_or_78_ihc_29_out_o_data;
    wire [0:0] i_iord_bl_s0_or_78_ihc_29_out_o_stall;
    wire [0:0] i_iord_bl_s0_or_78_ihc_29_out_o_valid;
    wire [31:0] i_iowr_bl_s1_or_41_ihc_230_out_iowr_bl_s1_3_o_fifodata;
    wire [0:0] i_iowr_bl_s1_or_41_ihc_230_out_iowr_bl_s1_3_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_or_41_ihc_230_out_o_ack;
    wire [0:0] i_iowr_bl_s1_or_41_ihc_230_out_o_stall;
    wire [0:0] i_iowr_bl_s1_or_41_ihc_230_out_o_valid;
    wire [31:0] i_iowr_bl_s1_or_70_ihc_224_out_iowr_bl_s1_2_o_fifodata;
    wire [0:0] i_iowr_bl_s1_or_70_ihc_224_out_iowr_bl_s1_2_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_or_70_ihc_224_out_o_ack;
    wire [0:0] i_iowr_bl_s1_or_70_ihc_224_out_o_stall;
    wire [0:0] i_iowr_bl_s1_or_70_ihc_224_out_o_valid;
    wire [31:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_iowr_bl_s1_0_o_fifodata;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_iowr_bl_s1_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_stall;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_valid;
    wire [31:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_iowr_bl_s1_1_o_fifodata;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_iowr_bl_s1_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_o_stall;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_27_ihc_234_out_iowr_bl_s2_7_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_234_out_iowr_bl_s2_7_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_234_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_234_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_234_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_34_ihc_233_out_iowr_bl_s2_6_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_34_ihc_233_out_iowr_bl_s2_6_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_34_ihc_233_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_34_ihc_233_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_34_ihc_233_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_55_ihc_231_out_iowr_bl_s2_5_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_55_ihc_231_out_iowr_bl_s2_5_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_55_ihc_231_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_55_ihc_231_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_55_ihc_231_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_62_ihc_229_out_iowr_bl_s2_4_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_62_ihc_229_out_iowr_bl_s2_4_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_62_ihc_229_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_62_ihc_229_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_62_ihc_229_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_iowr_bl_s2_0_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_iowr_bl_s2_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_iowr_bl_s2_1_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_iowr_bl_s2_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_iowr_bl_s2_2_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_iowr_bl_s2_2_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_iowr_bl_s2_3_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_iowr_bl_s2_3_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_valid_out;
    wire [0:0] i_or_add20_i_i65_ihc_218_s;
    reg [31:0] i_or_add20_i_i65_ihc_218_q;
    wire [0:0] i_or_add21_i_i_ihc_219_s;
    reg [31:0] i_or_add21_i_i_ihc_219_q;
    wire [0:0] i_or_add23_i_i36_ihc_227_s;
    reg [31:0] i_or_add23_i_i36_ihc_227_q;
    wire [0:0] i_or_add24_i_i_ihc_228_s;
    reg [31:0] i_or_add24_i_i_ihc_228_q;
    wire [31:0] bgTrunc_i_add20_i_i_ihc_213_sel_x_b;
    wire [31:0] bgTrunc_i_add21_i_i_ihc_214_sel_x_b;
    wire [31:0] bgTrunc_i_add23_i_i_ihc_222_sel_x_b;
    wire [31:0] bgTrunc_i_add24_i_i_ihc_223_sel_x_b;
    wire [0:0] i_or_48_toi1_intcast_ihc_221_sel_x_b;
    wire [0:0] i_or_78_toi1_intcast_ihc_212_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [32:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_q;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_q;
    reg [0:0] redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_q;
    reg [0:0] redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_q;
    reg [0:0] redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_q;
    reg [0:0] redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q;
    reg [0:0] redist5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_1_0_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0_q;
    reg [0:0] redist7_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_3_0_q;
    reg [0:0] redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_0_q;
    reg [0:0] redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_1_q;
    reg [0:0] redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_2_q;
    reg [0:0] redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_3_q;
    reg [0:0] redist9_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_5_0_q;
    reg [0:0] redist10_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_6_0_q;
    reg [0:0] redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    reg [0:0] redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_q;
    reg [0:0] redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_q;
    reg [31:0] redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_q;
    reg [31:0] redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_q;
    reg [31:0] redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_q;
    reg [0:0] redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_q;
    reg [0:0] redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_q;
    reg [0:0] redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_q;
    reg [0:0] redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_q;
    reg [0:0] redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_q;
    reg [0:0] redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_q;
    reg [0:0] redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_q;
    reg [0:0] redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_q;
    reg [0:0] redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_q;
    reg [0:0] redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_q;
    reg [31:0] redist28_i_iord_bl_s0_or_78_ihc_29_out_o_data_1_0_q;
    reg [31:0] redist29_i_iord_bl_s0_or_48_ihc_217_out_o_data_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    reg [32:0] coalesced_delay_1_0_q;
    wire [31:0] bubble_join_i_iord_bl_s0_or_48_ihc_217_q;
    wire [31:0] bubble_select_i_iord_bl_s0_or_48_ihc_217_b;
    wire [31:0] bubble_join_i_iord_bl_s0_or_78_ihc_29_q;
    wire [31:0] bubble_select_i_iord_bl_s0_or_78_ihc_29_b;
    wire [0:0] bubble_join_i_iowr_bl_s1_or_41_ihc_230_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_or_41_ihc_230_b;
    wire [0:0] bubble_join_i_iowr_bl_s1_or_70_ihc_224_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_or_70_ihc_224_b;
    wire [0:0] bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_27_ihc_234_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_27_ihc_234_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_34_ihc_233_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_34_ihc_233_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_55_ihc_231_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_55_ihc_231_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_62_ihc_229_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_62_ihc_229_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c;
    wire [2:0] bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_d;
    wire [0:0] bubble_join_ihc_2_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_2_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_wireStall;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_StallValid;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_toReg0;
    reg [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg0;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_consumed0;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_toReg1;
    reg [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg1;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_consumed1;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_toReg2;
    reg [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg2;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_consumed2;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_and0;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_or0;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_or1;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_backStall;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_V0;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_V1;
    wire [0:0] SE_in_i_iord_bl_s0_or_48_ihc_217_V2;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_wireStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_StallValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_toReg0;
    reg [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_consumed0;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_toReg1;
    reg [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_consumed1;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_or0;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_V0;
    wire [0:0] SE_out_i_iord_bl_s0_or_48_ihc_217_V1;
    wire [0:0] SE_out_i_iord_bl_s0_or_78_ihc_29_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_78_ihc_29_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_78_ihc_29_V0;
    wire [0:0] SE_in_i_iowr_bl_s1_or_41_ihc_230_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_or_41_ihc_230_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_or_41_ihc_230_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_or_41_ihc_230_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_or_41_ihc_230_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_or_70_ihc_224_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_or_70_ihc_224_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_or_70_ihc_224_V0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_and0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_V0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_and0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_27_ihc_234_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_27_ihc_234_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_27_ihc_234_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_or_34_ihc_233_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_or_34_ihc_233_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_34_ihc_233_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_34_ihc_233_and0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_34_ihc_233_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_34_ihc_233_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_55_ihc_231_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_55_ihc_231_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_55_ihc_231_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_62_ihc_229_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_62_ihc_229_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_62_ihc_229_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_backStall;
    wire [0:0] SE_i_or_add21_i_i_ihc_219_wireValid;
    wire [0:0] SE_i_or_add21_i_i_ihc_219_and0;
    wire [0:0] SE_i_or_add21_i_i_ihc_219_and1;
    wire [0:0] SE_i_or_add21_i_i_ihc_219_backStall;
    wire [0:0] SE_i_or_add21_i_i_ihc_219_V0;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_wireValid;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_wireStall;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_StallValid;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_toReg0;
    reg [0:0] SE_i_or_add23_i_i36_ihc_227_fromReg0;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_consumed0;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_toReg1;
    reg [0:0] SE_i_or_add23_i_i36_ihc_227_fromReg1;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_consumed1;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_toReg2;
    reg [0:0] SE_i_or_add23_i_i36_ihc_227_fromReg2;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_consumed2;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_and0;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_or0;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_or1;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_backStall;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_V0;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_V1;
    wire [0:0] SE_i_or_add23_i_i36_ihc_227_V2;
    wire [0:0] SE_i_or_add24_i_i_ihc_228_wireValid;
    wire [0:0] SE_i_or_add24_i_i_ihc_228_and0;
    wire [0:0] SE_i_or_add24_i_i_ihc_228_backStall;
    wire [0:0] SE_i_or_add24_i_i_ihc_228_V0;
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
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_V1;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_V1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V3;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_or0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_or1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V2;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_0;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_or0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V1;
    reg [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0;
    reg [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_or0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_V0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_V1;
    reg [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_0;
    reg [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_1;
    reg [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_2;
    reg [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_3;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_v_s_0;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_0;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_1;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_2;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_3;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or0;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or1;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or2;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backStall;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V0;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V1;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V2;
    wire [0:0] SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V3;
    reg [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    reg [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    wire [0:0] SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1;
    reg [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_R_v_0;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_v_s_0;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backEN;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backStall;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_V0;
    reg [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_0;
    reg [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_1;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_v_s_0;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_1;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backEN;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_or0;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backStall;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V0;
    wire [0:0] SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V1;
    reg [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_or0;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_V0;
    wire [0:0] SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_V1;
    reg [0:0] SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_V0;
    reg [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_or0;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_V0;
    wire [0:0] SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_V1;
    reg [0:0] SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_V0;
    reg [0:0] SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_V0;
    reg [0:0] SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_V0;
    reg [0:0] SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_V0;
    reg [0:0] SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_V0;
    reg [0:0] SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_V0;
    reg [0:0] SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_V0;
    reg [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_R_v_0;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_v_s_0;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_s_tv_0;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backEN;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backStall;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_V0;
    reg [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_R_v_0;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_v_s_0;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_s_tv_0;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backEN;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backStall;
    wire [0:0] SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_V0;
    reg [0:0] SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_V0;
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
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D1;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D2;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data2;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D1;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D2;
    wire [0:0] SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_i_valid;
    reg [0:0] SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid;
    reg [0:0] SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_data0;
    wire [0:0] SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backStall;
    wire [0:0] SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V;
    wire [0:0] SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_D0;
    wire [0:0] SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_D0;
    wire [0:0] SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data0;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data1;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_D1;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_i_valid;
    reg [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid;
    reg [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data0;
    reg [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data1;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backStall;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_D0;
    wire [0:0] SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_D1;
    wire [0:0] SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_i_valid;
    reg [0:0] SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid;
    reg [0:0] SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_data0;
    wire [0:0] SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backStall;
    wire [0:0] SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_V;
    wire [0:0] SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_D0;
    wire [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_i_valid;
    reg [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid;
    wire [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_and0;
    wire [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_and1;
    reg [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data0;
    reg [31:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data1;
    reg [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data2;
    wire [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall;
    wire [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_V;
    wire [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D0;
    wire [31:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D1;
    wire [0:0] SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D2;
    wire [0:0] SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_D0;
    wire [0:0] SR_SE_coalesced_delay_1_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_0_r_valid;
    reg [32:0] SR_SE_coalesced_delay_1_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_0_V;
    wire [32:0] SR_SE_coalesced_delay_1_0_D0;
    wire [0:0] SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_D0;
    wire [0:0] SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_D0;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_i_valid;
    reg [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_and0;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_and1;
    reg [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data0;
    reg [31:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data1;
    reg [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data2;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_V;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D0;
    wire [31:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D1;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D2;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [1:0] SR_SE_coalesced_delay_0_0_D0;


    // bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_220(BITJOIN,245)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_q = i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_220(BITSELECT,246)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_q[0:0]);

    // SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_225(STALLENABLE,303)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_wireValid = i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_o_valid;

    // redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_q <= $unsigned(SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_D0);
        end
    end

    // c_i32_240(CONSTANT,8)
    assign c_i32_240_q = $unsigned(32'b00000000000000000000000000000010);

    // redist7_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_3_0(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_3_0_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D1);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_27_ihc_225(BLACKBOX,30)@14
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_3_o_fifodata@20000000
    // out out_iowr_bl_s2_3_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_27_ihc_20 thei_iowr_bl_s2_unnamed_ihc_27_ihc_225 (
        .in_c1_exe2(redist7_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_3_0_q),
        .in_i_data(c_i32_240_q),
        .in_i_dependence(redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_V0),
        .in_iowr_bl_s2_3_i_fifoready(in_iowr_bl_s2_3_i_fifoready),
        .out_iowr_bl_s2_3_o_fifodata(i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_iowr_bl_s2_3_o_fifodata),
        .out_iowr_bl_s2_3_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_iowr_bl_s2_3_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_215(STALLENABLE,287)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_wireValid = i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_o_valid;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216(STALLENABLE,299)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_backStall = SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid = i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_valid;

    // bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_211(BITJOIN,239)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_q = i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_211(BITSELECT,240)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_q[0:0]);

    // redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0(REG,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_b);
        end
    end

    // redist5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_1_0(REG,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_c);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_25_ihc_216(BLACKBOX,28)@12
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_1_o_fifodata@20000000
    // out out_iowr_bl_s2_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_25_ihc_20 thei_iowr_bl_s2_unnamed_ihc_25_ihc_216 (
        .in_c1_exe2(redist5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_1_0_q),
        .in_i_data(c_i32_240_q),
        .in_i_dependence(redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_V0),
        .in_iowr_bl_s2_1_i_fifoready(in_iowr_bl_s2_1_i_fifoready),
        .out_iowr_bl_s2_1_o_fifodata(i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_iowr_bl_s2_1_o_fifodata),
        .out_iowr_bl_s2_1_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_iowr_bl_s2_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0(STALLENABLE,338)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1 = SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216(STALLENABLE,298)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_backStall = i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_wireValid = SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_and0;

    // SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0(STALLENABLE,361)
    // Valid signal propagation
    assign SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_V0 = SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_backStall & SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backEN = ~ (SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_v_s_0 = SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_V0;
    // Backward Stall generation
    assign SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backStall = ~ (SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_R_v_0 <= SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_R_v_0 & SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_R_v_0 <= SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211(STALLENABLE,297)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_backStall = SE_redist20_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid = i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24(BITJOIN,252)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_q = i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24(BITSELECT,253)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_q[0:0]);

    // i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x(BLACKBOX,131)@9
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c1_exit_0_tpl@11
    // out out_c1_exit_1_tpl@11
    // out out_c1_exit_2_tpl@11
    // out out_c1_exit_3_tpl@11
    MultiToken_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27 thei_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x(BITJOIN,266)
    assign bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_q = {i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x(BITSELECT,267)
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_q[2:2]);

    // i_iowr_bl_s2_unnamed_ihc_23_ihc_211(BLACKBOX,27)@11
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_0_o_fifodata@20000000
    // out out_iowr_bl_s2_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_23_ihc_20 thei_iowr_bl_s2_unnamed_ihc_23_ihc_211 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_c),
        .in_i_data(c_i32_139_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_b),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_V0),
        .in_iowr_bl_s2_0_i_fifoready(in_iowr_bl_s2_0_i_fifoready),
        .out_iowr_bl_s2_0_o_fifodata(i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_iowr_bl_s2_0_o_fifodata),
        .out_iowr_bl_s2_0_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_iowr_bl_s2_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x(STALLENABLE,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed0 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed1 = (~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_wireValid = i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_o_valid;

    // SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211(STALLENABLE,296)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_backStall = i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226(STALLENABLE,315)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_wireValid = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_valid_out;

    // bubble_join_i_iord_bl_s0_or_48_ihc_217(BITJOIN,211)
    assign bubble_join_i_iord_bl_s0_or_48_ihc_217_q = i_iord_bl_s0_or_48_ihc_217_out_o_data;

    // bubble_select_i_iord_bl_s0_or_48_ihc_217(BITSELECT,212)
    assign bubble_select_i_iord_bl_s0_or_48_ihc_217_b = $unsigned(bubble_join_i_iord_bl_s0_or_48_ihc_217_q[31:0]);

    // redist29_i_iord_bl_s0_or_48_ihc_217_out_o_data_1_0(REG,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_iord_bl_s0_or_48_ihc_217_out_o_data_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist29_i_iord_bl_s0_or_48_ihc_217_out_o_data_1_0_q <= $unsigned(bubble_select_i_iord_bl_s0_or_48_ihc_217_b);
        end
    end

    // i_or_48_toi1_intcast_ihc_221_sel_x(BITSELECT,128)@17
    assign i_or_48_toi1_intcast_ihc_221_sel_x_b = redist29_i_iord_bl_s0_or_48_ihc_217_out_o_data_1_0_q[0:0];

    // i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226(BLACKBOX,36)@17
    // in in_stall_in@20000000
    // out out_data_out@18
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@18
    MultiToken_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_20 thei_llvm_fpga_push_i1_memdep_phi_push4_ihc_226 (
        .in_data_in(i_or_48_toi1_intcast_ihc_221_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_feedback_stall_out_4),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_backStall),
        .in_valid_in(SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_V1),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_or_62_ihc_229(BITJOIN,236)
    assign bubble_join_i_iowr_bl_s2_or_62_ihc_229_q = i_iowr_bl_s2_or_62_ihc_229_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_62_ihc_229(BITSELECT,237)
    assign bubble_select_i_iowr_bl_s2_or_62_ihc_229_b = $unsigned(bubble_join_i_iowr_bl_s2_or_62_ihc_229_q[0:0]);

    // bubble_join_i_iowr_bl_s2_or_55_ihc_231(BITJOIN,233)
    assign bubble_join_i_iowr_bl_s2_or_55_ihc_231_q = i_iowr_bl_s2_or_55_ihc_231_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_55_ihc_231(BITSELECT,234)
    assign bubble_select_i_iowr_bl_s2_or_55_ihc_231_b = $unsigned(bubble_join_i_iowr_bl_s2_or_55_ihc_231_q[0:0]);

    // SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0(STALLENABLE,363)
    // Valid signal propagation
    assign SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_V0 = SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_s_tv_0 = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall & SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backEN = ~ (SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_v_s_0 = SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backEN & SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backStall = ~ (SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_R_v_0 <= SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_R_v_0 & SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_R_v_0 <= SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0(STALLREG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid <= SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backStall & (SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid | SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_i_valid);

            if (SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s2_or_55_ihc_231_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s2_or_55_ihc_231_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backStall = SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid | ~ (SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_V = SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid : SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_i_valid;

    assign SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_D0 = SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s2_or_55_ihc_231_b;

    // SE_out_i_iowr_bl_s2_or_55_ihc_231(STALLENABLE,293)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_55_ihc_231_V0 = SE_out_i_iowr_bl_s2_or_55_ihc_231_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_55_ihc_231_backStall = SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_55_ihc_231_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_55_ihc_231_wireValid = i_iowr_bl_s2_or_55_ihc_231_out_o_valid;

    // redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_q <= $unsigned(SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_D0);
        end
    end

    // bubble_join_i_iord_bl_s0_or_78_ihc_29(BITJOIN,215)
    assign bubble_join_i_iord_bl_s0_or_78_ihc_29_q = i_iord_bl_s0_or_78_ihc_29_out_o_data;

    // bubble_select_i_iord_bl_s0_or_78_ihc_29(BITSELECT,216)
    assign bubble_select_i_iord_bl_s0_or_78_ihc_29_b = $unsigned(bubble_join_i_iord_bl_s0_or_78_ihc_29_q[31:0]);

    // redist28_i_iord_bl_s0_or_78_ihc_29_out_o_data_1_0(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_iord_bl_s0_or_78_ihc_29_out_o_data_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist28_i_iord_bl_s0_or_78_ihc_29_out_o_data_1_0_q <= $unsigned(bubble_select_i_iord_bl_s0_or_78_ihc_29_b);
        end
    end

    // i_add21_i_i_ihc_214(ADD,14)@15
    assign i_add21_i_i_ihc_214_a = {1'b0, redist28_i_iord_bl_s0_or_78_ihc_29_out_o_data_1_0_q};
    assign i_add21_i_i_ihc_214_b = {1'b0, c_i32_240_q};
    assign i_add21_i_i_ihc_214_o = $unsigned(i_add21_i_i_ihc_214_a) + $unsigned(i_add21_i_i_ihc_214_b);
    assign i_add21_i_i_ihc_214_q = i_add21_i_i_ihc_214_o[32:0];

    // bgTrunc_i_add21_i_i_ihc_214_sel_x(BITSELECT,97)@15
    assign bgTrunc_i_add21_i_i_ihc_214_sel_x_b = i_add21_i_i_ihc_214_q[31:0];

    // redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0(REG,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add21_i_i_ihc_214_sel_x_b);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_or_add21_i_i_ihc_219(MUX,40)@16
    assign i_or_add21_i_i_ihc_219_s = redist9_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_5_0_q;
    always @(i_or_add21_i_i_ihc_219_s or redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_q or c_i32_240_q)
    begin
        unique case (i_or_add21_i_i_ihc_219_s)
            1'b0 : i_or_add21_i_i_ihc_219_q = redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_q;
            1'b1 : i_or_add21_i_i_ihc_219_q = c_i32_240_q;
            default : i_or_add21_i_i_ihc_219_q = 32'b0;
        endcase
    end

    // i_iowr_bl_s2_or_55_ihc_231(BLACKBOX,25)@16
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_5_o_fifodata@20000000
    // out out_iowr_bl_s2_5_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_55_ihc_20 thei_iowr_bl_s2_or_55_ihc_231 (
        .in_c1_exe1(redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_q),
        .in_i_data(i_or_add21_i_i_ihc_219_q),
        .in_i_dependence(redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_55_ihc_231_backStall),
        .in_i_valid(SE_i_or_add21_i_i_ihc_219_V0),
        .in_iowr_bl_s2_5_i_fifoready(in_iowr_bl_s2_5_i_fifoready),
        .out_iowr_bl_s2_5_o_fifodata(i_iowr_bl_s2_or_55_ihc_231_out_iowr_bl_s2_5_o_fifodata),
        .out_iowr_bl_s2_5_o_fifovalid(i_iowr_bl_s2_or_55_ihc_231_out_iowr_bl_s2_5_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_55_ihc_231_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_55_ihc_231_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_55_ihc_231_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0(STALLENABLE,357)
    // Valid signal propagation
    assign SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_V0 = SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_s_tv_0 = SE_i_or_add21_i_i_ihc_219_backStall & SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backEN = ~ (SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_v_s_0 = SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backEN & SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_V1;
    // Backward Stall generation
    assign SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backStall = ~ (SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_R_v_0 <= SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_R_v_0 & SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_R_v_0 <= SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_or_add21_i_i_ihc_219(STALLENABLE,317)
    // Valid signal propagation
    assign SE_i_or_add21_i_i_ihc_219_V0 = SE_i_or_add21_i_i_ihc_219_wireValid;
    // Backward Stall generation
    assign SE_i_or_add21_i_i_ihc_219_backStall = i_iowr_bl_s2_or_55_ihc_231_out_o_stall | ~ (SE_i_or_add21_i_i_ihc_219_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_or_add21_i_i_ihc_219_and0 = SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_V0;
    assign SE_i_or_add21_i_i_ihc_219_and1 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_V0 & SE_i_or_add21_i_i_ihc_219_and0;
    assign SE_i_or_add21_i_i_ihc_219_wireValid = SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_V0 & SE_i_or_add21_i_i_ihc_219_and1;

    // SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0(STALLENABLE,362)
    // Valid signal propagation
    assign SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_V0 = SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_s_tv_0 = SE_i_or_add21_i_i_ihc_219_backStall & SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backEN = ~ (SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_v_s_0 = SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backEN & SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backStall = ~ (SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_R_v_0 <= SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_R_v_0 & SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_R_v_0 <= SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0(STALLREG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid <= SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backStall & (SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid | SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_i_valid);

            if (SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s2_or_62_ihc_229_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s2_or_62_ihc_229_V0;
    // Stall signal propagation
    assign SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backStall = SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid | ~ (SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_V = SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid : SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_i_valid;

    assign SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_D0 = SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s2_or_62_ihc_229_b;

    // SE_out_i_iowr_bl_s2_or_62_ihc_229(STALLENABLE,295)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_62_ihc_229_V0 = SE_out_i_iowr_bl_s2_or_62_ihc_229_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_62_ihc_229_backStall = SR_SE_redist21_i_iowr_bl_s2_or_62_ihc_229_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_62_ihc_229_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_62_ihc_229_wireValid = i_iowr_bl_s2_or_62_ihc_229_out_o_valid;

    // i_add20_i_i_ihc_213(ADD,13)@14
    assign i_add20_i_i_ihc_213_a = {1'b0, bubble_select_i_iord_bl_s0_or_78_ihc_29_b};
    assign i_add20_i_i_ihc_213_b = {1'b0, c_i32_139_q};
    assign i_add20_i_i_ihc_213_o = $unsigned(i_add20_i_i_ihc_213_a) + $unsigned(i_add20_i_i_ihc_213_b);
    assign i_add20_i_i_ihc_213_q = i_add20_i_i_ihc_213_o[32:0];

    // bgTrunc_i_add20_i_i_ihc_213_sel_x(BITSELECT,96)@14
    assign bgTrunc_i_add20_i_i_ihc_213_sel_x_b = i_add20_i_i_ihc_213_q[31:0];

    // redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0(REG,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add20_i_i_ihc_213_sel_x_b);
        end
    end

    // i_or_add20_i_i65_ihc_218(MUX,39)@15
    assign i_or_add20_i_i65_ihc_218_s = redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_3_q;
    always @(i_or_add20_i_i65_ihc_218_s or redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_q or c_i32_139_q)
    begin
        unique case (i_or_add20_i_i65_ihc_218_s)
            1'b0 : i_or_add20_i_i65_ihc_218_q = redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_q;
            1'b1 : i_or_add20_i_i65_ihc_218_q = c_i32_139_q;
            default : i_or_add20_i_i65_ihc_218_q = 32'b0;
        endcase
    end

    // redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1(REG,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_D0);
        end
    end

    // i_iowr_bl_s2_or_62_ihc_229(BLACKBOX,26)@15
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_4_o_fifodata@20000000
    // out out_iowr_bl_s2_4_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_62_ihc_20 thei_iowr_bl_s2_or_62_ihc_229 (
        .in_c1_exe1(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_q),
        .in_i_data(i_or_add20_i_i65_ihc_218_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_62_ihc_229_backStall),
        .in_i_valid(SE_in_i_iord_bl_s0_or_48_ihc_217_V2),
        .in_iowr_bl_s2_4_i_fifoready(in_iowr_bl_s2_4_i_fifoready),
        .out_iowr_bl_s2_4_o_fifodata(i_iowr_bl_s2_or_62_ihc_229_out_iowr_bl_s2_4_o_fifodata),
        .out_iowr_bl_s2_4_o_fifovalid(i_iowr_bl_s2_or_62_ihc_229_out_iowr_bl_s2_4_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_62_ihc_229_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_62_ihc_229_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_62_ihc_229_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s1_or_70_ihc_224(BITJOIN,221)
    assign bubble_join_i_iowr_bl_s1_or_70_ihc_224_q = i_iowr_bl_s1_or_70_ihc_224_out_o_ack;

    // bubble_select_i_iowr_bl_s1_or_70_ihc_224(BITSELECT,222)
    assign bubble_select_i_iowr_bl_s1_or_70_ihc_224_b = $unsigned(bubble_join_i_iowr_bl_s1_or_70_ihc_224_q[0:0]);

    // SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1(STALLENABLE,367)
    // Valid signal propagation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_V0 = SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_s_tv_0 = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall & SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backEN = ~ (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_v_s_0 = SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backEN & SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_V0;
    // Backward Stall generation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backStall = ~ (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backEN == 1'b0)
            begin
                SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_R_v_0 <= SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_R_v_0 & SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_s_tv_0;
            end
            else
            begin
                SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_R_v_0 <= SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_v_s_0;
            end

        end
    end

    // SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0(STALLENABLE,366)
    // Valid signal propagation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_V0 = SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_s_tv_0 = SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backStall & SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backEN = ~ (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_v_s_0 = SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backEN & SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_V;
    // Backward Stall generation
    assign SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backStall = ~ (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backEN == 1'b0)
            begin
                SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_R_v_0 <= SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_R_v_0 & SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_s_tv_0;
            end
            else
            begin
                SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_R_v_0 <= SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0(STALLREG,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid <= 1'b0;
            SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid <= SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backStall & (SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid | SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_i_valid);

            if (SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s1_or_70_ihc_224_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_i_valid = SE_out_i_iowr_bl_s1_or_70_ihc_224_V0;
    // Stall signal propagation
    assign SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backStall = SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid | ~ (SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_i_valid);

    // Valid
    assign SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_V = SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid == 1'b1 ? SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid : SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_i_valid;

    assign SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_D0 = SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_valid == 1'b1 ? SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_r_data0 : bubble_select_i_iowr_bl_s1_or_70_ihc_224_b;

    // SE_out_i_iowr_bl_s1_or_70_ihc_224(STALLENABLE,283)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_or_70_ihc_224_V0 = SE_out_i_iowr_bl_s1_or_70_ihc_224_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_or_70_ihc_224_backStall = SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backStall | ~ (SE_out_i_iowr_bl_s1_or_70_ihc_224_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_or_70_ihc_224_wireValid = i_iowr_bl_s1_or_70_ihc_224_out_o_valid;

    // i_iowr_bl_s1_or_70_ihc_224(BLACKBOX,20)@15
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_2_o_fifodata@20000000
    // out out_iowr_bl_s1_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s1_or_70_ihc_20 thei_iowr_bl_s1_or_70_ihc_224 (
        .in_c1_exe1(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_q),
        .in_i_data(i_or_add20_i_i65_ihc_218_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_or_70_ihc_224_backStall),
        .in_i_valid(SE_in_i_iord_bl_s0_or_48_ihc_217_V1),
        .in_iowr_bl_s1_2_i_fifoready(in_iowr_bl_s1_2_i_fifoready),
        .out_iowr_bl_s1_2_o_fifodata(i_iowr_bl_s1_or_70_ihc_224_out_iowr_bl_s1_2_o_fifodata),
        .out_iowr_bl_s1_2_o_fifovalid(i_iowr_bl_s1_or_70_ihc_224_out_iowr_bl_s1_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_or_70_ihc_224_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_or_70_ihc_224_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_or_70_ihc_224_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0(STALLENABLE,358)
    // Valid signal propagation
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_V0 = SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_0;
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_V1 = SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_0 = SE_in_i_iord_bl_s0_or_48_ihc_217_backStall & SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_0;
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_1 = SE_redist16_bgTrunc_i_add21_i_i_ihc_214_sel_x_b_1_0_backStall & SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_or0 = SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_0;
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backEN = ~ (SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_1 | SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_v_s_0 = SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backEN & SE_out_i_iord_bl_s0_or_78_ihc_29_V0;
    // Backward Stall generation
    assign SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backStall = ~ (SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_0 <= SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_0 & SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_0 <= SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_1 <= SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_1 & SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_R_v_1 <= SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iord_bl_s0_or_48_ihc_217(STALLENABLE,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg0 <= '0;
            SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg1 <= '0;
            SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg0 <= SE_in_i_iord_bl_s0_or_48_ihc_217_toReg0;
            // Successor 1
            SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg1 <= SE_in_i_iord_bl_s0_or_48_ihc_217_toReg1;
            // Successor 2
            SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg2 <= SE_in_i_iord_bl_s0_or_48_ihc_217_toReg2;
        end
    end
    // Input Stall processing
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_consumed0 = (~ (i_iord_bl_s0_or_48_ihc_217_out_o_stall) & SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid) | SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg0;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_consumed1 = (~ (i_iowr_bl_s1_or_70_ihc_224_out_o_stall) & SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid) | SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg1;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_consumed2 = (~ (i_iowr_bl_s2_or_62_ihc_229_out_o_stall) & SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid) | SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg2;
    // Consuming
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_StallValid = SE_in_i_iord_bl_s0_or_48_ihc_217_backStall & SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_toReg0 = SE_in_i_iord_bl_s0_or_48_ihc_217_StallValid & SE_in_i_iord_bl_s0_or_48_ihc_217_consumed0;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_toReg1 = SE_in_i_iord_bl_s0_or_48_ihc_217_StallValid & SE_in_i_iord_bl_s0_or_48_ihc_217_consumed1;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_toReg2 = SE_in_i_iord_bl_s0_or_48_ihc_217_StallValid & SE_in_i_iord_bl_s0_or_48_ihc_217_consumed2;
    // Backward Stall generation
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_or0 = SE_in_i_iord_bl_s0_or_48_ihc_217_consumed0;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_or1 = SE_in_i_iord_bl_s0_or_48_ihc_217_consumed1 & SE_in_i_iord_bl_s0_or_48_ihc_217_or0;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_wireStall = ~ (SE_in_i_iord_bl_s0_or_48_ihc_217_consumed2 & SE_in_i_iord_bl_s0_or_48_ihc_217_or1);
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_backStall = SE_in_i_iord_bl_s0_or_48_ihc_217_wireStall;
    // Valid signal propagation
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_V0 = SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid & ~ (SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg0);
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_V1 = SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid & ~ (SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg1);
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_V2 = SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid & ~ (SE_in_i_iord_bl_s0_or_48_ihc_217_fromReg2);
    // Computing multiple Valid(s)
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_and0 = SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_V0;
    assign SE_in_i_iord_bl_s0_or_48_ihc_217_wireValid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V0 & SE_in_i_iord_bl_s0_or_48_ihc_217_and0;

    // SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1(STALLENABLE,341)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_1;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_0 = SE_in_i_iord_bl_s0_or_48_ihc_217_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_1 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_1;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_or0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_1 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_v_s_0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN & SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backStall = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_0 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_0 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_1 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_s_tv_1;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_v_s_0;
            end

        end
    end

    // redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_3(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backEN == 1'b1)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_3_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_D1);
        end
    end

    // redist9_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_5_0(REG,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backEN == 1'b1)
        begin
            redist9_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_5_0_q <= $unsigned(redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_3_q);
        end
    end

    // redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0(REG,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_q <= $unsigned(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_q);
        end
    end

    // SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0(STALLENABLE,342)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_V0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_V1 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0 = SE_i_or_add21_i_i_ihc_219_backStall & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1 = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backStall & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_or0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backEN = ~ (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1 | SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backEN & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V1;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backStall = ~ (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 <= 1'b0;
            SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0;
            end

            if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1;
            end
            else
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0;
            end

        end
    end

    // SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0(STALLREG,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid <= 1'b0;
            SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data0 <= 1'bx;
            SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backStall & (SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid | SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_i_valid);

            if (SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data0 <= $unsigned(redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_q);
                SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data1 <= $unsigned(redist9_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_5_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_i_valid = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_V1;
    // Stall signal propagation
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backStall = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid | ~ (SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_i_valid);

    // Valid
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid == 1'b1 ? SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid : SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_i_valid;

    // Data0
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_D0 = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid == 1'b1 ? SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data0 : redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_5_0_q;
    // Data1
    assign SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_D1 = SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_valid == 1'b1 ? SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_r_data1 : redist9_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_5_0_q;

    // redist10_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_6_0(REG,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_6_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN == 1'b1)
        begin
            redist10_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_6_0_q <= $unsigned(SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_D1);
        end
    end

    // i_add24_i_i_ihc_223(ADD,16)@17
    assign i_add24_i_i_ihc_223_a = {1'b0, redist29_i_iord_bl_s0_or_48_ihc_217_out_o_data_1_0_q};
    assign i_add24_i_i_ihc_223_b = {1'b0, c_i32_240_q};
    assign i_add24_i_i_ihc_223_o = $unsigned(i_add24_i_i_ihc_223_a) + $unsigned(i_add24_i_i_ihc_223_b);
    assign i_add24_i_i_ihc_223_q = i_add24_i_i_ihc_223_o[32:0];

    // bgTrunc_i_add24_i_i_ihc_223_sel_x(BITSELECT,99)@17
    assign bgTrunc_i_add24_i_i_ihc_223_sel_x_b = i_add24_i_i_ihc_223_q[31:0];

    // join_for_coalesced_delay_1(BITJOIN,173)
    assign join_for_coalesced_delay_1_q = {redist10_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_6_0_q, bgTrunc_i_add24_i_i_ihc_223_sel_x_b};

    // SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0(STALLENABLE,364)
    // Valid signal propagation
    assign SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_V0 = SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_stall_out & SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backEN = ~ (SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_v_s_0 = SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_or_27_ihc_234_V0;
    // Backward Stall generation
    assign SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backStall = ~ (SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_R_v_0 <= SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_R_v_0 & SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_R_v_0 <= SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s2_or_27_ihc_234(STALLENABLE,289)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_27_ihc_234_V0 = SE_out_i_iowr_bl_s2_or_27_ihc_234_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_27_ihc_234_backStall = SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_27_ihc_234_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_27_ihc_234_wireValid = i_iowr_bl_s2_or_27_ihc_234_out_o_valid;

    // coalesced_delay_1_0(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(SR_SE_coalesced_delay_1_0_D0);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,174)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_0_q[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_0_q[32:32]);

    // i_or_add24_i_i_ihc_228(MUX,42)@18
    assign i_or_add24_i_i_ihc_228_s = sel_for_coalesced_delay_1_c;
    always @(i_or_add24_i_i_ihc_228_s or sel_for_coalesced_delay_1_b or c_i32_240_q)
    begin
        unique case (i_or_add24_i_i_ihc_228_s)
            1'b0 : i_or_add24_i_i_ihc_228_q = sel_for_coalesced_delay_1_b;
            1'b1 : i_or_add24_i_i_ihc_228_q = c_i32_240_q;
            default : i_or_add24_i_i_ihc_228_q = 32'b0;
        endcase
    end

    // SE_in_i_iowr_bl_s2_or_34_ihc_233(STALLENABLE,290)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_or_34_ihc_233_V0 = SE_in_i_iowr_bl_s2_or_34_ihc_233_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall = i_iowr_bl_s2_or_34_ihc_233_out_o_stall | ~ (SE_in_i_iowr_bl_s2_or_34_ihc_233_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_or_34_ihc_233_wireValid = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_V;

    // i_iowr_bl_s2_or_34_ihc_233(BLACKBOX,24)@17
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_6_o_fifodata@20000000
    // out out_iowr_bl_s2_6_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_34_ihc_20 thei_iowr_bl_s2_or_34_ihc_233 (
        .in_c1_exe1(SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D0),
        .in_i_data(SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D1),
        .in_i_dependence(SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D2),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_34_ihc_233_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_or_34_ihc_233_V0),
        .in_iowr_bl_s2_6_i_fifoready(in_iowr_bl_s2_6_i_fifoready),
        .out_iowr_bl_s2_6_o_fifodata(i_iowr_bl_s2_or_34_ihc_233_out_iowr_bl_s2_6_o_fifodata),
        .out_iowr_bl_s2_6_o_fifovalid(i_iowr_bl_s2_or_34_ihc_233_out_iowr_bl_s2_6_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_34_ihc_233_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_34_ihc_233_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_34_ihc_233_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_or_34_ihc_233(BITJOIN,230)
    assign bubble_join_i_iowr_bl_s2_or_34_ihc_233_q = i_iowr_bl_s2_or_34_ihc_233_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_34_ihc_233(BITSELECT,231)
    assign bubble_select_i_iowr_bl_s2_or_34_ihc_233_b = $unsigned(bubble_join_i_iowr_bl_s2_or_34_ihc_233_q[0:0]);

    // redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0(REG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN == 1'b1)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q <= $unsigned(SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_D0);
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,170)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iowr_bl_s2_or_34_ihc_233_b, redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q};

    // SE_out_i_iowr_bl_s2_or_34_ihc_233(STALLENABLE,291)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_34_ihc_233_V0 = SE_out_i_iowr_bl_s2_or_34_ihc_233_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_34_ihc_233_backStall = SR_SE_coalesced_delay_0_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_34_ihc_233_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_34_ihc_233_and0 = i_iowr_bl_s2_or_34_ihc_233_out_o_valid;
    assign SE_out_i_iowr_bl_s2_or_34_ihc_233_wireValid = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V2 & SE_out_i_iowr_bl_s2_or_34_ihc_233_and0;

    // SR_SE_coalesced_delay_0_0(STALLREG,475)
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
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_i_iowr_bl_s2_or_34_ihc_233_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // coalesced_delay_0_0(REG,208)
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

    // sel_for_coalesced_delay_0(BITSELECT,171)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_iowr_bl_s2_or_27_ihc_234(BLACKBOX,23)@18
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_7_o_fifodata@20000000
    // out out_iowr_bl_s2_7_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_or_27_ihc_20 thei_iowr_bl_s2_or_27_ihc_234 (
        .in_c1_exe1(sel_for_coalesced_delay_0_b),
        .in_i_data(i_or_add24_i_i_ihc_228_q),
        .in_i_dependence(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_27_ihc_234_backStall),
        .in_i_valid(SE_i_or_add24_i_i_ihc_228_V0),
        .in_iowr_bl_s2_7_i_fifoready(in_iowr_bl_s2_7_i_fifoready),
        .out_iowr_bl_s2_7_o_fifodata(i_iowr_bl_s2_or_27_ihc_234_out_iowr_bl_s2_7_o_fifodata),
        .out_iowr_bl_s2_7_o_fifovalid(i_iowr_bl_s2_or_27_ihc_234_out_iowr_bl_s2_7_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_27_ihc_234_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_27_ihc_234_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_27_ihc_234_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,371)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_i_or_add24_i_i_ihc_228_backStall & SE_coalesced_delay_0_0_R_v_0;
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

    // SE_i_or_add24_i_i_ihc_228(STALLENABLE,319)
    // Valid signal propagation
    assign SE_i_or_add24_i_i_ihc_228_V0 = SE_i_or_add24_i_i_ihc_228_wireValid;
    // Backward Stall generation
    assign SE_i_or_add24_i_i_ihc_228_backStall = i_iowr_bl_s2_or_27_ihc_234_out_o_stall | ~ (SE_i_or_add24_i_i_ihc_228_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_or_add24_i_i_ihc_228_and0 = SE_coalesced_delay_1_0_V0;
    assign SE_i_or_add24_i_i_ihc_228_wireValid = SE_coalesced_delay_0_0_V0 & SE_i_or_add24_i_i_ihc_228_and0;

    // SE_coalesced_delay_1_0(STALLENABLE,372)
    // Valid signal propagation
    assign SE_coalesced_delay_1_0_V0 = SE_coalesced_delay_1_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_0_s_tv_0 = SE_i_or_add24_i_i_ihc_228_backStall & SE_coalesced_delay_1_0_R_v_0;
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

    // SR_SE_coalesced_delay_1_0(STALLREG,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
    assign SR_SE_coalesced_delay_1_0_i_valid = SE_i_or_add23_i_i36_ihc_227_V2;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_0_backStall = SR_SE_coalesced_delay_1_0_r_valid | ~ (SR_SE_coalesced_delay_1_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_0_V = SR_SE_coalesced_delay_1_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_0_r_valid : SR_SE_coalesced_delay_1_0_i_valid;

    assign SR_SE_coalesced_delay_1_0_D0 = SR_SE_coalesced_delay_1_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_0_r_data0 : join_for_coalesced_delay_1_q;

    // redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_q <= $unsigned(SR_SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_D0);
        end
    end

    // i_add23_i_i_ihc_222(ADD,15)@16
    assign i_add23_i_i_ihc_222_a = {1'b0, bubble_select_i_iord_bl_s0_or_48_ihc_217_b};
    assign i_add23_i_i_ihc_222_b = {1'b0, c_i32_139_q};
    assign i_add23_i_i_ihc_222_o = $unsigned(i_add23_i_i_ihc_222_a) + $unsigned(i_add23_i_i_ihc_222_b);
    assign i_add23_i_i_ihc_222_q = i_add23_i_i_ihc_222_o[32:0];

    // bgTrunc_i_add23_i_i_ihc_222_sel_x(BITSELECT,98)@16
    assign bgTrunc_i_add23_i_i_ihc_222_sel_x_b = i_add23_i_i_ihc_222_q[31:0];

    // redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add23_i_i_ihc_222_sel_x_b);
        end
    end

    // i_or_add23_i_i36_ihc_227(MUX,41)@17
    assign i_or_add23_i_i36_ihc_227_s = redist10_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_6_0_q;
    always @(i_or_add23_i_i36_ihc_227_s or redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_q or c_i32_139_q)
    begin
        unique case (i_or_add23_i_i36_ihc_227_s)
            1'b0 : i_or_add23_i_i36_ihc_227_q = redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_q;
            1'b1 : i_or_add23_i_i36_ihc_227_q = c_i32_139_q;
            default : i_or_add23_i_i36_ihc_227_q = 32'b0;
        endcase
    end

    // SR_SE_in_i_iowr_bl_s2_or_34_ihc_233(STALLREG,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid <= 1'b0;
            SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data0 <= 1'bx;
            SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid <= SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall & (SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid | SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_i_valid);

            if (SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data0 <= $unsigned(redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q);
                SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data1 <= i_or_add23_i_i36_ihc_227_q;
                SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data2 <= $unsigned(redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_and0 = SE_i_or_add23_i_i36_ihc_227_V1;
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_and1 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V1 & SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_and0;
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_i_valid = SE_redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_V0 & SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_and1;
    // Stall signal propagation
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid | ~ (SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_i_valid);

    // Valid
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_V = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid : SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_i_valid;

    // Data0
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D0 = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data0 : redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q;
    // Data1
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D1 = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data1 : i_or_add23_i_i36_ihc_227_q;
    // Data2
    assign SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_D2 = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_r_data2 : redist22_i_iowr_bl_s2_or_55_ihc_231_out_o_ack_1_0_q;

    // redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_backEN == 1'b1)
        begin
            redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_q <= $unsigned(SR_SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_D0);
        end
    end

    // redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_backEN == 1'b1)
        begin
            redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_q <= $unsigned(redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_0_q);
        end
    end

    // bubble_join_i_iowr_bl_s1_or_41_ihc_230(BITJOIN,218)
    assign bubble_join_i_iowr_bl_s1_or_41_ihc_230_q = i_iowr_bl_s1_or_41_ihc_230_out_o_ack;

    // bubble_select_i_iowr_bl_s1_or_41_ihc_230(BITSELECT,219)
    assign bubble_select_i_iowr_bl_s1_or_41_ihc_230_b = $unsigned(bubble_join_i_iowr_bl_s1_or_41_ihc_230_q[0:0]);

    // SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0(STALLENABLE,368)
    // Valid signal propagation
    assign SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_V0 = SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_stall_out & SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backEN = ~ (SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_v_s_0 = SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backEN & SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backStall = ~ (SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_R_v_0 <= SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_R_v_0 & SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_R_v_0 <= SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0(STALLREG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid <= SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backStall & (SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid | SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_i_valid);

            if (SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s1_or_41_ihc_230_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s1_or_41_ihc_230_V0;
    // Stall signal propagation
    assign SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backStall = SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid | ~ (SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_V = SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid : SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_i_valid;

    assign SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_D0 = SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s1_or_41_ihc_230_b;

    // SE_out_i_iowr_bl_s1_or_41_ihc_230(STALLENABLE,281)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_or_41_ihc_230_V0 = SE_out_i_iowr_bl_s1_or_41_ihc_230_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_or_41_ihc_230_backStall = SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s1_or_41_ihc_230_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_or_41_ihc_230_wireValid = i_iowr_bl_s1_or_41_ihc_230_out_o_valid;

    // i_iowr_bl_s1_or_41_ihc_230(BLACKBOX,19)@17
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_3_o_fifodata@20000000
    // out out_iowr_bl_s1_3_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s1_or_41_ihc_20 thei_iowr_bl_s1_or_41_ihc_230 (
        .in_c1_exe1(SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D0),
        .in_i_data(SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D1),
        .in_i_dependence(SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D2),
        .in_i_stall(SE_out_i_iowr_bl_s1_or_41_ihc_230_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_or_41_ihc_230_V0),
        .in_iowr_bl_s1_3_i_fifoready(in_iowr_bl_s1_3_i_fifoready),
        .out_iowr_bl_s1_3_o_fifodata(i_iowr_bl_s1_or_41_ihc_230_out_iowr_bl_s1_3_o_fifodata),
        .out_iowr_bl_s1_3_o_fifovalid(i_iowr_bl_s1_or_41_ihc_230_out_iowr_bl_s1_3_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_or_41_ihc_230_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_or_41_ihc_230_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_or_41_ihc_230_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_iowr_bl_s1_or_41_ihc_230(STALLENABLE,280)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_or_41_ihc_230_V0 = SE_in_i_iowr_bl_s1_or_41_ihc_230_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall = i_iowr_bl_s1_or_41_ihc_230_out_o_stall | ~ (SE_in_i_iowr_bl_s1_or_41_ihc_230_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_or_41_ihc_230_wireValid = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_V;

    // SR_SE_in_i_iowr_bl_s1_or_41_ihc_230(STALLREG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid <= 1'b0;
            SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data0 <= 1'bx;
            SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid <= SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall & (SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid | SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_i_valid);

            if (SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data0 <= $unsigned(redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q);
                SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data1 <= i_or_add23_i_i36_ihc_227_q;
                SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data2 <= $unsigned(redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_and0 = SE_i_or_add23_i_i36_ihc_227_V0;
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_and1 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V0 & SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_and0;
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_i_valid = SE_redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_V0 & SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_and1;
    // Stall signal propagation
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid | ~ (SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_i_valid);

    // Valid
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_V = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid : SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_i_valid;

    // Data0
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D0 = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data0 : redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_q;
    // Data1
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D1 = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data1 : i_or_add23_i_i36_ihc_227_q;
    // Data2
    assign SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_D2 = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_r_data2 : redist26_i_iowr_bl_s1_or_70_ihc_224_out_o_ack_2_1_q;

    // SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0(STALLENABLE,343)
    // Valid signal propagation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V0 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_0;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V1 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_1;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V2 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_2;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V3 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_3;
    // Stall signal propagation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_0 = SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_0;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_1 = SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_1;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_2 = SE_out_i_iowr_bl_s2_or_34_ihc_233_backStall & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_2;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_3 = SE_i_or_add23_i_i36_ihc_227_backStall & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_3;
    // Backward Enable generation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or0 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_0;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or1 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_1 | SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or0;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or2 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_2 | SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or1;
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN = ~ (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_3 | SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_v_s_0 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN & SR_SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V;
    // Backward Stall generation
    assign SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backStall = ~ (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_0 <= 1'b0;
            SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_1 <= 1'b0;
            SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_2 <= 1'b0;
            SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_0 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_0 & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_0 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_v_s_0;
            end

            if (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_1 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_1 & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_1;
            end
            else
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_1 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_v_s_0;
            end

            if (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_2 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_2 & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_2;
            end
            else
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_2 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_v_s_0;
            end

            if (SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_3 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_3 & SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_s_tv_3;
            end
            else
            begin
                SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_R_v_3 <= SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_v_s_0;
            end

        end
    end

    // SE_i_or_add23_i_i36_ihc_227(STALLENABLE,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_add23_i_i36_ihc_227_fromReg0 <= '0;
            SE_i_or_add23_i_i36_ihc_227_fromReg1 <= '0;
            SE_i_or_add23_i_i36_ihc_227_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_or_add23_i_i36_ihc_227_fromReg0 <= SE_i_or_add23_i_i36_ihc_227_toReg0;
            // Successor 1
            SE_i_or_add23_i_i36_ihc_227_fromReg1 <= SE_i_or_add23_i_i36_ihc_227_toReg1;
            // Successor 2
            SE_i_or_add23_i_i36_ihc_227_fromReg2 <= SE_i_or_add23_i_i36_ihc_227_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_or_add23_i_i36_ihc_227_consumed0 = (~ (SR_SE_in_i_iowr_bl_s1_or_41_ihc_230_backStall) & SE_i_or_add23_i_i36_ihc_227_wireValid) | SE_i_or_add23_i_i36_ihc_227_fromReg0;
    assign SE_i_or_add23_i_i36_ihc_227_consumed1 = (~ (SR_SE_in_i_iowr_bl_s2_or_34_ihc_233_backStall) & SE_i_or_add23_i_i36_ihc_227_wireValid) | SE_i_or_add23_i_i36_ihc_227_fromReg1;
    assign SE_i_or_add23_i_i36_ihc_227_consumed2 = (~ (SR_SE_coalesced_delay_1_0_backStall) & SE_i_or_add23_i_i36_ihc_227_wireValid) | SE_i_or_add23_i_i36_ihc_227_fromReg2;
    // Consuming
    assign SE_i_or_add23_i_i36_ihc_227_StallValid = SE_i_or_add23_i_i36_ihc_227_backStall & SE_i_or_add23_i_i36_ihc_227_wireValid;
    assign SE_i_or_add23_i_i36_ihc_227_toReg0 = SE_i_or_add23_i_i36_ihc_227_StallValid & SE_i_or_add23_i_i36_ihc_227_consumed0;
    assign SE_i_or_add23_i_i36_ihc_227_toReg1 = SE_i_or_add23_i_i36_ihc_227_StallValid & SE_i_or_add23_i_i36_ihc_227_consumed1;
    assign SE_i_or_add23_i_i36_ihc_227_toReg2 = SE_i_or_add23_i_i36_ihc_227_StallValid & SE_i_or_add23_i_i36_ihc_227_consumed2;
    // Backward Stall generation
    assign SE_i_or_add23_i_i36_ihc_227_or0 = SE_i_or_add23_i_i36_ihc_227_consumed0;
    assign SE_i_or_add23_i_i36_ihc_227_or1 = SE_i_or_add23_i_i36_ihc_227_consumed1 & SE_i_or_add23_i_i36_ihc_227_or0;
    assign SE_i_or_add23_i_i36_ihc_227_wireStall = ~ (SE_i_or_add23_i_i36_ihc_227_consumed2 & SE_i_or_add23_i_i36_ihc_227_or1);
    assign SE_i_or_add23_i_i36_ihc_227_backStall = SE_i_or_add23_i_i36_ihc_227_wireStall;
    // Valid signal propagation
    assign SE_i_or_add23_i_i36_ihc_227_V0 = SE_i_or_add23_i_i36_ihc_227_wireValid & ~ (SE_i_or_add23_i_i36_ihc_227_fromReg0);
    assign SE_i_or_add23_i_i36_ihc_227_V1 = SE_i_or_add23_i_i36_ihc_227_wireValid & ~ (SE_i_or_add23_i_i36_ihc_227_fromReg1);
    assign SE_i_or_add23_i_i36_ihc_227_V2 = SE_i_or_add23_i_i36_ihc_227_wireValid & ~ (SE_i_or_add23_i_i36_ihc_227_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_or_add23_i_i36_ihc_227_and0 = SE_redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_6_0_V3;
    assign SE_i_or_add23_i_i36_ihc_227_wireValid = SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_V0 & SE_i_or_add23_i_i36_ihc_227_and0;

    // SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0(STALLENABLE,356)
    // Valid signal propagation
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_V0 = SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_0;
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_V1 = SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_0 = SE_i_or_add23_i_i36_ihc_227_backStall & SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_0;
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_stall_out & SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_or0 = SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_0;
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backEN = ~ (SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_1 | SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_v_s_0 = SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backEN & SE_out_i_iord_bl_s0_or_48_ihc_217_V1;
    // Backward Stall generation
    assign SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backStall = ~ (SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_0 <= SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_0 & SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_0 <= SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_1 <= SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_1 & SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_R_v_1 <= SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_or_78_toi1_intcast_ihc_212_sel_x(BITSELECT,129)@15
    assign i_or_78_toi1_intcast_ihc_212_sel_x_b = redist28_i_iord_bl_s0_or_78_ihc_29_out_o_data_1_0_q[0:0];

    // i_iord_bl_s0_or_48_ihc_217(BLACKBOX,17)@15
    // in in_i_stall@20000000
    // out out_iord_bl_s0_1_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_1_o_fifoready@20000000
    // out out_o_data@16
    // out out_o_stall@20000000
    // out out_o_valid@16
    MultiToken_i_iord_bl_s0_or_48_ihc_20 thei_iord_bl_s0_or_48_ihc_217 (
        .in_c1_exe1(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_q),
        .in_i_dependence(i_or_78_toi1_intcast_ihc_212_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s0_or_48_ihc_217_backStall),
        .in_i_valid(SE_in_i_iord_bl_s0_or_48_ihc_217_V0),
        .in_iord_bl_s0_1_i_fifodata(in_iord_bl_s0_1_i_fifodata),
        .in_iord_bl_s0_1_i_fifovalid(in_iord_bl_s0_1_i_fifovalid),
        .out_iord_bl_s0_1_o_fifoalmost_full(i_iord_bl_s0_or_48_ihc_217_out_iord_bl_s0_1_o_fifoalmost_full),
        .out_iord_bl_s0_1_o_fifoready(i_iord_bl_s0_or_48_ihc_217_out_iord_bl_s0_1_o_fifoready),
        .out_o_data(i_iord_bl_s0_or_48_ihc_217_out_o_data),
        .out_o_stall(i_iord_bl_s0_or_48_ihc_217_out_o_stall),
        .out_o_valid(i_iord_bl_s0_or_48_ihc_217_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s0_or_48_ihc_217(STALLENABLE,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg0 <= '0;
            SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg0 <= SE_out_i_iord_bl_s0_or_48_ihc_217_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg1 <= SE_out_i_iord_bl_s0_or_48_ihc_217_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_backStall) & SE_out_i_iord_bl_s0_or_48_ihc_217_wireValid) | SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg0;
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_consumed1 = (~ (SE_redist15_bgTrunc_i_add23_i_i_ihc_222_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s0_or_48_ihc_217_wireValid) | SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_StallValid = SE_out_i_iord_bl_s0_or_48_ihc_217_backStall & SE_out_i_iord_bl_s0_or_48_ihc_217_wireValid;
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_toReg0 = SE_out_i_iord_bl_s0_or_48_ihc_217_StallValid & SE_out_i_iord_bl_s0_or_48_ihc_217_consumed0;
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_toReg1 = SE_out_i_iord_bl_s0_or_48_ihc_217_StallValid & SE_out_i_iord_bl_s0_or_48_ihc_217_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_or0 = SE_out_i_iord_bl_s0_or_48_ihc_217_consumed0;
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_wireStall = ~ (SE_out_i_iord_bl_s0_or_48_ihc_217_consumed1 & SE_out_i_iord_bl_s0_or_48_ihc_217_or0);
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_backStall = SE_out_i_iord_bl_s0_or_48_ihc_217_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_V0 = SE_out_i_iord_bl_s0_or_48_ihc_217_wireValid & ~ (SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg0);
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_V1 = SE_out_i_iord_bl_s0_or_48_ihc_217_wireValid & ~ (SE_out_i_iord_bl_s0_or_48_ihc_217_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_or_48_ihc_217_wireValid = i_iord_bl_s0_or_48_ihc_217_out_o_valid;

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg(STALLFIFO,459)
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1(STALLENABLE,434)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_and0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_and1 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_wireValid = SE_out_i_iord_bl_s0_or_48_ihc_217_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_and1;

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg(STALLFIFO,460)
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24(STALLENABLE,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed1 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_211_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_wireValid = i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235(STALLENABLE,313)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_wireValid = i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_valid_out;

    // bubble_join_i_iowr_bl_s2_or_27_ihc_234(BITJOIN,227)
    assign bubble_join_i_iowr_bl_s2_or_27_ihc_234_q = i_iowr_bl_s2_or_27_ihc_234_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_27_ihc_234(BITSELECT,228)
    assign bubble_select_i_iowr_bl_s2_or_27_ihc_234_b = $unsigned(bubble_join_i_iowr_bl_s2_or_27_ihc_234_q[0:0]);

    // redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0(REG,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_or_27_ihc_234_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235(BLACKBOX,35)@19
    // in in_stall_in@20000000
    // out out_data_out@20
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@20
    MultiToken_i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_20 thei_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235 (
        .in_data_in(redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_feedback_stall_out_6),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_backStall),
        .in_valid_in(SE_redist24_i_iowr_bl_s2_or_27_ihc_234_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_feedback_valid_out_6),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24(BLACKBOX,32)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_20 thei_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24 (
        .in_data_in(GND_q),
        .in_dir(redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_6(i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i1_memdep_phi80_push6_ihc_235_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_backStall),
        .in_valid_in(SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_feedback_stall_out_6),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,259)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,260)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,320)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_2_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_2_B1_merge_reg_aunroll_x(BLACKBOX,132)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    MultiToken_ihc_2_B1_merge_reg theihc_2_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_2_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_2_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_2_B1_merge_reg_aunroll_x(BITJOIN,269)
    assign bubble_join_ihc_2_B1_merge_reg_aunroll_x_q = ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_2_B1_merge_reg_aunroll_x(BITSELECT,270)
    assign bubble_select_ihc_2_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_2_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_2_B1_merge_reg_aunroll_x(STALLENABLE,333)
    // Valid signal propagation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall | ~ (SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid = ihc_2_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BLACKBOX,130)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@9
    // out out_c0_exit_1_tpl@9
    // out out_c0_exit_2_tpl@9
    MultiToken_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21 thei_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x (
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

    // SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(STALLENABLE,329)
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
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0 = (~ (SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1;
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

    // SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0(STALLENABLE,353)
    // Valid signal propagation
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0 = SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1 = SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0 = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backStall & SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_out_stall_out & SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0 = SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN = ~ (SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 | SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0 = SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = ~ (SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 & SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

            if (SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 & SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITJOIN,263)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q = {i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITSELECT,264)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[1:1]);

    // redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b1)
        begin
            redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c);
        end
    end

    // redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0(REG,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backEN == 1'b1)
        begin
            redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_q <= $unsigned(redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q);
        end
    end

    // SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0(STALLENABLE,354)
    // Valid signal propagation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_V0 = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_s_tv_0 = SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backStall & SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backEN = ~ (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_v_s_0 = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backEN & SE_redist12_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    // Backward Stall generation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backStall = ~ (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_R_v_0 <= SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_R_v_0 & SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_R_v_0 <= SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_v_s_0;
            end

        end
    end

    // SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1(STALLREG,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid <= 1'b0;
            SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid <= SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backStall & (SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid | SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_i_valid);

            if (SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_data0 <= $unsigned(redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_i_valid = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backStall = SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid | ~ (SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_i_valid);

    // Valid
    assign SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V = SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid : SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_i_valid;

    assign SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_D0 = SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_r_data0 : redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_0_q;

    // SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1(STALLENABLE,355)
    // Valid signal propagation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V0 = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_0;
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V1 = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_1;
    // Stall signal propagation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_stall_out & SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_0;
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_stall_out & SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_1;
    // Backward Enable generation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_or0 = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_0;
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backEN = ~ (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_1 | SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_v_s_0 = SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backEN & SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V;
    // Backward Stall generation
    assign SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backStall = ~ (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_0 <= 1'b0;
            SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_0 <= SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_0 & SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_0 <= SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_v_s_0;
            end

            if (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_1 <= SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_1 & SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_s_tv_1;
            end
            else
            begin
                SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_R_v_1 <= SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23(STALLENABLE,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed1 = (~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_wireValid = i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232(STALLENABLE,311)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_wireValid = i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_valid_out;

    // redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_q <= $unsigned(SR_SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_D0);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232(BLACKBOX,34)@18
    // in in_stall_in@20000000
    // out out_data_out@19
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@19
    MultiToken_i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_20 thei_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232 (
        .in_data_in(redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_feedback_stall_out_5),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_backStall),
        .in_valid_in(SE_redist27_i_iowr_bl_s1_or_41_ihc_230_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_feedback_valid_out_5),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1(REG,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_backEN == 1'b1)
        begin
            redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_q <= $unsigned(SR_SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_D0);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23(BLACKBOX,31)@12
    // in in_stall_in@20000000
    // out out_data_out@13
    // out out_feedback_stall_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@13
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_20 thei_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23 (
        .in_data_in(GND_q),
        .in_dir(redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i1_memdep_phi79_push5_ihc_232_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_backStall),
        .in_valid_in(SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_feedback_stall_out_5),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23(BITJOIN,248)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_q = i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23(BITSELECT,249)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_q[0:0]);

    // i_iowr_bl_s1_unnamed_ihc_22_ihc_210(BLACKBOX,21)@13
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_0_o_fifodata@20000000
    // out out_iowr_bl_s1_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s1_unnamed_ihc_22_ihc_20 thei_iowr_bl_s1_unnamed_ihc_22_ihc_210 (
        .in_c1_exe2(redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0_q),
        .in_i_data(c_i32_139_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_b),
        .in_i_stall(SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_V0),
        .in_iowr_bl_s1_0_i_fifoready(in_iowr_bl_s1_0_i_fifoready),
        .out_iowr_bl_s1_0_o_fifodata(i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_iowr_bl_s1_0_o_fifodata),
        .out_iowr_bl_s1_0_o_fifovalid(i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_iowr_bl_s1_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_210(BITJOIN,224)
    assign bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_q = i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack;

    // bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_210(BITSELECT,225)
    assign bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_b = $unsigned(bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_q[0:0]);

    // SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210(STALLENABLE,285)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_V0 = SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_backStall = SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid = i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_valid;

    // SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0(STALLREG,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid <= SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backStall & (SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid | SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_i_valid);

            if (SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_V0;
    // Stall signal propagation
    assign SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backStall = SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid | ~ (SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_V = SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid : SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_i_valid;

    assign SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_D0 = SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_b;

    // redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_q <= $unsigned(SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_D0);
        end
    end

    // i_iowr_bl_s1_unnamed_ihc_24_ihc_215(BLACKBOX,22)@14
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_1_o_fifodata@20000000
    // out out_iowr_bl_s1_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s1_unnamed_ihc_24_ihc_20 thei_iowr_bl_s1_unnamed_ihc_24_ihc_215 (
        .in_c1_exe2(redist7_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_3_0_q),
        .in_i_data(c_i32_139_q),
        .in_i_dependence(redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_V0),
        .in_iowr_bl_s1_1_i_fifoready(in_iowr_bl_s1_1_i_fifoready),
        .out_iowr_bl_s1_1_o_fifodata(i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_iowr_bl_s1_1_o_fifodata),
        .out_iowr_bl_s1_1_o_fifovalid(i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_iowr_bl_s1_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0(STALLENABLE,365)
    // Valid signal propagation
    assign SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_V0 = SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_backStall & SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backEN = ~ (SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_v_s_0 = SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backEN & SR_SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backStall = ~ (SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_R_v_0 <= SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_R_v_0 & SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_R_v_0 <= SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215(STALLENABLE,286)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_V0 = SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_backStall = i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_o_stall | ~ (SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_and0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V1;
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_wireValid = SE_redist25_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_and0;

    // redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_2(REG,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b1)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_2_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D2);
        end
    end

    // redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D0);
        end
    end

    // SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1(STALLREG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data0 <= 1'bx;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backStall & (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid | SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_i_valid);

            if (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data0 <= $unsigned(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_q);
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data1 <= $unsigned(redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_i_valid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backStall = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid | ~ (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_V = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid : SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_i_valid;

    // Data0
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_D0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data0 : redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_q;
    // Data1
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_D1 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_r_data1 : redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_2_q;

    // SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0(STALLENABLE,340)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V2 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_1_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1 = SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_215_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2 = SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_or0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_or1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_or0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN & SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backStall = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225(STALLENABLE,302)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_backStall = i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_and0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V2;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_wireValid = SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_and0;

    // SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0(STALLENABLE,359)
    // Valid signal propagation
    assign SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_V0 = SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_27_ihc_225_backStall & SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backEN = ~ (SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_v_s_0 = SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backEN & SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backStall = ~ (SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_R_v_0 <= SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_R_v_0 & SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_R_v_0 <= SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0(STALLREG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid <= SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backStall & (SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid | SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_i_valid);

            if (SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_V0;
    // Stall signal propagation
    assign SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backStall = SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid | ~ (SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_V = SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid : SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_i_valid;

    assign SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_D0 = SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_b;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220(STALLENABLE,301)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_backStall = SR_SE_redist18_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid = i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_valid;

    // bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_216(BITJOIN,242)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_q = i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_216(BITSELECT,243)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_q[0:0]);

    // redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_b);
        end
    end

    // c_i32_139(CONSTANT,7)
    assign c_i32_139_q = $unsigned(32'b00000000000000000000000000000001);

    // redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0(REG,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D1);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_26_ihc_220(BLACKBOX,29)@13
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_2_o_fifodata@20000000
    // out out_iowr_bl_s2_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s2_unnamed_ihc_26_ihc_20 thei_iowr_bl_s2_unnamed_ihc_26_ihc_220 (
        .in_c1_exe2(redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0_q),
        .in_i_data(c_i32_139_q),
        .in_i_dependence(redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_V0),
        .in_iowr_bl_s2_2_i_fifoready(in_iowr_bl_s2_2_i_fifoready),
        .out_iowr_bl_s2_2_o_fifodata(i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_iowr_bl_s2_2_o_fifodata),
        .out_iowr_bl_s2_2_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_iowr_bl_s2_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0(STALLENABLE,360)
    // Valid signal propagation
    assign SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_V0 = SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_backStall & SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backEN = ~ (SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_v_s_0 = SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_V0;
    // Backward Stall generation
    assign SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backStall = ~ (SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_R_v_0 <= SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_R_v_0 & SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_R_v_0 <= SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220(STALLENABLE,300)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_backStall = i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V3;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_wireValid = SE_redist19_i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_and0;

    // SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210(STALLENABLE,284)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_V0 = SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_backStall = i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_o_stall | ~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V2;
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi79_pop5_ihc_23_V1 & SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_and0;

    // redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_1(REG,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b1)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D2);
        end
    end

    // SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0(STALLREG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 <= 1'bx;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 <= 1'bx;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backStall & (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid | SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid);

            if (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_q);
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0_q);
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data2 <= $unsigned(redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V1;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backStall = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid | ~ (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_V = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid : SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid;

    // Data0
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_q;
    // Data1
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D1 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 : redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_2_0_q;
    // Data2
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_D2 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_r_data2 : redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_1_q;

    // redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_0(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b1)
        begin
            redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_d);
        end
    end

    // redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0(REG,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_b);
        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1(STALLREG,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backStall & (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid | SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1 <= $unsigned(redist5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_1_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2 <= $unsigned(redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backStall = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid : SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_i_valid;

    // Data0
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_0_q;
    // Data1
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D1 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data1 : redist5_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_2_tpl_1_0_q;
    // Data2
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D2 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_r_data2 : redist8_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_3_tpl_4_0_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1(STALLENABLE,339)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V2 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V3 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_4_0_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2 = SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_210_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3 = SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_220_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or2 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN & SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_2;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_s_tv_3;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_R_v_3 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25(BLACKBOX,33)@12
    // in in_stall_in@20000000
    // out out_data_out@13
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@13
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_20 thei_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25 (
        .in_data_in(GND_q),
        .in_dir(redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_226_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_backStall),
        .in_valid_in(SE_redist13_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_3_1_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25(STALLENABLE,309)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_backStall = i_iord_bl_s0_or_78_ihc_29_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_wireValid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_and0;

    // SE_out_i_iord_bl_s0_or_78_ihc_29(STALLENABLE,279)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_or_78_ihc_29_V0 = SE_out_i_iord_bl_s0_or_78_ihc_29_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_or_78_ihc_29_backStall = SE_redist17_bgTrunc_i_add20_i_i_ihc_213_sel_x_b_1_0_backStall | ~ (SE_out_i_iord_bl_s0_or_78_ihc_29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_or_78_ihc_29_wireValid = i_iord_bl_s0_or_78_ihc_29_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25(BITJOIN,256)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_q = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25(BITSELECT,257)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_q[0:0]);

    // redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1(REG,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_D0);
        end
    end

    // i_iord_bl_s0_or_78_ihc_29(BLACKBOX,18)@13
    // in in_i_stall@20000000
    // out out_iord_bl_s0_0_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_0_o_fifoready@20000000
    // out out_o_data@14
    // out out_o_stall@20000000
    // out out_o_valid@14
    MultiToken_i_iord_bl_s0_or_78_ihc_20 thei_iord_bl_s0_or_78_ihc_29 (
        .in_c1_exe1(redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_27_aunroll_x_out_c1_exit_1_tpl_2_1_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_b),
        .in_i_stall(SE_out_i_iord_bl_s0_or_78_ihc_29_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_25_V0),
        .in_iord_bl_s0_0_i_fifodata(in_iord_bl_s0_0_i_fifodata),
        .in_iord_bl_s0_0_i_fifovalid(in_iord_bl_s0_0_i_fifovalid),
        .out_iord_bl_s0_0_o_fifoalmost_full(i_iord_bl_s0_or_78_ihc_29_out_iord_bl_s0_0_o_fifoalmost_full),
        .out_iord_bl_s0_0_o_fifoready(i_iord_bl_s0_or_78_ihc_29_out_iord_bl_s0_0_o_fifoready),
        .out_o_data(i_iord_bl_s0_or_78_ihc_29_out_o_data),
        .out_o_stall(i_iord_bl_s0_or_78_ihc_29_out_o_stall),
        .out_o_valid(i_iord_bl_s0_or_78_ihc_29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,12)
    assign out_iord_bl_s0_0_o_fifoready = i_iord_bl_s0_or_78_ihc_29_out_iord_bl_s0_0_o_fifoready;
    assign out_iord_bl_s0_0_o_fifoalmost_full = i_iord_bl_s0_or_78_ihc_29_out_iord_bl_s0_0_o_fifoalmost_full;

    // pipeline_valid_out_sync(GPOUT,90)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,94)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,101)
    assign out_iowr_bl_s1_0_o_fifodata = i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_iowr_bl_s1_0_o_fifodata;
    assign out_iowr_bl_s1_0_o_fifovalid = i_iowr_bl_s1_unnamed_ihc_22_ihc_210_out_iowr_bl_s1_0_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,102)@16
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi80_pop6_ihc_24_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,104)
    assign out_iowr_bl_s2_0_o_fifodata = i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_iowr_bl_s2_0_o_fifodata;
    assign out_iowr_bl_s2_0_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_23_ihc_211_out_iowr_bl_s2_0_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,106)
    assign out_iowr_bl_s1_1_o_fifodata = i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_iowr_bl_s1_1_o_fifodata;
    assign out_iowr_bl_s1_1_o_fifovalid = i_iowr_bl_s1_unnamed_ihc_24_ihc_215_out_iowr_bl_s1_1_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,108)
    assign out_iowr_bl_s2_1_o_fifodata = i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_iowr_bl_s2_1_o_fifodata;
    assign out_iowr_bl_s2_1_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_25_ihc_216_out_iowr_bl_s2_1_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,110)
    assign out_iord_bl_s0_1_o_fifoready = i_iord_bl_s0_or_48_ihc_217_out_iord_bl_s0_1_o_fifoready;
    assign out_iord_bl_s0_1_o_fifoalmost_full = i_iord_bl_s0_or_48_ihc_217_out_iord_bl_s0_1_o_fifoalmost_full;

    // dupName_5_ext_sig_sync_out_x(GPOUT,112)
    assign out_iowr_bl_s2_2_o_fifodata = i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_iowr_bl_s2_2_o_fifodata;
    assign out_iowr_bl_s2_2_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_26_ihc_220_out_iowr_bl_s2_2_o_fifovalid;

    // dupName_6_ext_sig_sync_out_x(GPOUT,114)
    assign out_iowr_bl_s1_2_o_fifodata = i_iowr_bl_s1_or_70_ihc_224_out_iowr_bl_s1_2_o_fifodata;
    assign out_iowr_bl_s1_2_o_fifovalid = i_iowr_bl_s1_or_70_ihc_224_out_iowr_bl_s1_2_o_fifovalid;

    // dupName_7_ext_sig_sync_out_x(GPOUT,116)
    assign out_iowr_bl_s2_3_o_fifodata = i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_iowr_bl_s2_3_o_fifodata;
    assign out_iowr_bl_s2_3_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_27_ihc_225_out_iowr_bl_s2_3_o_fifovalid;

    // dupName_8_ext_sig_sync_out_x(GPOUT,118)
    assign out_iowr_bl_s2_4_o_fifodata = i_iowr_bl_s2_or_62_ihc_229_out_iowr_bl_s2_4_o_fifodata;
    assign out_iowr_bl_s2_4_o_fifovalid = i_iowr_bl_s2_or_62_ihc_229_out_iowr_bl_s2_4_o_fifovalid;

    // dupName_9_ext_sig_sync_out_x(GPOUT,120)
    assign out_iowr_bl_s1_3_o_fifodata = i_iowr_bl_s1_or_41_ihc_230_out_iowr_bl_s1_3_o_fifodata;
    assign out_iowr_bl_s1_3_o_fifovalid = i_iowr_bl_s1_or_41_ihc_230_out_iowr_bl_s1_3_o_fifovalid;

    // dupName_10_ext_sig_sync_out_x(GPOUT,122)
    assign out_iowr_bl_s2_5_o_fifodata = i_iowr_bl_s2_or_55_ihc_231_out_iowr_bl_s2_5_o_fifodata;
    assign out_iowr_bl_s2_5_o_fifovalid = i_iowr_bl_s2_or_55_ihc_231_out_iowr_bl_s2_5_o_fifovalid;

    // dupName_11_ext_sig_sync_out_x(GPOUT,124)
    assign out_iowr_bl_s2_6_o_fifodata = i_iowr_bl_s2_or_34_ihc_233_out_iowr_bl_s2_6_o_fifodata;
    assign out_iowr_bl_s2_6_o_fifovalid = i_iowr_bl_s2_or_34_ihc_233_out_iowr_bl_s2_6_o_fifovalid;

    // dupName_12_ext_sig_sync_out_x(GPOUT,126)
    assign out_iowr_bl_s2_7_o_fifodata = i_iowr_bl_s2_or_27_ihc_234_out_iowr_bl_s2_7_o_fifodata;
    assign out_iowr_bl_s2_7_o_fifovalid = i_iowr_bl_s2_or_27_ihc_234_out_iowr_bl_s2_7_o_fifovalid;

    // dupName_13_ext_sig_sync_out_x(GPOUT,127)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;

endmodule
