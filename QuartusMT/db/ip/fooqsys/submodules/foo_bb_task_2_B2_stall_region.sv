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

// SystemVerilog created from bb_task_2_B2_stall_region
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_task_2_B2_stall_region (
    input wire [31:0] in_iord_bl_s1_i_fifodata,
    input wire [0:0] in_iord_bl_s1_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s2_i_fifoready,
    output wire [0:0] out_iord_bl_s1_o_fifoready,
    output wire [0:0] out_iord_bl_s1_o_fifoalmost_full,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_iowr_bl_s2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_18_q;
    wire [32:0] i_add_i_task_24_a;
    wire [32:0] i_add_i_task_24_b;
    logic [32:0] i_add_i_task_24_o;
    wire [32:0] i_add_i_task_24_q;
    wire [0:0] i_iord_bl_s1_unnamed_task_23_task_23_out_iord_bl_s1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s1_unnamed_task_23_task_23_out_iord_bl_s1_o_fifoready;
    wire [31:0] i_iord_bl_s1_unnamed_task_23_task_23_out_o_data;
    wire [0:0] i_iord_bl_s1_unnamed_task_23_task_23_out_o_stall;
    wire [0:0] i_iord_bl_s1_unnamed_task_23_task_23_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_task_24_task_25_out_iowr_bl_s2_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_task_24_task_25_out_iowr_bl_s2_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_task_24_task_25_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_task_24_task_25_out_o_valid;
    wire [31:0] bgTrunc_i_add_i_task_24_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_c0_exit7_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_c0_exit7_3_tpl;
    wire [0:0] task_2_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] task_2_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] task_2_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] bubble_join_i_iord_bl_s1_unnamed_task_23_task_23_q;
    wire [31:0] bubble_select_i_iord_bl_s1_unnamed_task_23_task_23_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_c;
    wire [0:0] bubble_join_task_2_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_task_2_B2_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_task_23_task_23_wireValid;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_task_23_task_23_and0;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_task_23_task_23_backStall;
    wire [0:0] SE_out_i_iord_bl_s1_unnamed_task_23_task_23_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_and0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V2;
    wire [0:0] SE_out_task_2_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_task_2_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_task_2_B2_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,40)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,41)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,55)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = task_2_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // task_2_B2_merge_reg_aunroll_x(BLACKBOX,33)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    foo_task_2_B2_merge_reg thetask_2_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_task_2_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(task_2_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(task_2_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(task_2_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_task_2_B2_merge_reg_aunroll_x(BITJOIN,47)
    assign bubble_join_task_2_B2_merge_reg_aunroll_x_q = task_2_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_task_2_B2_merge_reg_aunroll_x(BITSELECT,48)
    assign bubble_select_task_2_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_task_2_B2_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_task_2_B2_merge_reg_aunroll_x(STALLENABLE,61)
    // Valid signal propagation
    assign SE_out_task_2_B2_merge_reg_aunroll_x_V0 = SE_out_task_2_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_task_2_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_o_stall | ~ (SE_out_task_2_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_task_2_B2_merge_reg_aunroll_x_wireValid = task_2_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x(BITJOIN,44)
    assign bubble_join_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_q = {i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_c0_exit7_3_tpl, i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_c0_exit7_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x(BITSELECT,45)
    assign bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_q[1:1]);

    // i_iord_bl_s1_unnamed_task_23_task_23(BLACKBOX,10)@5
    // in in_i_stall@20000000
    // out out_iord_bl_s1_o_fifoalmost_full@20000000
    // out out_iord_bl_s1_o_fifoready@20000000
    // out out_o_stall@20000000
    foo_i_iord_bl_s1_unnamed_task_23_task_20 thei_iord_bl_s1_unnamed_task_23_task_23 (
        .in_c0_exe18(bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_b),
        .in_i_stall(SE_out_i_iord_bl_s1_unnamed_task_23_task_23_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V2),
        .in_iord_bl_s1_i_fifodata(in_iord_bl_s1_i_fifodata),
        .in_iord_bl_s1_i_fifovalid(in_iord_bl_s1_i_fifovalid),
        .out_iord_bl_s1_o_fifoalmost_full(i_iord_bl_s1_unnamed_task_23_task_23_out_iord_bl_s1_o_fifoalmost_full),
        .out_iord_bl_s1_o_fifoready(i_iord_bl_s1_unnamed_task_23_task_23_out_iord_bl_s1_o_fifoready),
        .out_o_data(i_iord_bl_s1_unnamed_task_23_task_23_out_o_data),
        .out_o_stall(i_iord_bl_s1_unnamed_task_23_task_23_out_o_stall),
        .out_o_valid(i_iord_bl_s1_unnamed_task_23_task_23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18(CONSTANT,4)
    assign c_i32_18_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_iord_bl_s1_unnamed_task_23_task_23(BITJOIN,36)
    assign bubble_join_i_iord_bl_s1_unnamed_task_23_task_23_q = i_iord_bl_s1_unnamed_task_23_task_23_out_o_data;

    // bubble_select_i_iord_bl_s1_unnamed_task_23_task_23(BITSELECT,37)
    assign bubble_select_i_iord_bl_s1_unnamed_task_23_task_23_b = $unsigned(bubble_join_i_iord_bl_s1_unnamed_task_23_task_23_q[31:0]);

    // i_add_i_task_24(ADD,9)@5
    assign i_add_i_task_24_a = {1'b0, bubble_select_i_iord_bl_s1_unnamed_task_23_task_23_b};
    assign i_add_i_task_24_b = {1'b0, c_i32_18_q};
    assign i_add_i_task_24_o = $unsigned(i_add_i_task_24_a) + $unsigned(i_add_i_task_24_b);
    assign i_add_i_task_24_q = i_add_i_task_24_o[32:0];

    // bgTrunc_i_add_i_task_24_sel_x(BITSELECT,27)@5
    assign bgTrunc_i_add_i_task_24_sel_x_b = i_add_i_task_24_q[31:0];

    // i_iowr_bl_s2_unnamed_task_24_task_25(BLACKBOX,11)@5
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_o_fifodata@20000000
    // out out_iowr_bl_s2_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_s2_unnamed_task_24_task_20 thei_iowr_bl_s2_unnamed_task_24_task_25 (
        .in_c0_exe18(bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_b),
        .in_i_data(bgTrunc_i_add_i_task_24_sel_x_b),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_backStall),
        .in_i_valid(SE_out_i_iord_bl_s1_unnamed_task_23_task_23_V0),
        .in_iowr_bl_s2_i_fifoready(in_iowr_bl_s2_i_fifoready),
        .out_iowr_bl_s2_o_fifodata(i_iowr_bl_s2_unnamed_task_24_task_25_out_iowr_bl_s2_o_fifodata),
        .out_iowr_bl_s2_o_fifovalid(i_iowr_bl_s2_unnamed_task_24_task_25_out_iowr_bl_s2_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s2_unnamed_task_24_task_25_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_task_24_task_25_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s2_unnamed_task_24_task_25(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_V0 = SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_backStall = in_stall_in | ~ (SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_and0 = i_iowr_bl_s2_unnamed_task_24_task_25_out_o_valid;
    assign SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_wireValid = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V1 & SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_and0;

    // SE_out_i_iord_bl_s1_unnamed_task_23_task_23(STALLENABLE,52)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s1_unnamed_task_23_task_23_V0 = SE_out_i_iord_bl_s1_unnamed_task_23_task_23_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s1_unnamed_task_23_task_23_backStall = i_iowr_bl_s2_unnamed_task_24_task_25_out_o_stall | ~ (SE_out_i_iord_bl_s1_unnamed_task_23_task_23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s1_unnamed_task_23_task_23_and0 = i_iord_bl_s1_unnamed_task_23_task_23_out_o_valid;
    assign SE_out_i_iord_bl_s1_unnamed_task_23_task_23_wireValid = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V0 & SE_out_i_iord_bl_s1_unnamed_task_23_task_23_and0;

    // SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x(STALLENABLE,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed0 = (~ (SE_out_i_iord_bl_s1_unnamed_task_23_task_23_backStall) & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed1 = (~ (SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_backStall) & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed2 = (~ (i_iord_bl_s1_unnamed_task_23_task_23_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x(BLACKBOX,32)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit7_0_tpl@5
    // out out_c0_exit7_1_tpl@5
    // out out_c0_exit7_2_tpl@5
    // out out_c0_exit7_3_tpl@5
    foo_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21 thei_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_backStall),
        .in_i_valid(SE_out_task_2_B2_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_task_2_B2_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out(i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out(i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit7_0_tpl(),
        .out_c0_exit7_1_tpl(i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_c0_exit7_1_tpl),
        .out_c0_exit7_2_tpl(),
        .out_c0_exit7_3_tpl(i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_c0_exit7_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out = i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out = i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,21)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,29)
    assign out_iord_bl_s1_o_fifoready = i_iord_bl_s1_unnamed_task_23_task_23_out_iord_bl_s1_o_fifoready;
    assign out_iord_bl_s1_o_fifoalmost_full = i_iord_bl_s1_unnamed_task_23_task_23_out_iord_bl_s1_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,30)@5
    assign out_c0_exe3 = bubble_select_i_sfc_s_c0_in_for_body_i_task_2s_c0_enter52_task_21_aunroll_x_c;
    assign out_valid_out = SE_out_i_iowr_bl_s2_unnamed_task_24_task_25_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,31)
    assign out_iowr_bl_s2_o_fifodata = i_iowr_bl_s2_unnamed_task_24_task_25_out_iowr_bl_s2_o_fifodata;
    assign out_iowr_bl_s2_o_fifovalid = i_iowr_bl_s2_unnamed_task_24_task_25_out_iowr_bl_s2_o_fifovalid;

endmodule
