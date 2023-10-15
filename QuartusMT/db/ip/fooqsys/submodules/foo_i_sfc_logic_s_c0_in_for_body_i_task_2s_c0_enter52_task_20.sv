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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_i_task_2s_c0_enter52_task_20
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_i_sfc_logic_s_c0_in_for_body_i_task_2s_c0_enter52_task_20 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_task_21,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_133_q;
    wire [8:0] c_i9_137_q;
    wire [8:0] c_i9_25435_q;
    wire [1:0] i_cleanups_shl_task_25_vt_join_q;
    wire [0:0] i_cleanups_shl_task_25_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_task_24_q;
    wire [9:0] i_fpga_indvars_iv_next_task_220_a;
    wire [9:0] i_fpga_indvars_iv_next_task_220_b;
    logic [9:0] i_fpga_indvars_iv_next_task_220_o;
    wire [9:0] i_fpga_indvars_iv_next_task_220_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_26_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_26_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_26_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_26_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_26_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_task_26_out_pipeline_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_feedback_stall_out_7;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_feedback_stall_out_6;
    wire [8:0] i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_task_211_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_task_211_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_task_216_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_task_216_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push7_task_219_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push7_task_219_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push6_task_29_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push6_task_29_out_feedback_valid_out_6;
    wire [15:0] i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221_out_feedback_valid_out_5;
    wire [0:0] i_masked_task_222_q;
    wire [0:0] i_next_cleanups_task_218_s;
    reg [1:0] i_next_cleanups_task_218_q;
    wire [1:0] i_next_initerations_task_28_vt_join_q;
    wire [0:0] i_next_initerations_task_28_vt_select_0_b;
    wire [0:0] i_notcmp_task_215_q;
    wire [0:0] i_or_task_217_q;
    wire [8:0] bgTrunc_i_fpga_indvars_iv_next_task_220_sel_x_b;
    wire [0:0] i_first_cleanup_task_23_sel_x_b;
    wire [0:0] i_last_initeration_task_210_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond_task_213_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid74_i_cleanups_shl_task_20_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid74_i_cleanups_shl_task_20_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid75_i_cleanups_shl_task_20_shift_x_q;
    wire [0:0] leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_s;
    reg [1:0] leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid81_i_next_initerations_task_20_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid83_i_next_initerations_task_20_shift_x_q;
    wire [0:0] rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_s;
    reg [1:0] rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_q;
    reg [0:0] redist0_sync_together49_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together49_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together49_aunroll_x_in_i_valid_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together49_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together49_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_task_26_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid74_i_cleanups_shl_task_20_shift_x(BITSELECT,73)@2
    assign leftShiftStage0Idx1Rng1_uid74_i_cleanups_shl_task_20_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid74_i_cleanups_shl_task_20_shift_x_b = leftShiftStage0Idx1Rng1_uid74_i_cleanups_shl_task_20_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid75_i_cleanups_shl_task_20_shift_x(BITJOIN,74)@2
    assign leftShiftStage0Idx1_uid75_i_cleanups_shl_task_20_shift_x_q = {leftShiftStage0Idx1Rng1_uid74_i_cleanups_shl_task_20_shift_x_b, GND_q};

    // leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x(MUX,76)@2
    assign leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out or leftShiftStage0Idx1_uid75_i_cleanups_shl_task_20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_s)
            1'b0 : leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out;
            1'b1 : leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_q = leftShiftStage0Idx1_uid75_i_cleanups_shl_task_20_shift_x_q;
            default : leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_task_25_vt_select_1(BITSELECT,19)@2
    assign i_cleanups_shl_task_25_vt_select_1_b = leftShiftStage0_uid77_i_cleanups_shl_task_20_shift_x_q[1:1];

    // i_cleanups_shl_task_25_vt_join(BITJOIN,18)@2
    assign i_cleanups_shl_task_25_vt_join_q = {i_cleanups_shl_task_25_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_task_24(LOGICAL,22)@2
    assign i_first_cleanup_xor_task_24_q = i_first_cleanup_task_23_sel_x_b ^ VCC_q;

    // i_notcmp_task_215(LOGICAL,39)@2
    assign i_notcmp_task_215_q = i_exitcond_task_213_cmp_nsign_q ^ VCC_q;

    // i_or_task_217(LOGICAL,40)@2
    assign i_or_task_217_q = i_notcmp_task_215_q | i_first_cleanup_xor_task_24_q;

    // i_next_cleanups_task_218(MUX,35)@2
    assign i_next_cleanups_task_218_s = i_or_task_217_q;
    always @(i_next_cleanups_task_218_s or i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out or i_cleanups_shl_task_25_vt_join_q)
    begin
        unique case (i_next_cleanups_task_218_s)
            1'b0 : i_next_cleanups_task_218_q = i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out;
            1'b1 : i_next_cleanups_task_218_q = i_cleanups_shl_task_25_vt_join_q;
            default : i_next_cleanups_task_218_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push7_task_219(BLACKBOX,31)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    foo_i_llvm_fpga_push_i2_cleanups_push7_task_20 thei_llvm_fpga_push_i2_cleanups_push7_task_219 (
        .in_data_in(i_next_cleanups_task_218_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_feedback_stall_out_7),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together49_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i2_cleanups_push7_task_219_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i2_cleanups_push7_task_219_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together49_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together49_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together49_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i2_133(CONSTANT,13)
    assign c_i2_133_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop7_task_22(BLACKBOX,26)@2
    // out out_feedback_stall_out_7@20000000
    foo_i_llvm_fpga_pop_i2_cleanups_pop7_task_20 thei_llvm_fpga_pop_i2_cleanups_pop7_task_22 (
        .in_data_in(c_i2_133_q),
        .in_dir(redist0_sync_together49_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_7(i_llvm_fpga_push_i2_cleanups_push7_task_219_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i2_cleanups_push7_task_219_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together49_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_task_23_sel_x(BITSELECT,51)@2
    assign i_first_cleanup_task_23_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop7_task_22_out_data_out[0:0];

    // c_i9_137(CONSTANT,14)
    assign c_i9_137_q = $unsigned(9'b111111111);

    // i_fpga_indvars_iv_next_task_220(ADD,23)@2
    assign i_fpga_indvars_iv_next_task_220_a = {1'b0, i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212_out_data_out};
    assign i_fpga_indvars_iv_next_task_220_b = {1'b0, c_i9_137_q};
    assign i_fpga_indvars_iv_next_task_220_o = $unsigned(i_fpga_indvars_iv_next_task_220_a) + $unsigned(i_fpga_indvars_iv_next_task_220_b);
    assign i_fpga_indvars_iv_next_task_220_q = i_fpga_indvars_iv_next_task_220_o[9:0];

    // bgTrunc_i_fpga_indvars_iv_next_task_220_sel_x(BITSELECT,45)@2
    assign bgTrunc_i_fpga_indvars_iv_next_task_220_sel_x_b = i_fpga_indvars_iv_next_task_220_q[8:0];

    // i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221(BLACKBOX,33)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    foo_i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_20 thei_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_task_220_sel_x_b),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212_out_feedback_stall_out_5),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together49_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i9_25435(CONSTANT,15)
    assign c_i9_25435_q = $unsigned(9'b011111110);

    // i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212(BLACKBOX,28)@2
    // out out_feedback_stall_out_5@20000000
    foo_i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_20 thei_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212 (
        .in_data_in(c_i9_25435_q),
        .in_dir(redist0_sync_together49_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i9_fpga_indvars_iv_push5_task_221_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together49_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_task_213_cmp_nsign(LOGICAL,69)@2
    assign i_exitcond_task_213_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i9_fpga_indvars_iv_pop5_task_212_out_data_out[8:8]));

    // i_llvm_fpga_push_i1_notexitcond_task_216(BLACKBOX,30)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    foo_i_llvm_fpga_push_i1_notexitcond_task_20 thei_llvm_fpga_push_i1_notexitcond_task_216 (
        .in_data_in(i_exitcond_task_213_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_task_26_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_task_23_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together49_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_task_216_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_task_216_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,62)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid81_i_next_initerations_task_20_shift_x(BITSELECT,80)@2
    assign rightShiftStage0Idx1Rng1_uid81_i_next_initerations_task_20_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_data_out[1:1];

    // rightShiftStage0Idx1_uid83_i_next_initerations_task_20_shift_x(BITJOIN,82)@2
    assign rightShiftStage0Idx1_uid83_i_next_initerations_task_20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid81_i_next_initerations_task_20_shift_x_b};

    // valid_fanout_reg1(REG,60)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,61)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push6_task_29(BLACKBOX,32)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    foo_i_llvm_fpga_push_i2_initerations_push6_task_20 thei_llvm_fpga_push_i2_initerations_push6_task_29 (
        .in_data_in(i_next_initerations_task_28_vt_join_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_feedback_stall_out_6),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i2_initerations_push6_task_29_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i2_initerations_push6_task_29_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop6_task_27(BLACKBOX,27)@2
    // out out_feedback_stall_out_6@20000000
    foo_i_llvm_fpga_pop_i2_initerations_pop6_task_20 thei_llvm_fpga_pop_i2_initerations_pop6_task_27 (
        .in_data_in(c_i2_133_q),
        .in_dir(redist0_sync_together49_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i2_initerations_push6_task_29_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i2_initerations_push6_task_29_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid85_i_next_initerations_task_20_shift_x(MUX,84)@2
    assign rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_data_out or rightShiftStage0Idx1_uid83_i_next_initerations_task_20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_s)
            1'b0 : rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop6_task_27_out_data_out;
            1'b1 : rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_q = rightShiftStage0Idx1_uid83_i_next_initerations_task_20_shift_x_q;
            default : rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_task_28_vt_select_0(BITSELECT,38)@2
    assign i_next_initerations_task_28_vt_select_0_b = rightShiftStage0_uid85_i_next_initerations_task_20_shift_x_q[0:0];

    // i_next_initerations_task_28_vt_join(BITJOIN,37)@2
    assign i_next_initerations_task_28_vt_join_q = {GND_q, i_next_initerations_task_28_vt_select_0_b};

    // i_last_initeration_task_210_sel_x(BITSELECT,52)@2
    assign i_last_initeration_task_210_sel_x_b = i_next_initerations_task_28_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_task_211(BLACKBOX,29)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    foo_i_llvm_fpga_push_i1_lastiniteration_task_20 thei_llvm_fpga_push_i1_lastiniteration_task_211 (
        .in_data_in(i_last_initeration_task_210_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_task_26_out_initeration_stall_out),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_task_211_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_task_211_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_task_26(BLACKBOX,25)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    foo_i_llvm_fpga_pipeline_keep_going_task_20 thei_llvm_fpga_pipeline_keep_going_task_26 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_task_211_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_task_211_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_task_216_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_task_216_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_task_26_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_task_26_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_task_26_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_task_26_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_task_26_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_task_26_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_task_26_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_task_26_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_task_26_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_task_26_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,59)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // i_masked_task_222(LOGICAL,34)@2
    assign i_masked_task_222_q = i_notcmp_task_215_q & i_first_cleanup_task_23_sel_x_b;

    // sync_out_aunroll_x(GPOUT,57)@2
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = i_first_cleanup_xor_task_24_q;
    assign out_c0_exi3_2_tpl = redist2_i_llvm_fpga_pipeline_keep_going_task_26_out_data_out_1_q;
    assign out_c0_exi3_3_tpl = i_masked_task_222_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_task_21 = GND_q;

endmodule
