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

// SystemVerilog created from i_sfc_logic_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_20
// Created for function/kernel MultiToken
// SystemVerilog created on Sat Sep 16 17:21:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_i_sfc_logic_s_c0_in_while_bod0000_2s_c0_enter1_ihc_20 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_ihc_21,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_22_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_22_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_22_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_22_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_ihc_23_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_ihc_23_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_ihc_23_out_feedback_valid_out_2;
    reg [0:0] redist0_sync_together13_aunroll_x_in_c0_eni1_1_tpl_8_q;
    reg [0:0] redist1_sync_together13_aunroll_x_in_i_valid_8_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // redist1_sync_together13_aunroll_x_in_i_valid_8(DELAY,18)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together13_aunroll_x_in_i_valid_8 ( .xin(in_i_valid), .xout(redist1_sync_together13_aunroll_x_in_i_valid_8_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // enable_stall_connector_not_enable(LOGICAL,19)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // i_llvm_fpga_push_i1_notexitcond_ihc_23(BLACKBOX,10)@9
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    MultiToken_i_llvm_fpga_push_i1_notexitcond_ihc_20 thei_llvm_fpga_push_i1_notexitcond_ihc_23 (
        .in_data_in(VCC_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_ihc_22_out_not_exitcond_stall_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together13_aunroll_x_in_i_valid_8_q),
        .out_data_out(i_llvm_fpga_push_i1_notexitcond_ihc_23_out_data_out),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_ihc_23_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_ihc_23_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going_ihc_22(BLACKBOX,9)@9
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    MultiToken_i_llvm_fpga_pipeline_keep_going_ihc_20 thei_llvm_fpga_pipeline_keep_going_ihc_22 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_ihc_23_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_ihc_23_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together13_aunroll_x_in_i_valid_8_q),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_ihc_22_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_ihc_22_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_ihc_22_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_ihc_22_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_ihc_22_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_ihc_22_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_ihc_22_out_pipeline_valid_out;

    // redist0_sync_together13_aunroll_x_in_c0_eni1_1_tpl_8(DELAY,17)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together13_aunroll_x_in_c0_eni1_1_tpl_8 ( .xin(in_c0_eni1_1_tpl), .xout(redist0_sync_together13_aunroll_x_in_c0_eni1_1_tpl_8_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // sync_out_aunroll_x(GPOUT,15)@9
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = i_llvm_fpga_push_i1_notexitcond_ihc_23_out_data_out;
    assign out_c0_exi2_2_tpl = redist0_sync_together13_aunroll_x_in_c0_eni1_1_tpl_8_q;
    assign out_o_valid = redist1_sync_together13_aunroll_x_in_i_valid_8_q;
    assign out_unnamed_ihc_21 = GND_q;

endmodule
