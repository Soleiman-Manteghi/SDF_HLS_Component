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

// SystemVerilog created from i_sfc_logic_s_c0_in_wt_entry_actorsimotoken3s_c0_enter1_actorsimotoken30
// Created for function/kernel ActorSIMOToken3
// SystemVerilog created on Mon Sep 18 22:44:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSIMOToken3_i_sfc_logic_s_c0_in_wt_e0000er1_actorsimotoken30 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_actorsimotoken31_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_actorsimotoken31_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi1_0_tpl,
    output wire [0:0] out_c0_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_ActorSIMOToken33,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_feedback_valid_out_2;
    wire [0:0] enable_stall_connector_not_enable_q;


    // enable_stall_connector_not_enable(LOGICAL,17)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // i_llvm_fpga_push_i1_notexitcond_actorsimotoken32(BLACKBOX,10)@1
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    ActorSIMOToken3_i_llvm_fpga_push_i1_notexitcond_actorsimotoken30 thei_llvm_fpga_push_i1_notexitcond_actorsimotoken32 (
        .in_data_in(VCC_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_not_exitcond_stall_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_data_out),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going_actorsimotoken31(BLACKBOX,9)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    ActorSIMOToken3_i_llvm_fpga_pipeline_keep_going_actorsimotoken30 thei_llvm_fpga_pipeline_keep_going_actorsimotoken31 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_actorsimotoken31_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_actorsimotoken31_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_actorsimotoken31_out_pipeline_valid_out;

    // sync_out_aunroll_x(GPOUT,16)@1
    assign out_c0_exi1_0_tpl = GND_q;
    assign out_c0_exi1_1_tpl = i_llvm_fpga_push_i1_notexitcond_actorsimotoken32_out_data_out;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_ActorSIMOToken33 = GND_q;

endmodule
