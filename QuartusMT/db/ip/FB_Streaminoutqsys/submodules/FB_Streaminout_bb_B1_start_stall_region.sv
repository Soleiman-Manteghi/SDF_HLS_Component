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

// SystemVerilog created from bb_FB_Streaminout_B1_start_stall_region
// Created for function/kernel FB_Streaminout
// SystemVerilog created on Fri Sep  8 10:45:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module FB_Streaminout_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_FB_Streaminout_i_fifodata,
    input wire [0:0] in_iord_bl_call_FB_Streaminout_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_iord_bl_a_i_fifodata,
    input wire [0:0] in_iord_bl_a_i_fifovalid,
    output wire [0:0] out_iord_bl_call_FB_Streaminout_o_fifoready,
    output wire [0:0] out_iord_bl_call_FB_Streaminout_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_b_i_fifoready,
    output wire [0:0] out_iord_bl_a_o_fifoready,
    output wire [0:0] out_iord_bl_a_o_fifoalmost_full,
    input wire [0:0] in_iowr_bl_return_FB_Streaminout_i_fifoready,
    output wire [31:0] out_iowr_bl_b_o_fifodata,
    output wire [0:0] out_iowr_bl_b_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_FB_Streaminout_o_fifodata,
    output wire [0:0] out_iowr_bl_return_FB_Streaminout_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] FB_Streaminout_B1_start_merge_reg_out_stall_out;
    wire [0:0] FB_Streaminout_B1_start_merge_reg_out_valid_out;
    wire [31:0] c_i32_18_q;
    wire [32:0] i_add_fb_streaminout3_a;
    wire [32:0] i_add_fb_streaminout3_b;
    logic [32:0] i_add_fb_streaminout3_o;
    wire [32:0] i_add_fb_streaminout3_q;
    wire [0:0] i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_iord_bl_a_o_fifoalmost_full;
    wire [0:0] i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_iord_bl_a_o_fifoready;
    wire [31:0] i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_data;
    wire [0:0] i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_stall;
    wire [0:0] i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_valid;
    wire [0:0] i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_iord_bl_call_FB_Streaminout_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_iord_bl_call_FB_Streaminout_o_fifoready;
    wire [0:0] i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_data;
    wire [0:0] i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_stall;
    wire [0:0] i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_valid;
    wire [31:0] i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_iowr_bl_b_o_fifodata;
    wire [0:0] i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_iowr_bl_b_o_fifovalid;
    wire [0:0] i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_ack;
    wire [0:0] i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_stall;
    wire [0:0] i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_valid;
    wire [0:0] i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_iowr_bl_return_FB_Streaminout_o_fifodata;
    wire [0:0] i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_iowr_bl_return_FB_Streaminout_o_fifovalid;
    wire [0:0] i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_o_stall;
    wire [0:0] i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_o_valid;
    wire [31:0] bgTrunc_i_add_fb_streaminout3_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_pipeline_valid_out;
    wire [31:0] bubble_join_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_q;
    wire [31:0] bubble_select_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_b;
    wire [0:0] bubble_join_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_q;
    wire [0:0] bubble_select_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_b;
    wire [0:0] bubble_join_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_q;
    wire [0:0] bubble_select_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_b;
    wire [0:0] SE_out_FB_Streaminout_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_FB_Streaminout_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_FB_Streaminout_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireValid;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireStall;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_StallValid;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_toReg0;
    reg [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg0;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed0;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_toReg1;
    reg [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg1;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed1;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_or0;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_backStall;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_V0;
    wire [0:0] SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_V1;
    wire [0:0] SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_V0;
    wire [0:0] SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_wireValid;
    wire [0:0] SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_backStall;
    wire [0:0] SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_V0;
    wire [0:0] SE_out_i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,71)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = FB_Streaminout_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // FB_Streaminout_B1_start_merge_reg(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    FB_Streaminout_B1_start_merge_reg theFB_Streaminout_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_FB_Streaminout_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(FB_Streaminout_B1_start_merge_reg_out_stall_out),
        .out_valid_out(FB_Streaminout_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_FB_Streaminout_B1_start_merge_reg(STALLENABLE,61)
    // Valid signal propagation
    assign SE_out_FB_Streaminout_B1_start_merge_reg_V0 = SE_out_FB_Streaminout_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_FB_Streaminout_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_o_stall | ~ (SE_out_FB_Streaminout_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_FB_Streaminout_B1_start_merge_reg_wireValid = FB_Streaminout_B1_start_merge_reg_out_valid_out;

    // SE_out_i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5(STALLENABLE,70)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_wireValid = i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_o_valid;

    // bubble_join_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4(BITJOIN,56)
    assign bubble_join_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_q = i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_ack;

    // bubble_select_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4(BITSELECT,57)
    assign bubble_select_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_b = $unsigned(bubble_join_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_q[0:0]);

    // i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5(BLACKBOX,16)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_return_FB_Streaminout_o_fifodata@20000000
    // out out_iowr_bl_return_FB_Streaminout_o_fifovalid@20000000
    // out out_o_stall@20000000
    FB_Streaminout_i_iowr_bl_return_fb_strea0000out5_fb_streaminout0 thei_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_b),
        .in_i_stall(SE_out_i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_backStall),
        .in_i_valid(SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_V0),
        .in_iowr_bl_return_FB_Streaminout_i_fifoready(in_iowr_bl_return_FB_Streaminout_i_fifoready),
        .out_iowr_bl_return_FB_Streaminout_o_fifodata(i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_iowr_bl_return_FB_Streaminout_o_fifodata),
        .out_iowr_bl_return_FB_Streaminout_o_fifovalid(i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_iowr_bl_return_FB_Streaminout_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_o_stall),
        .out_o_valid(i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_V0 = SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_backStall = i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_o_stall | ~ (SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_wireValid = i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_valid;

    // c_i32_18(CONSTANT,6)
    assign c_i32_18_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2(BITJOIN,49)
    assign bubble_join_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_q = i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_data;

    // bubble_select_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2(BITSELECT,50)
    assign bubble_select_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_b = $unsigned(bubble_join_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_q[31:0]);

    // i_add_fb_streaminout3(ADD,12)@1
    assign i_add_fb_streaminout3_a = {1'b0, bubble_select_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_b};
    assign i_add_fb_streaminout3_b = {1'b0, c_i32_18_q};
    assign i_add_fb_streaminout3_o = $unsigned(i_add_fb_streaminout3_a) + $unsigned(i_add_fb_streaminout3_b);
    assign i_add_fb_streaminout3_q = i_add_fb_streaminout3_o[32:0];

    // bgTrunc_i_add_fb_streaminout3_sel_x(BITSELECT,36)@1
    assign bgTrunc_i_add_fb_streaminout3_sel_x_b = i_add_fb_streaminout3_q[31:0];

    // i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4(BLACKBOX,15)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_b_o_fifodata@20000000
    // out out_iowr_bl_b_o_fifovalid@20000000
    // out out_o_stall@20000000
    FB_Streaminout_i_iowr_bl_b_unnamed_fb_st0000out4_fb_streaminout0 thei_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4 (
        .in_i_data(bgTrunc_i_add_fb_streaminout3_sel_x_b),
        .in_i_stall(SE_out_i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_backStall),
        .in_i_valid(SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_V1),
        .in_iowr_bl_b_i_fifoready(in_iowr_bl_b_i_fifoready),
        .out_iowr_bl_b_o_fifodata(i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_iowr_bl_b_o_fifodata),
        .out_iowr_bl_b_o_fifovalid(i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_iowr_bl_b_o_fifovalid),
        .out_o_ack(i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_ack),
        .out_o_stall(i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_stall),
        .out_o_valid(i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2(STALLENABLE,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg0 <= '0;
            SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg0 <= SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_toReg0;
            // Successor 1
            SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg1 <= SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireValid) | SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg0;
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed1 = (~ (i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_o_stall) & SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireValid) | SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_StallValid = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_backStall & SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireValid;
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_toReg0 = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_StallValid & SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed0;
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_toReg1 = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_StallValid & SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_or0 = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed0;
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireStall = ~ (SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_consumed1 & SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_or0);
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_backStall = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_V0 = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireValid & ~ (SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg0);
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_V1 = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireValid & ~ (SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_wireValid = i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_valid;

    // bubble_join_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1(BITJOIN,53)
    assign bubble_join_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_q = i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_data;

    // bubble_select_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1(BITSELECT,54)
    assign bubble_select_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_b = $unsigned(bubble_join_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_q[0:0]);

    // i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2(BLACKBOX,13)@1
    // in in_i_stall@20000000
    // out out_iord_bl_a_o_fifoalmost_full@20000000
    // out out_iord_bl_a_o_fifoready@20000000
    // out out_o_stall@20000000
    FB_Streaminout_i_iord_bl_a_unnamed_fb_st0000out3_fb_streaminout0 thei_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2 (
        .in_i_dependence(bubble_select_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_b),
        .in_i_stall(SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_V0),
        .in_iord_bl_a_i_fifodata(in_iord_bl_a_i_fifodata),
        .in_iord_bl_a_i_fifovalid(in_iord_bl_a_i_fifovalid),
        .out_iord_bl_a_o_fifoalmost_full(i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_iord_bl_a_o_fifoalmost_full),
        .out_iord_bl_a_o_fifoready(i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_iord_bl_a_o_fifoready),
        .out_o_data(i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_data),
        .out_o_stall(i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_stall),
        .out_o_valid(i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1(STALLENABLE,66)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_V0 = SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_backStall = i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_o_stall | ~ (SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_wireValid = i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_valid;

    // i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1(BLACKBOX,14)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_FB_Streaminout_o_fifoalmost_full@20000000
    // out out_iord_bl_call_FB_Streaminout_o_fifoready@20000000
    // out out_o_stall@20000000
    FB_Streaminout_i_iord_bl_call_fb_streami0000out2_fb_streaminout0 thei_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1 (
        .in_i_stall(SE_out_i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_V0),
        .in_iord_bl_call_FB_Streaminout_i_fifodata(in_iord_bl_call_FB_Streaminout_i_fifodata),
        .in_iord_bl_call_FB_Streaminout_i_fifovalid(in_iord_bl_call_FB_Streaminout_i_fifovalid),
        .out_iord_bl_call_FB_Streaminout_o_fifoalmost_full(i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_iord_bl_call_FB_Streaminout_o_fifoalmost_full),
        .out_iord_bl_call_FB_Streaminout_o_fifoready(i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_iord_bl_call_FB_Streaminout_o_fifoready),
        .out_o_data(i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_data),
        .out_o_stall(i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_stall),
        .out_o_valid(i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x(STALLENABLE,75)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_backStall = i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x(BLACKBOX,45)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    FB_Streaminout_i_sfc_s_c0_in_wt_entry_fb0000ter1_fb_streaminout0 thei_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_backStall),
        .in_i_valid(SE_out_FB_Streaminout_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_FB_Streaminout0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,11)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fb_streaminout1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_fb_streaminouts_c0_enter1_fb_streaminout0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,34)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,38)
    assign out_iord_bl_call_FB_Streaminout_o_fifoready = i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_iord_bl_call_FB_Streaminout_o_fifoready;
    assign out_iord_bl_call_FB_Streaminout_o_fifoalmost_full = i_iord_bl_call_fb_streaminout_unnamed_fb_streaminout2_fb_streaminout1_out_iord_bl_call_FB_Streaminout_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,39)@1
    assign out_valid_out = SE_out_i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,41)
    assign out_iord_bl_a_o_fifoready = i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_iord_bl_a_o_fifoready;
    assign out_iord_bl_a_o_fifoalmost_full = i_iord_bl_a_unnamed_fb_streaminout3_fb_streaminout2_out_iord_bl_a_o_fifoalmost_full;

    // dupName_2_ext_sig_sync_out_x(GPOUT,43)
    assign out_iowr_bl_b_o_fifodata = i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_iowr_bl_b_o_fifodata;
    assign out_iowr_bl_b_o_fifovalid = i_iowr_bl_b_unnamed_fb_streaminout4_fb_streaminout4_out_iowr_bl_b_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,44)
    assign out_iowr_bl_return_FB_Streaminout_o_fifodata = i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_iowr_bl_return_FB_Streaminout_o_fifodata;
    assign out_iowr_bl_return_FB_Streaminout_o_fifovalid = i_iowr_bl_return_fb_streaminout_unnamed_fb_streaminout5_fb_streaminout5_out_iowr_bl_return_FB_Streaminout_o_fifovalid;

endmodule
