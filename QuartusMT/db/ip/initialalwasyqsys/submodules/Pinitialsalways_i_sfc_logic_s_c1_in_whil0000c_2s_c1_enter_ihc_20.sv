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

// SystemVerilog created from i_sfc_logic_s_c1_in_while_body_ihc_2s_c1_enter_ihc_20
// Created for function/kernel Pinitialsalways
// SystemVerilog created on Mon Sep 11 23:16:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module Pinitialsalways_i_sfc_logic_s_c1_in_whil0000c_2s_c1_enter_ihc_20 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [0:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_ihc_21,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_011_q;
    wire [31:0] c_i32_112_q;
    wire [31:0] c_i32_213_q;
    wire [0:0] i_acl_ihc_26_s;
    reg [31:0] i_acl_ihc_26_q;
    wire [0:0] i_cmp_i_i_ihc_23_q;
    wire [32:0] i_inc_i_i_ihc_25_a;
    wire [32:0] i_inc_i_i_ihc_25_b;
    logic [32:0] i_inc_i_i_ihc_25_o;
    wire [32:0] i_inc_i_i_ihc_25_q;
    wire [31:0] i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22_out_feedback_stall_out_3;
    wire [31:0] i_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27_out_feedback_valid_out_3;
    wire [31:0] bgTrunc_i_inc_i_i_ihc_25_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_together17_aunroll_x_in_c1_eni1_1_tpl_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // valid_fanout_reg0(REG,21)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_011(CONSTANT,4)
    assign c_i32_011_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg1(REG,22)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,26)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,23)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_213(CONSTANT,6)
    assign c_i32_213_q = $unsigned(32'b00000000000000000000000000000010);

    // c_i32_112(CONSTANT,5)
    assign c_i32_112_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_i_i_ihc_25(ADD,11)@2
    assign i_inc_i_i_ihc_25_a = {1'b0, i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22_out_data_out};
    assign i_inc_i_i_ihc_25_b = {1'b0, c_i32_112_q};
    assign i_inc_i_i_ihc_25_o = $unsigned(i_inc_i_i_ihc_25_a) + $unsigned(i_inc_i_i_ihc_25_b);
    assign i_inc_i_i_ihc_25_q = i_inc_i_i_ihc_25_o[32:0];

    // bgTrunc_i_inc_i_i_ihc_25_sel_x(BITSELECT,16)@2
    assign bgTrunc_i_inc_i_i_ihc_25_sel_x_b = i_inc_i_i_ihc_25_q[31:0];

    // i_acl_ihc_26(MUX,9)@2
    assign i_acl_ihc_26_s = i_cmp_i_i_ihc_23_q;
    always @(i_acl_ihc_26_s or bgTrunc_i_inc_i_i_ihc_25_sel_x_b or c_i32_213_q)
    begin
        unique case (i_acl_ihc_26_s)
            1'b0 : i_acl_ihc_26_q = bgTrunc_i_inc_i_i_ihc_25_sel_x_b;
            1'b1 : i_acl_ihc_26_q = c_i32_213_q;
            default : i_acl_ihc_26_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27(BLACKBOX,13)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    Pinitialsalways_i_llvm_fpga_push_i32_zz10000tatic_0_push3_ihc_20 thei_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27 (
        .in_data_in(i_acl_ihc_26_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22_out_feedback_stall_out_3),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together17_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together17_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together17_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22(BLACKBOX,12)@2
    // out out_feedback_stall_out_3@20000000
    Pinitialsalways_i_llvm_fpga_pop_i32_zz120000static_0_pop3_ihc_20 thei_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22 (
        .in_data_in(c_i32_011_q),
        .in_dir(redist0_sync_together17_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_3(i_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_push3_ihc_27_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp_i_i_ihc_23(LOGICAL,10)@2
    assign i_cmp_i_i_ihc_23_q = $unsigned(i_llvm_fpga_pop_i32_zz12task_initialrn3ihc6streamiijeees2_e3cnt_static_0_pop3_ihc_22_out_data_out == c_i32_011_q ? 1'b1 : 1'b0);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,19)@2
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_cmp_i_i_ihc_23_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_ihc_21 = GND_q;

endmodule
