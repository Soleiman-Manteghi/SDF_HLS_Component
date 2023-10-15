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

// SystemVerilog created from bb_Pinitialsalways_B1_start_stall_region
// Created for function/kernel Pinitialsalways
// SystemVerilog created on Mon Sep 11 23:16:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module Pinitialsalways_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_Pinitialsalways_i_fifodata,
    input wire [0:0] in_iord_bl_call_Pinitialsalways_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_Pinitialsalways_o_fifoready,
    output wire [0:0] out_iord_bl_call_Pinitialsalways_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_iowr_nb_return_Pinitialsalways_o_fifodata,
    output wire [0:0] out_iowr_nb_return_Pinitialsalways_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] Pinitialsalways_B1_start_merge_reg_out_stall_out;
    wire [0:0] Pinitialsalways_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_iord_bl_call_Pinitialsalways_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_iord_bl_call_Pinitialsalways_o_fifoready;
    wire [0:0] i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_data;
    wire [0:0] i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_stall;
    wire [0:0] i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_valid;
    wire [0:0] i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_iowr_nb_return_Pinitialsalways_o_fifodata;
    wire [0:0] i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_iowr_nb_return_Pinitialsalways_o_fifovalid;
    wire [0:0] i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_o_stall;
    wire [0:0] i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bubble_join_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_q;
    wire [0:0] bubble_select_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_b;
    wire [0:0] SE_out_Pinitialsalways_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_Pinitialsalways_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_Pinitialsalways_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_or0;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_V0;
    wire [0:0] SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_V1;
    wire [0:0] SE_out_i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_wireValid;
    wire [0:0] SE_out_i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,44)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = Pinitialsalways_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // Pinitialsalways_B1_start_merge_reg(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    Pinitialsalways_B1_start_merge_reg thePinitialsalways_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_Pinitialsalways_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(Pinitialsalways_B1_start_merge_reg_out_stall_out),
        .out_valid_out(Pinitialsalways_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_Pinitialsalways_B1_start_merge_reg(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_Pinitialsalways_B1_start_merge_reg_V0 = SE_out_Pinitialsalways_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_Pinitialsalways_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_o_stall | ~ (SE_out_Pinitialsalways_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_Pinitialsalways_B1_start_merge_reg_wireValid = Pinitialsalways_B1_start_merge_reg_out_valid_out;

    // SE_out_i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2(STALLENABLE,43)
    // Backward Stall generation
    assign SE_out_i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_wireValid = i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_o_valid;

    // bubble_join_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1(BITJOIN,33)
    assign bubble_join_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_q = i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_data;

    // bubble_select_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1(BITSELECT,34)
    assign bubble_select_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_b = $unsigned(bubble_join_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_q[0:0]);

    // i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2(BLACKBOX,11)@1
    // in in_i_stall@20000000
    // out out_iowr_nb_return_Pinitialsalways_o_fifodata@20000000
    // out out_iowr_nb_return_Pinitialsalways_o_fifovalid@20000000
    // out out_o_stall@20000000
    Pinitialsalways_i_iowr_nb_return_pinitia0000ys6_pinitialsalways0 thei_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_b),
        .in_i_stall(SE_out_i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_V1),
        .out_iowr_nb_return_Pinitialsalways_o_fifodata(i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_iowr_nb_return_Pinitialsalways_o_fifodata),
        .out_iowr_nb_return_Pinitialsalways_o_fifovalid(i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_iowr_nb_return_Pinitialsalways_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_o_stall),
        .out_o_valid(i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1(STALLENABLE,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg0 <= '0;
            SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg0 <= SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg1 <= SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireValid) | SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg0;
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed1 = (~ (i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_o_stall) & SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireValid) | SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_StallValid = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_backStall & SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireValid;
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_toReg0 = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_StallValid & SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed0;
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_toReg1 = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_StallValid & SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_or0 = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed0;
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireStall = ~ (SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_consumed1 & SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_or0);
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_backStall = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_V0 = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireValid & ~ (SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg0);
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_V1 = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireValid & ~ (SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_wireValid = i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_valid;

    // i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_Pinitialsalways_o_fifoalmost_full@20000000
    // out out_iord_bl_call_Pinitialsalways_o_fifoready@20000000
    // out out_o_stall@20000000
    Pinitialsalways_i_iord_bl_call_pinitials0000ys5_pinitialsalways0 thei_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1 (
        .in_i_stall(SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_V0),
        .in_iord_bl_call_Pinitialsalways_i_fifodata(in_iord_bl_call_Pinitialsalways_i_fifodata),
        .in_iord_bl_call_Pinitialsalways_i_fifovalid(in_iord_bl_call_Pinitialsalways_i_fifovalid),
        .out_iord_bl_call_Pinitialsalways_o_fifoalmost_full(i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_iord_bl_call_Pinitialsalways_o_fifoalmost_full),
        .out_iord_bl_call_Pinitialsalways_o_fifoready(i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_iord_bl_call_Pinitialsalways_o_fifoready),
        .out_o_data(i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_data),
        .out_o_stall(i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_stall),
        .out_o_valid(i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x(STALLENABLE,47)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_backStall = i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x(BLACKBOX,30)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    Pinitialsalways_i_sfc_s_c0_in_wt_entry_p0000er1_pinitialsalways0 thei_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_backStall),
        .in_i_valid(SE_out_Pinitialsalways_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_Pinitialsalways3_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_pinitialsalways1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,21)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_pinitialsalwayss_c0_enter1_pinitialsalways0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,27)
    assign out_iord_bl_call_Pinitialsalways_o_fifoready = i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_iord_bl_call_Pinitialsalways_o_fifoready;
    assign out_iord_bl_call_Pinitialsalways_o_fifoalmost_full = i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_out_iord_bl_call_Pinitialsalways_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,28)@1
    assign out_valid_out = SE_out_i_iord_bl_call_pinitialsalways_unnamed_pinitialsalways5_pinitialsalways1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,29)
    assign out_iowr_nb_return_Pinitialsalways_o_fifodata = i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_iowr_nb_return_Pinitialsalways_o_fifodata;
    assign out_iowr_nb_return_Pinitialsalways_o_fifovalid = i_iowr_nb_return_pinitialsalways_unnamed_pinitialsalways6_pinitialsalways2_out_iowr_nb_return_Pinitialsalways_o_fifovalid;

endmodule
