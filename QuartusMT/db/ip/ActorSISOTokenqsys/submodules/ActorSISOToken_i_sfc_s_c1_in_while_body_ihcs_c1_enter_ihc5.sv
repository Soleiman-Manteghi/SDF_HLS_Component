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

// SystemVerilog created from i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5
// Created for function/kernel ActorSISOToken
// SystemVerilog created on Sun Sep 17 05:59:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSISOToken_i_sfc_s_c1_in_while_body_ihcs_c1_enter_ihc5 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_exe1,
    input wire [0:0] in_c0_exe2,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [0:0] out_c1_exit_1_tpl,
    output wire [0:0] out_c1_exit_2_tpl,
    output wire [0:0] out_c1_exit_3_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_0_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_1_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_2_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_3_tpl;


    // i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x(BLACKBOX,7)@3
    // out out_o_valid@5
    // out out_unnamed_ihc1@5
    // out out_c1_exi3_0_tpl@5
    // out out_c1_exi3_1_tpl@5
    // out out_c1_exi3_2_tpl@5
    // out out_c1_exi3_3_tpl@5
    ActorSISOToken_i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0 thei_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x (
        .in_enable(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .in_c1_eni1_0_tpl(in_c1_eni1_0_tpl),
        .in_c1_eni1_1_tpl(in_c1_eni1_1_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_o_valid),
        .out_unnamed_ihc1(),
        .out_c1_exi3_0_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_0_tpl),
        .out_c1_exi3_1_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_1_tpl),
        .out_c1_exi3_2_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_2_tpl),
        .out_c1_exi3_3_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,3)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,2)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x(BLACKBOX,6)@5
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    ActorSISOToken_i_llvm_fpga_sfc_exit_s_c10000dy_ihcs_c1_exit_ihc0 thei_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x (
        .in_dec_pipelined_thread(in_c0_exe1),
        .in_inc_pipelined_thread(in_c0_exe2),
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_while_body_ihcs_c1_enter_ihc0_aunroll_x_out_c1_exi3_3_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,5)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,9)@5
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_data_out_3_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_while_body_ihcs_c1_exit_ihc1_aunroll_x_out_valid_out;

endmodule
