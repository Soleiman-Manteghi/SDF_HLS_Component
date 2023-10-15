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

// SystemVerilog created from bb_foo_B1_start_stall_region
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_foo_i_fifodata,
    input wire [0:0] in_iord_bl_call_foo_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_call_task_1_i_fifoready,
    output wire [0:0] out_iord_bl_call_foo_o_fifoready,
    output wire [0:0] out_iord_bl_call_foo_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_call_task_2_i_fifoready,
    output wire [0:0] out_iowr_bl_call_task_1_o_fifodata,
    output wire [0:0] out_iowr_bl_call_task_1_o_fifovalid,
    input wire [0:0] in_iowr_bl_call_task_3_i_fifoready,
    output wire [0:0] out_iowr_bl_call_task_2_o_fifodata,
    output wire [0:0] out_iowr_bl_call_task_2_o_fifovalid,
    input wire [0:0] in_iord_bl_return_task_1_i_fifodata,
    input wire [0:0] in_iord_bl_return_task_1_i_fifovalid,
    output wire [0:0] out_iowr_bl_call_task_3_o_fifodata,
    output wire [0:0] out_iowr_bl_call_task_3_o_fifovalid,
    input wire [0:0] in_iord_bl_return_task_2_i_fifodata,
    input wire [0:0] in_iord_bl_return_task_2_i_fifovalid,
    output wire [0:0] out_iord_bl_return_task_1_o_fifoready,
    output wire [0:0] out_iord_bl_return_task_1_o_fifoalmost_full,
    input wire [0:0] in_iord_bl_return_task_3_i_fifodata,
    input wire [0:0] in_iord_bl_return_task_3_i_fifovalid,
    output wire [0:0] out_iord_bl_return_task_2_o_fifoready,
    output wire [0:0] out_iord_bl_return_task_2_o_fifoalmost_full,
    input wire [0:0] in_iowr_bl_return_foo_i_fifoready,
    output wire [0:0] out_iord_bl_return_task_3_o_fifoready,
    output wire [0:0] out_iord_bl_return_task_3_o_fifoalmost_full,
    output wire [0:0] out_iowr_bl_return_foo_o_fifodata,
    output wire [0:0] out_iowr_bl_return_foo_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] foo_B1_start_merge_reg_out_stall_out;
    wire [0:0] foo_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_out_iord_bl_call_foo_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_out_iord_bl_call_foo_o_fifoready;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_data;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_stall;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_valid;
    wire [0:0] i_iord_bl_return_task_1_unnamed_foo6_foo5_out_iord_bl_return_task_1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_task_1_unnamed_foo6_foo5_out_iord_bl_return_task_1_o_fifoready;
    wire [0:0] i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_data;
    wire [0:0] i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_stall;
    wire [0:0] i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_valid;
    wire [0:0] i_iord_bl_return_task_2_unnamed_foo7_foo6_out_iord_bl_return_task_2_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_task_2_unnamed_foo7_foo6_out_iord_bl_return_task_2_o_fifoready;
    wire [0:0] i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_data;
    wire [0:0] i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_stall;
    wire [0:0] i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_valid;
    wire [0:0] i_iord_bl_return_task_3_unnamed_foo8_foo7_out_iord_bl_return_task_3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_task_3_unnamed_foo8_foo7_out_iord_bl_return_task_3_o_fifoready;
    wire [0:0] i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_data;
    wire [0:0] i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_stall;
    wire [0:0] i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_valid;
    wire [0:0] i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_iowr_bl_call_task_1_o_fifodata;
    wire [0:0] i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_iowr_bl_call_task_1_o_fifovalid;
    wire [0:0] i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_ack;
    wire [0:0] i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_stall;
    wire [0:0] i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_valid;
    wire [0:0] i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_iowr_bl_call_task_2_o_fifodata;
    wire [0:0] i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_iowr_bl_call_task_2_o_fifovalid;
    wire [0:0] i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_ack;
    wire [0:0] i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_stall;
    wire [0:0] i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_valid;
    wire [0:0] i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_iowr_bl_call_task_3_o_fifodata;
    wire [0:0] i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_iowr_bl_call_task_3_o_fifovalid;
    wire [0:0] i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_ack;
    wire [0:0] i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_stall;
    wire [0:0] i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_valid;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo9_foo10_out_iowr_bl_return_foo_o_fifodata;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo9_foo10_out_iowr_bl_return_foo_o_fifovalid;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo9_foo10_out_o_stall;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo9_foo10_out_o_valid;
    wire [0:0] i_or1_foo9_q;
    wire [0:0] i_or_foo8_q;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_q;
    wire [0:0] bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_b;
    wire [0:0] bubble_join_i_iord_bl_return_task_1_unnamed_foo6_foo5_q;
    wire [0:0] bubble_select_i_iord_bl_return_task_1_unnamed_foo6_foo5_b;
    wire [0:0] bubble_join_i_iord_bl_return_task_2_unnamed_foo7_foo6_q;
    wire [0:0] bubble_select_i_iord_bl_return_task_2_unnamed_foo7_foo6_b;
    wire [0:0] bubble_join_i_iord_bl_return_task_3_unnamed_foo8_foo7_q;
    wire [0:0] bubble_select_i_iord_bl_return_task_3_unnamed_foo8_foo7_b;
    wire [0:0] bubble_join_i_iowr_bl_call_task_1_unnamed_foo3_foo2_q;
    wire [0:0] bubble_select_i_iowr_bl_call_task_1_unnamed_foo3_foo2_b;
    wire [0:0] bubble_join_i_iowr_bl_call_task_2_unnamed_foo4_foo3_q;
    wire [0:0] bubble_select_i_iowr_bl_call_task_2_unnamed_foo4_foo3_b;
    wire [0:0] bubble_join_i_iowr_bl_call_task_3_unnamed_foo5_foo4_q;
    wire [0:0] bubble_select_i_iowr_bl_call_task_3_unnamed_foo5_foo4_b;
    wire [0:0] SE_out_foo_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_foo_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_foo_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_or0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_or1;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V1;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V2;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireValid;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireStall;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_StallValid;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_toReg0;
    reg [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg0;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed0;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_toReg1;
    reg [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg1;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed1;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_and0;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_and1;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_or0;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_backStall;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_V0;
    wire [0:0] SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_V1;
    wire [0:0] SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_V0;
    wire [0:0] SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_V0;
    wire [0:0] SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_V0;
    wire [0:0] SE_out_i_iowr_bl_return_foo_unnamed_foo9_foo10_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_foo_unnamed_foo9_foo10_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,111)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = foo_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // foo_B1_start_merge_reg(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    foo_B1_start_merge_reg thefoo_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_foo_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(foo_B1_start_merge_reg_out_stall_out),
        .out_valid_out(foo_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_foo_B1_start_merge_reg(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_foo_B1_start_merge_reg_V0 = SE_out_foo_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_foo_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_stall | ~ (SE_out_foo_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_foo_B1_start_merge_reg_wireValid = foo_B1_start_merge_reg_out_valid_out;

    // SE_out_i_iowr_bl_return_foo_unnamed_foo9_foo10(STALLENABLE,108)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_foo_unnamed_foo9_foo10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_foo_unnamed_foo9_foo10_wireValid = i_iowr_bl_return_foo_unnamed_foo9_foo10_out_o_valid;

    // bubble_join_i_iord_bl_return_task_1_unnamed_foo6_foo5(BITJOIN,69)
    assign bubble_join_i_iord_bl_return_task_1_unnamed_foo6_foo5_q = i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_data;

    // bubble_select_i_iord_bl_return_task_1_unnamed_foo6_foo5(BITSELECT,70)
    assign bubble_select_i_iord_bl_return_task_1_unnamed_foo6_foo5_b = $unsigned(bubble_join_i_iord_bl_return_task_1_unnamed_foo6_foo5_q[0:0]);

    // bubble_join_i_iord_bl_return_task_2_unnamed_foo7_foo6(BITJOIN,73)
    assign bubble_join_i_iord_bl_return_task_2_unnamed_foo7_foo6_q = i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_data;

    // bubble_select_i_iord_bl_return_task_2_unnamed_foo7_foo6(BITSELECT,74)
    assign bubble_select_i_iord_bl_return_task_2_unnamed_foo7_foo6_b = $unsigned(bubble_join_i_iord_bl_return_task_2_unnamed_foo7_foo6_q[0:0]);

    // bubble_join_i_iord_bl_return_task_3_unnamed_foo8_foo7(BITJOIN,77)
    assign bubble_join_i_iord_bl_return_task_3_unnamed_foo8_foo7_q = i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_data;

    // bubble_select_i_iord_bl_return_task_3_unnamed_foo8_foo7(BITSELECT,78)
    assign bubble_select_i_iord_bl_return_task_3_unnamed_foo8_foo7_b = $unsigned(bubble_join_i_iord_bl_return_task_3_unnamed_foo8_foo7_q[0:0]);

    // i_or_foo8(LOGICAL,19)@1
    assign i_or_foo8_q = bubble_select_i_iord_bl_return_task_3_unnamed_foo8_foo7_b | bubble_select_i_iord_bl_return_task_2_unnamed_foo7_foo6_b;

    // i_or1_foo9(LOGICAL,18)@1
    assign i_or1_foo9_q = i_or_foo8_q | bubble_select_i_iord_bl_return_task_1_unnamed_foo6_foo5_b;

    // i_iowr_bl_return_foo_unnamed_foo9_foo10(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_return_foo_o_fifodata@20000000
    // out out_iowr_bl_return_foo_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_return_unnamed_foo9_foo0 thei_iowr_bl_return_foo_unnamed_foo9_foo10 (
        .in_i_data(GND_q),
        .in_i_dependence(i_or1_foo9_q),
        .in_i_stall(SE_out_i_iowr_bl_return_foo_unnamed_foo9_foo10_backStall),
        .in_i_valid(SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_V1),
        .in_iowr_bl_return_foo_i_fifoready(in_iowr_bl_return_foo_i_fifoready),
        .out_iowr_bl_return_foo_o_fifodata(i_iowr_bl_return_foo_unnamed_foo9_foo10_out_iowr_bl_return_foo_o_fifodata),
        .out_iowr_bl_return_foo_o_fifovalid(i_iowr_bl_return_foo_unnamed_foo9_foo10_out_iowr_bl_return_foo_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_foo_unnamed_foo9_foo10_out_o_stall),
        .out_o_valid(i_iowr_bl_return_foo_unnamed_foo9_foo10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2(STALLENABLE,102)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_V0 = SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_backStall = i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_stall | ~ (SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_wireValid = i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_valid;

    // bubble_join_i_iowr_bl_call_task_1_unnamed_foo3_foo2(BITJOIN,81)
    assign bubble_join_i_iowr_bl_call_task_1_unnamed_foo3_foo2_q = i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_ack;

    // bubble_select_i_iowr_bl_call_task_1_unnamed_foo3_foo2(BITSELECT,82)
    assign bubble_select_i_iowr_bl_call_task_1_unnamed_foo3_foo2_b = $unsigned(bubble_join_i_iowr_bl_call_task_1_unnamed_foo3_foo2_q[0:0]);

    // i_iord_bl_return_task_1_unnamed_foo6_foo5(BLACKBOX,11)@1
    // in in_i_stall@20000000
    // out out_iord_bl_return_task_1_o_fifoalmost_full@20000000
    // out out_iord_bl_return_task_1_o_fifoready@20000000
    // out out_o_stall@20000000
    foo_i_iord_bl_return_task_1_unnamed_6_foo0 thei_iord_bl_return_task_1_unnamed_foo6_foo5 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_task_1_unnamed_foo3_foo2_b),
        .in_i_stall(SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_V0),
        .in_iord_bl_return_task_1_i_fifodata(in_iord_bl_return_task_1_i_fifodata),
        .in_iord_bl_return_task_1_i_fifovalid(in_iord_bl_return_task_1_i_fifovalid),
        .out_iord_bl_return_task_1_o_fifoalmost_full(i_iord_bl_return_task_1_unnamed_foo6_foo5_out_iord_bl_return_task_1_o_fifoalmost_full),
        .out_iord_bl_return_task_1_o_fifoready(i_iord_bl_return_task_1_unnamed_foo6_foo5_out_iord_bl_return_task_1_o_fifoready),
        .out_o_data(i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_data),
        .out_o_stall(i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_stall),
        .out_o_valid(i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3(STALLENABLE,104)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_V0 = SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_backStall = i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_stall | ~ (SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_wireValid = i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_valid;

    // bubble_join_i_iowr_bl_call_task_2_unnamed_foo4_foo3(BITJOIN,84)
    assign bubble_join_i_iowr_bl_call_task_2_unnamed_foo4_foo3_q = i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_ack;

    // bubble_select_i_iowr_bl_call_task_2_unnamed_foo4_foo3(BITSELECT,85)
    assign bubble_select_i_iowr_bl_call_task_2_unnamed_foo4_foo3_b = $unsigned(bubble_join_i_iowr_bl_call_task_2_unnamed_foo4_foo3_q[0:0]);

    // i_iord_bl_return_task_2_unnamed_foo7_foo6(BLACKBOX,12)@1
    // in in_i_stall@20000000
    // out out_iord_bl_return_task_2_o_fifoalmost_full@20000000
    // out out_iord_bl_return_task_2_o_fifoready@20000000
    // out out_o_stall@20000000
    foo_i_iord_bl_return_task_2_unnamed_7_foo0 thei_iord_bl_return_task_2_unnamed_foo7_foo6 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_task_2_unnamed_foo4_foo3_b),
        .in_i_stall(SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_V0),
        .in_iord_bl_return_task_2_i_fifodata(in_iord_bl_return_task_2_i_fifodata),
        .in_iord_bl_return_task_2_i_fifovalid(in_iord_bl_return_task_2_i_fifovalid),
        .out_iord_bl_return_task_2_o_fifoalmost_full(i_iord_bl_return_task_2_unnamed_foo7_foo6_out_iord_bl_return_task_2_o_fifoalmost_full),
        .out_iord_bl_return_task_2_o_fifoready(i_iord_bl_return_task_2_unnamed_foo7_foo6_out_iord_bl_return_task_2_o_fifoready),
        .out_o_data(i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_data),
        .out_o_stall(i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_stall),
        .out_o_valid(i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7(STALLENABLE,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg0 <= '0;
            SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg0 <= SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_toReg0;
            // Successor 1
            SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg1 <= SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireValid) | SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg0;
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed1 = (~ (i_iowr_bl_return_foo_unnamed_foo9_foo10_out_o_stall) & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireValid) | SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_StallValid = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_backStall & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireValid;
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_toReg0 = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_StallValid & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed0;
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_toReg1 = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_StallValid & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_or0 = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed0;
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireStall = ~ (SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_consumed1 & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_or0);
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_backStall = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_V0 = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireValid & ~ (SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg0);
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_V1 = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireValid & ~ (SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_and0 = i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_valid;
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_and1 = i_iord_bl_return_task_2_unnamed_foo7_foo6_out_o_valid & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_and0;
    assign SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_wireValid = i_iord_bl_return_task_1_unnamed_foo6_foo5_out_o_valid & SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_and1;

    // bubble_join_i_iowr_bl_call_task_3_unnamed_foo5_foo4(BITJOIN,87)
    assign bubble_join_i_iowr_bl_call_task_3_unnamed_foo5_foo4_q = i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_ack;

    // bubble_select_i_iowr_bl_call_task_3_unnamed_foo5_foo4(BITSELECT,88)
    assign bubble_select_i_iowr_bl_call_task_3_unnamed_foo5_foo4_b = $unsigned(bubble_join_i_iowr_bl_call_task_3_unnamed_foo5_foo4_q[0:0]);

    // i_iord_bl_return_task_3_unnamed_foo8_foo7(BLACKBOX,13)@1
    // in in_i_stall@20000000
    // out out_iord_bl_return_task_3_o_fifoalmost_full@20000000
    // out out_iord_bl_return_task_3_o_fifoready@20000000
    // out out_o_stall@20000000
    foo_i_iord_bl_return_task_3_unnamed_8_foo0 thei_iord_bl_return_task_3_unnamed_foo8_foo7 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_task_3_unnamed_foo5_foo4_b),
        .in_i_stall(SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_V0),
        .in_iord_bl_return_task_3_i_fifodata(in_iord_bl_return_task_3_i_fifodata),
        .in_iord_bl_return_task_3_i_fifovalid(in_iord_bl_return_task_3_i_fifovalid),
        .out_iord_bl_return_task_3_o_fifoalmost_full(i_iord_bl_return_task_3_unnamed_foo8_foo7_out_iord_bl_return_task_3_o_fifoalmost_full),
        .out_iord_bl_return_task_3_o_fifoready(i_iord_bl_return_task_3_unnamed_foo8_foo7_out_iord_bl_return_task_3_o_fifoready),
        .out_o_data(i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_data),
        .out_o_stall(i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_stall),
        .out_o_valid(i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4(STALLENABLE,106)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_V0 = SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_backStall = i_iord_bl_return_task_3_unnamed_foo8_foo7_out_o_stall | ~ (SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_wireValid = i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_valid;

    // bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1(BITJOIN,66)
    assign bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_q = i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_data;

    // bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1(BITSELECT,67)
    assign bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_b = $unsigned(bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_q[0:0]);

    // i_iowr_bl_call_task_3_unnamed_foo5_foo4(BLACKBOX,16)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_call_task_3_o_fifodata@20000000
    // out out_iowr_bl_call_task_3_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_call_task_3_unnamed_5_foo0 thei_iowr_bl_call_task_3_unnamed_foo5_foo4 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_b),
        .in_i_stall(SE_out_i_iowr_bl_call_task_3_unnamed_foo5_foo4_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V2),
        .in_iowr_bl_call_task_3_i_fifoready(in_iowr_bl_call_task_3_i_fifoready),
        .out_iowr_bl_call_task_3_o_fifodata(i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_iowr_bl_call_task_3_o_fifodata),
        .out_iowr_bl_call_task_3_o_fifovalid(i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_iowr_bl_call_task_3_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_ack),
        .out_o_stall(i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_stall),
        .out_o_valid(i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iowr_bl_call_task_2_unnamed_foo4_foo3(BLACKBOX,15)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_call_task_2_o_fifodata@20000000
    // out out_iowr_bl_call_task_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_call_task_2_unnamed_4_foo0 thei_iowr_bl_call_task_2_unnamed_foo4_foo3 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_b),
        .in_i_stall(SE_out_i_iowr_bl_call_task_2_unnamed_foo4_foo3_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V1),
        .in_iowr_bl_call_task_2_i_fifoready(in_iowr_bl_call_task_2_i_fifoready),
        .out_iowr_bl_call_task_2_o_fifodata(i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_iowr_bl_call_task_2_o_fifodata),
        .out_iowr_bl_call_task_2_o_fifovalid(i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_iowr_bl_call_task_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_ack),
        .out_o_stall(i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_stall),
        .out_o_valid(i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iowr_bl_call_task_1_unnamed_foo3_foo2(BLACKBOX,14)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_call_task_1_o_fifodata@20000000
    // out out_iowr_bl_call_task_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_call_task_1_unnamed_3_foo0 thei_iowr_bl_call_task_1_unnamed_foo3_foo2 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_b),
        .in_i_stall(SE_out_i_iowr_bl_call_task_1_unnamed_foo3_foo2_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V0),
        .in_iowr_bl_call_task_1_i_fifoready(in_iowr_bl_call_task_1_i_fifoready),
        .out_iowr_bl_call_task_1_o_fifodata(i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_iowr_bl_call_task_1_o_fifodata),
        .out_iowr_bl_call_task_1_o_fifovalid(i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_iowr_bl_call_task_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_ack),
        .out_o_stall(i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_stall),
        .out_o_valid(i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1(STALLENABLE,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg0 <= '0;
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg1 <= '0;
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg0 <= SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg1 <= SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg2 <= SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed0 = (~ (i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_o_stall) & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid) | SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg0;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed1 = (~ (i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_o_stall) & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid) | SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg1;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed2 = (~ (i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_o_stall) & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid) | SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_StallValid = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_backStall & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg0 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_StallValid & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed0;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg1 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_StallValid & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed1;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_toReg2 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_StallValid & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_or0 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed0;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_or1 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed1 & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_or0;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireStall = ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_consumed2 & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_or1);
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_backStall = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V0 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid & ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg0);
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V1 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid & ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg1);
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_V2 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid & ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_wireValid = i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_valid;

    // i_iord_bl_call_foo_unnamed_foo2_foo1(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_foo_o_fifoalmost_full@20000000
    // out out_iord_bl_call_foo_o_fifoready@20000000
    // out out_o_stall@20000000
    foo_i_iord_bl_call_unnamed_foo2_foo0 thei_iord_bl_call_foo_unnamed_foo2_foo1 (
        .in_i_stall(SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0),
        .in_iord_bl_call_foo_i_fifodata(in_iord_bl_call_foo_i_fifodata),
        .in_iord_bl_call_foo_i_fifovalid(in_iord_bl_call_foo_i_fifovalid),
        .out_iord_bl_call_foo_o_fifoalmost_full(i_iord_bl_call_foo_unnamed_foo2_foo1_out_iord_bl_call_foo_o_fifoalmost_full),
        .out_iord_bl_call_foo_o_fifoready(i_iord_bl_call_foo_unnamed_foo2_foo1_out_iord_bl_call_foo_o_fifoready),
        .out_o_data(i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_data),
        .out_o_stall(i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_stall),
        .out_o_valid(i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x(STALLENABLE,114)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall = i_iord_bl_call_foo_unnamed_foo2_foo1_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x(BLACKBOX,63)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    foo_i_sfc_s_c0_in_wt_entry_s_c0_enter1_foo0 thei_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall),
        .in_i_valid(SE_out_foo_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_foo0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,41)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,45)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,48)
    assign out_iord_bl_call_foo_o_fifoready = i_iord_bl_call_foo_unnamed_foo2_foo1_out_iord_bl_call_foo_o_fifoready;
    assign out_iord_bl_call_foo_o_fifoalmost_full = i_iord_bl_call_foo_unnamed_foo2_foo1_out_iord_bl_call_foo_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,49)@1
    assign out_valid_out = SE_out_i_iord_bl_return_task_3_unnamed_foo8_foo7_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,51)
    assign out_iowr_bl_call_task_1_o_fifodata = i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_iowr_bl_call_task_1_o_fifodata;
    assign out_iowr_bl_call_task_1_o_fifovalid = i_iowr_bl_call_task_1_unnamed_foo3_foo2_out_iowr_bl_call_task_1_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,53)
    assign out_iowr_bl_call_task_2_o_fifodata = i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_iowr_bl_call_task_2_o_fifodata;
    assign out_iowr_bl_call_task_2_o_fifovalid = i_iowr_bl_call_task_2_unnamed_foo4_foo3_out_iowr_bl_call_task_2_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,55)
    assign out_iowr_bl_call_task_3_o_fifodata = i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_iowr_bl_call_task_3_o_fifodata;
    assign out_iowr_bl_call_task_3_o_fifovalid = i_iowr_bl_call_task_3_unnamed_foo5_foo4_out_iowr_bl_call_task_3_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,57)
    assign out_iord_bl_return_task_1_o_fifoready = i_iord_bl_return_task_1_unnamed_foo6_foo5_out_iord_bl_return_task_1_o_fifoready;
    assign out_iord_bl_return_task_1_o_fifoalmost_full = i_iord_bl_return_task_1_unnamed_foo6_foo5_out_iord_bl_return_task_1_o_fifoalmost_full;

    // dupName_5_ext_sig_sync_out_x(GPOUT,59)
    assign out_iord_bl_return_task_2_o_fifoready = i_iord_bl_return_task_2_unnamed_foo7_foo6_out_iord_bl_return_task_2_o_fifoready;
    assign out_iord_bl_return_task_2_o_fifoalmost_full = i_iord_bl_return_task_2_unnamed_foo7_foo6_out_iord_bl_return_task_2_o_fifoalmost_full;

    // dupName_6_ext_sig_sync_out_x(GPOUT,61)
    assign out_iord_bl_return_task_3_o_fifoready = i_iord_bl_return_task_3_unnamed_foo8_foo7_out_iord_bl_return_task_3_o_fifoready;
    assign out_iord_bl_return_task_3_o_fifoalmost_full = i_iord_bl_return_task_3_unnamed_foo8_foo7_out_iord_bl_return_task_3_o_fifoalmost_full;

    // dupName_7_ext_sig_sync_out_x(GPOUT,62)
    assign out_iowr_bl_return_foo_o_fifodata = i_iowr_bl_return_foo_unnamed_foo9_foo10_out_iowr_bl_return_foo_o_fifodata;
    assign out_iowr_bl_return_foo_o_fifovalid = i_iowr_bl_return_foo_unnamed_foo9_foo10_out_iowr_bl_return_foo_o_fifovalid;

endmodule
