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
// SystemVerilog created on Sat Sep 16 17:21:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_bb_ihc_B1_stall_region (
    input wire [0:0] in_iowr_bl_s4_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s4_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s4_0_o_fifovalid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s4_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s4_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s4_1_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_iord_bl_s1_i_fifodata,
    input wire [0:0] in_iord_bl_s1_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out,
    input wire [31:0] in_iord_bl_s3_i_fifodata,
    input wire [0:0] in_iord_bl_s3_i_fifovalid,
    output wire [0:0] out_iord_bl_s1_o_fifoready,
    output wire [0:0] out_iord_bl_s1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s3_o_fifoready,
    output wire [0:0] out_iord_bl_s3_o_fifoalmost_full,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_s1_unnamed_ihc2_ihc3_out_iord_bl_s1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s1_unnamed_ihc2_ihc3_out_iord_bl_s1_o_fifoready;
    wire [31:0] i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_data;
    wire [0:0] i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_stall;
    wire [0:0] i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_valid;
    wire [0:0] i_iord_bl_s3_unnamed_ihc3_ihc4_out_iord_bl_s3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s3_unnamed_ihc3_ihc4_out_iord_bl_s3_o_fifoready;
    wire [31:0] i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_data;
    wire [0:0] i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_stall;
    wire [0:0] i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_valid;
    wire [31:0] i_iowr_bl_s4_unnamed_ihc4_ihc6_out_iowr_bl_s4_0_o_fifodata;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc4_ihc6_out_iowr_bl_s4_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_stall;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_valid;
    wire [31:0] i_iowr_bl_s4_unnamed_ihc5_ihc7_out_iowr_bl_s4_1_o_fifodata;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc5_ihc7_out_iowr_bl_s4_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_stall;
    wire [0:0] i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    reg [0:0] redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_q;
    reg [0:0] redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_q;
    wire [31:0] bubble_join_i_iord_bl_s1_unnamed_ihc2_ihc3_q;
    wire [31:0] bubble_select_i_iord_bl_s1_unnamed_ihc2_ihc3_b;
    wire [31:0] bubble_join_i_iord_bl_s3_unnamed_ihc3_ihc4_q;
    wire [31:0] bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_b;
    wire [0:0] bubble_join_i_iowr_bl_s4_unnamed_ihc4_ihc6_q;
    wire [0:0] bubble_select_i_iowr_bl_s4_unnamed_ihc4_ihc6_b;
    wire [0:0] bubble_join_i_iowr_bl_s4_unnamed_ihc5_ihc7_q;
    wire [0:0] bubble_select_i_iowr_bl_s4_unnamed_ihc5_ihc7_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b;
    wire [0:0] bubble_join_ihc_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireValid;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireStall;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_StallValid;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_toReg0;
    reg [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_toReg1;
    reg [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed1;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_or0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_backStall;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_V0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_V1;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireStall;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_StallValid;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_toReg0;
    reg [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed0;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_toReg1;
    reg [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed1;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_or0;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_V0;
    wire [0:0] SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_V1;
    wire [0:0] SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_and0;
    wire [0:0] SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_backStall;
    wire [0:0] SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_V0;
    wire [0:0] SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_backStall;
    wire [0:0] SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_V0;
    wire [0:0] SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_backStall;
    wire [0:0] SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V2;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_V0;
    reg [0:0] SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_V0;
    wire [0:0] SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid;
    wire [0:0] SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_and0;
    wire [0:0] SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall;
    wire [0:0] SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_V0;
    reg [0:0] bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_R_v_0;
    wire [0:0] bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_v_s_0;
    wire [0:0] bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backEN;
    wire [0:0] bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backStall;
    wire [0:0] bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_V0;
    reg [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_R_v_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_i_valid;
    reg [0:0] SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid;
    wire [0:0] SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backStall;
    wire [0:0] SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_V;
    wire [0:0] SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_D0;


    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc8(STALLENABLE,92)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_wireValid = i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_valid_out;

    // bubble_join_i_iowr_bl_s4_unnamed_ihc5_ihc7(BITJOIN,62)
    assign bubble_join_i_iowr_bl_s4_unnamed_ihc5_ihc7_q = i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack;

    // bubble_select_i_iowr_bl_s4_unnamed_ihc5_ihc7(BITSELECT,63)
    assign bubble_select_i_iowr_bl_s4_unnamed_ihc5_ihc7_b = $unsigned(bubble_join_i_iowr_bl_s4_unnamed_ihc5_ihc7_q[0:0]);

    // redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s4_unnamed_ihc5_ihc7_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push3_ihc8(BLACKBOX,12)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    MultiToken_i_llvm_fpga_push_i1_memdep_phi_push3_ihc0 thei_llvm_fpga_push_i1_memdep_phi_push3_ihc8 (
        .in_data_in(redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_feedback_stall_out_3),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_backStall),
        .in_valid_in(SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0(STALLENABLE,99)
    // Valid signal propagation
    assign SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_V0 = SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_stall_out & SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backEN = ~ (SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_v_s_0 = SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_V0;
    // Backward Stall generation
    assign SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backStall = ~ (SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_R_v_0 <= SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_R_v_0 & SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_R_v_0 <= SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_V0 = SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_backStall = SE_redist0_i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_wireValid = i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_valid;

    // bubble_join_i_iowr_bl_s4_unnamed_ihc4_ihc6(BITJOIN,59)
    assign bubble_join_i_iowr_bl_s4_unnamed_ihc4_ihc6_q = i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack;

    // bubble_select_i_iowr_bl_s4_unnamed_ihc4_ihc6(BITSELECT,60)
    assign bubble_select_i_iowr_bl_s4_unnamed_ihc4_ihc6_b = $unsigned(bubble_join_i_iowr_bl_s4_unnamed_ihc4_ihc6_q[0:0]);

    // SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0(STALLREG,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid <= SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backStall & (SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid | SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_i_valid);

            if (SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s4_unnamed_ihc4_ihc6_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backStall = SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid | ~ (SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_V = SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid : SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_i_valid;

    assign SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_D0 = SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s4_unnamed_ihc4_ihc6_b;

    // redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_q <= $unsigned(SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_D0);
        end
    end

    // bubble_join_i_iord_bl_s3_unnamed_ihc3_ihc4(BITJOIN,55)
    assign bubble_join_i_iord_bl_s3_unnamed_ihc3_ihc4_q = i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_data;

    // bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4(BITSELECT,56)
    assign bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_b = $unsigned(bubble_join_i_iord_bl_s3_unnamed_ihc3_ihc4_q[31:0]);

    // i_iowr_bl_s4_unnamed_ihc5_ihc7(BLACKBOX,10)@5
    // in in_i_stall@20000000
    // out out_iowr_bl_s4_1_o_fifodata@20000000
    // out out_iowr_bl_s4_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s4_unnamed_ihc5_ihc0 thei_iowr_bl_s4_unnamed_ihc5_ihc7 (
        .in_i_data(bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_b),
        .in_i_dependence(redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s4_unnamed_ihc5_ihc7_backStall),
        .in_i_valid(SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_V0),
        .in_iowr_bl_s4_1_i_fifoready(in_iowr_bl_s4_1_i_fifoready),
        .out_iowr_bl_s4_1_o_fifodata(i_iowr_bl_s4_unnamed_ihc5_ihc7_out_iowr_bl_s4_1_o_fifodata),
        .out_iowr_bl_s4_1_o_fifovalid(i_iowr_bl_s4_unnamed_ihc5_ihc7_out_iowr_bl_s4_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_ack),
        .out_o_stall(i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_stall),
        .out_o_valid(i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0(STALLENABLE,100)
    // Valid signal propagation
    assign SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_V0 = SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_s_tv_0 = SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall & SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backEN = ~ (SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_v_s_0 = SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backEN & SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backStall = ~ (SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_R_v_0 <= SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_R_v_0 & SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_R_v_0 <= SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4(STALLENABLE,110)
    // Valid signal propagation
    assign SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_V0 = SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall = i_iowr_bl_s4_unnamed_ihc5_ihc7_out_o_stall | ~ (SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_and0 = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_V1;
    assign SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid = SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_V0 & SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_and0;

    // i_iord_bl_s1_unnamed_ihc2_ihc3(BLACKBOX,7)@4
    // in in_i_stall@20000000
    // out out_iord_bl_s1_o_fifoalmost_full@20000000
    // out out_iord_bl_s1_o_fifoready@20000000
    // out out_o_stall@20000000
    MultiToken_i_iord_bl_s1_unnamed_ihc2_ihc0 thei_iord_bl_s1_unnamed_ihc2_ihc3 (
        .in_i_stall(SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_backStall),
        .in_i_valid(bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_V0),
        .in_iord_bl_s1_i_fifodata(in_iord_bl_s1_i_fifodata),
        .in_iord_bl_s1_i_fifovalid(in_iord_bl_s1_i_fifovalid),
        .out_iord_bl_s1_o_fifoalmost_full(i_iord_bl_s1_unnamed_ihc2_ihc3_out_iord_bl_s1_o_fifoalmost_full),
        .out_iord_bl_s1_o_fifoready(i_iord_bl_s1_unnamed_ihc2_ihc3_out_iord_bl_s1_o_fifoready),
        .out_o_data(i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_data),
        .out_o_stall(i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_stall),
        .out_o_valid(i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg(STALLENABLE,149)
    // Valid signal propagation
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_V0 = bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_s_tv_0 = i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_stall & bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_backEN = ~ (bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_v_s_0 = bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_backEN & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_backStall = ~ (bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_R_v_0 & bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,69)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,70)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,93)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_B1_merge_reg_aunroll_x(BLACKBOX,45)@0
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

    // bubble_join_ihc_B1_merge_reg_aunroll_x(BITJOIN,78)
    assign bubble_join_ihc_B1_merge_reg_aunroll_x_q = ihc_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_B1_merge_reg_aunroll_x(BITSELECT,79)
    assign bubble_select_ihc_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_B1_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_ihc_B1_merge_reg_aunroll_x(STALLENABLE,98)
    // Valid signal propagation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_stall | ~ (SE_out_ihc_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_B1_merge_reg_aunroll_x_wireValid = ihc_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BLACKBOX,44)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@3
    // out out_c0_exit_1_tpl@3
    // out out_c0_exit_2_tpl@3
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

    // SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(STALLENABLE,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_1_reg_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1 = (~ (bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_out) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_stall_out) & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_o_valid;

    // bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg(STALLFIFO,150)
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_in = SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V1;
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_backStall;
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2(STALLENABLE,140)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_V0 = SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_backStall = i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_stall | ~ (SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_wireValid = bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_reg_valid_out;

    // i_iord_bl_s3_unnamed_ihc3_ihc4(BLACKBOX,8)@5
    // in in_i_stall@20000000
    // out out_iord_bl_s3_o_fifoalmost_full@20000000
    // out out_iord_bl_s3_o_fifoready@20000000
    // out out_o_stall@20000000
    MultiToken_i_iord_bl_s3_unnamed_ihc3_ihc0 thei_iord_bl_s3_unnamed_ihc3_ihc4 (
        .in_i_stall(SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall),
        .in_i_valid(SE_out_bubble_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_2_V0),
        .in_iord_bl_s3_i_fifodata(in_iord_bl_s3_i_fifodata),
        .in_iord_bl_s3_i_fifovalid(in_iord_bl_s3_i_fifovalid),
        .out_iord_bl_s3_o_fifoalmost_full(i_iord_bl_s3_unnamed_ihc3_ihc4_out_iord_bl_s3_o_fifoalmost_full),
        .out_iord_bl_s3_o_fifoready(i_iord_bl_s3_unnamed_ihc3_ihc4_out_iord_bl_s3_o_fifoready),
        .out_o_data(i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_data),
        .out_o_stall(i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_stall),
        .out_o_valid(i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4(STALLENABLE,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg0 <= '0;
            SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg0 <= SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg1 <= SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_backStall) & SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid) | SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg0;
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed1 = (~ (SE_bubble_select_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall) & SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid) | SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_StallValid = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall & SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid;
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_toReg0 = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_StallValid & SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed0;
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_toReg1 = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_StallValid & SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_or0 = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed0;
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireStall = ~ (SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_consumed1 & SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_or0);
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_backStall = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_V0 = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid & ~ (SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg0);
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_V1 = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid & ~ (SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_wireValid = i_iord_bl_s3_unnamed_ihc3_ihc4_out_o_valid;

    // SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg(STALLREG,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid <= 1'b0;
        end
        else
        begin
            // Valid
            SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid <= bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backStall & (SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid | SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_i_valid);

            if (SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid == 1'b0)
            begin
                // Data(s)
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_i_valid = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_V0;
    // Stall signal propagation
    assign SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backStall = SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid | ~ (SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_i_valid);

    // Valid
    assign SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_V = SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid == 1'b1 ? SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_r_valid : SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_i_valid;


    // bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg(STALLENABLE,147)
    // Valid signal propagation
    assign bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_V0 = bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_backStall & bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backEN = ~ (bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_v_s_0 = bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backEN & SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_V;
    // Backward Stall generation
    assign bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backStall = ~ (bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_R_v_0 <= bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_R_v_0 & bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_R_v_0 <= bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1(STALLENABLE,126)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_and0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_V0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_and1 = bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_wireValid = SE_out_i_iord_bl_s3_unnamed_ihc3_ihc4_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_and1;

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg(STALLENABLE,148)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_backStall & bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITJOIN,73)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x(BITSELECT,74)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5(BLACKBOX,11)@3
    // in in_stall_in@20000000
    // out out_data_out@4
    // out out_feedback_stall_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@4
    MultiToken_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc0 thei_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_b),
        .in_feedback_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc8_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_feedback_stall_out_3),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5(STALLENABLE,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed1 = (~ (SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_valid_out;

    // SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3(STALLENABLE,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg0 <= '0;
            SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg0 <= SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg1 <= SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed0 = (~ (SR_bubble_out_i_iord_bl_s1_unnamed_ihc2_ihc3_1_reg_backStall) & SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireValid) | SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg0;
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed1 = (~ (SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_backStall) & SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireValid) | SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_StallValid = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_backStall & SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireValid;
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_toReg0 = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_StallValid & SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed0;
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_toReg1 = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_StallValid & SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_or0 = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed0;
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireStall = ~ (SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_consumed1 & SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_or0);
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_backStall = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_V0 = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireValid & ~ (SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg0);
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_V1 = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireValid & ~ (SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_wireValid = i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_valid;

    // SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6(STALLENABLE,85)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_V0 = SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_backStall = i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_stall | ~ (SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_and0 = SE_out_i_iord_bl_s1_unnamed_ihc2_ihc3_V1;
    assign SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_V1 & SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_and0;

    // SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_V0 = SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_backStall = SR_SE_redist1_i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_wireValid = i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5(BITJOIN,65)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5(BITSELECT,66)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_q[0:0]);

    // bubble_join_i_iord_bl_s1_unnamed_ihc2_ihc3(BITJOIN,51)
    assign bubble_join_i_iord_bl_s1_unnamed_ihc2_ihc3_q = i_iord_bl_s1_unnamed_ihc2_ihc3_out_o_data;

    // bubble_select_i_iord_bl_s1_unnamed_ihc2_ihc3(BITSELECT,52)
    assign bubble_select_i_iord_bl_s1_unnamed_ihc2_ihc3_b = $unsigned(bubble_join_i_iord_bl_s1_unnamed_ihc2_ihc3_q[31:0]);

    // i_iowr_bl_s4_unnamed_ihc4_ihc6(BLACKBOX,9)@4
    // in in_i_stall@20000000
    // out out_iowr_bl_s4_0_o_fifodata@20000000
    // out out_iowr_bl_s4_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    MultiToken_i_iowr_bl_s4_unnamed_ihc4_ihc0 thei_iowr_bl_s4_unnamed_ihc4_ihc6 (
        .in_i_data(bubble_select_i_iord_bl_s1_unnamed_ihc2_ihc3_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_b),
        .in_i_stall(SE_out_i_iowr_bl_s4_unnamed_ihc4_ihc6_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s4_unnamed_ihc4_ihc6_V0),
        .in_iowr_bl_s4_0_i_fifoready(in_iowr_bl_s4_0_i_fifoready),
        .out_iowr_bl_s4_0_o_fifodata(i_iowr_bl_s4_unnamed_ihc4_ihc6_out_iowr_bl_s4_0_o_fifodata),
        .out_iowr_bl_s4_0_o_fifovalid(i_iowr_bl_s4_unnamed_ihc4_ihc6_out_iowr_bl_s4_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_ack),
        .out_o_stall(i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_stall),
        .out_o_valid(i_iowr_bl_s4_unnamed_ihc4_ihc6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_s4_0_o_fifodata = i_iowr_bl_s4_unnamed_ihc4_ihc6_out_iowr_bl_s4_0_o_fifodata;
    assign out_iowr_bl_s4_0_o_fifovalid = i_iowr_bl_s4_unnamed_ihc4_ihc6_out_iowr_bl_s4_0_o_fifovalid;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,34)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,37)
    assign out_iowr_bl_s4_1_o_fifodata = i_iowr_bl_s4_unnamed_ihc5_ihc7_out_iowr_bl_s4_1_o_fifodata;
    assign out_iowr_bl_s4_1_o_fifovalid = i_iowr_bl_s4_unnamed_ihc5_ihc7_out_iowr_bl_s4_1_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,38)@5
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc5_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,40)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out = i_sfc_s_c0_in_while_body_ihcs_c0_enter1_ihc1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc2_exiting_stall_out;

    // dupName_2_ext_sig_sync_out_x(GPOUT,42)
    assign out_iord_bl_s1_o_fifoready = i_iord_bl_s1_unnamed_ihc2_ihc3_out_iord_bl_s1_o_fifoready;
    assign out_iord_bl_s1_o_fifoalmost_full = i_iord_bl_s1_unnamed_ihc2_ihc3_out_iord_bl_s1_o_fifoalmost_full;

    // dupName_3_ext_sig_sync_out_x(GPOUT,43)
    assign out_iord_bl_s3_o_fifoready = i_iord_bl_s3_unnamed_ihc3_ihc4_out_iord_bl_s3_o_fifoready;
    assign out_iord_bl_s3_o_fifoalmost_full = i_iord_bl_s3_unnamed_ihc3_ihc4_out_iord_bl_s3_o_fifoalmost_full;

endmodule
