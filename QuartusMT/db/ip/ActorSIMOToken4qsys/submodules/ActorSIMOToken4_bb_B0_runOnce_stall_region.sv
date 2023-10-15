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

// SystemVerilog created from bb_ActorSIMOToken4_B0_runOnce_stall_region
// Created for function/kernel ActorSIMOToken4
// SystemVerilog created on Mon Sep 18 22:56:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ActorSIMOToken4_bb_B0_runOnce_stall_region (
    input wire [0:0] in_iowr_bl_call_ihc_1_i_fifoready,
    output wire [0:0] out_iowr_bl_call_ihc_1_o_fifodata,
    output wire [0:0] out_iowr_bl_call_ihc_1_o_fifovalid,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_call_ihc_i_fifoready,
    output wire [0:0] out_iowr_bl_call_ihc_o_fifodata,
    output wire [0:0] out_iowr_bl_call_ihc_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] ActorSIMOToken4_B0_runOnce_merge_reg_out_stall_out;
    wire [0:0] ActorSIMOToken4_B0_runOnce_merge_reg_out_valid_out;
    wire [0:0] i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_iowr_bl_call_ihc_1_o_fifodata;
    wire [0:0] i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_iowr_bl_call_ihc_1_o_fifovalid;
    wire [0:0] i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_o_stall;
    wire [0:0] i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_o_valid;
    wire [0:0] i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_iowr_bl_call_ihc_o_fifodata;
    wire [0:0] i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_iowr_bl_call_ihc_o_fifovalid;
    wire [0:0] i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_o_stall;
    wire [0:0] i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_valid_out;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireStall;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_StallValid;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg0;
    reg [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg0;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed0;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg1;
    reg [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg1;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed1;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg2;
    reg [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg2;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed2;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_or0;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_or1;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_backStall;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V0;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V1;
    wire [0:0] SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_0;
    reg [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_1;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_v_s_0;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_0;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_1;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backEN;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_or0;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backStall;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_V0;
    wire [0:0] bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_V1;


    // i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42(BLACKBOX,11)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_ihc_o_fifodata@20000000
    // out out_iowr_bl_call_ihc_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken4_i_iowr_bl_call_ihc_unnam0000n41_actorsimotoken40 thei_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42 (
        .in_i_data(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_backStall),
        .in_i_valid(bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_V1),
        .in_iowr_bl_call_ihc_i_fifoready(in_iowr_bl_call_ihc_i_fifoready),
        .out_iowr_bl_call_ihc_o_fifodata(i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_iowr_bl_call_ihc_o_fifodata),
        .out_iowr_bl_call_ihc_o_fifovalid(i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_iowr_bl_call_ihc_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_o_stall),
        .out_o_valid(i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43(STALLENABLE,49)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_wireValid = i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_valid_out;

    // i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    ActorSIMOToken4_i_llvm_fpga_push_token_i0000ush_actorsimotoken40 thei_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_0(i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_feedback_stall_out_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_backStall),
        .in_valid_in(SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V1),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    ActorSIMOToken4_i_llvm_fpga_pop_token_i10000pop_actorsimotoken40 thei_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_feedback_out_0),
        .in_feedback_valid_in_0(i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_feedback_valid_out_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_backStall),
        .in_valid_in(SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,50)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ActorSIMOToken4_B0_runOnce_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ActorSIMOToken4_B0_runOnce_merge_reg(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    ActorSIMOToken4_B0_runOnce_merge_reg theActorSIMOToken4_B0_runOnce_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(ActorSIMOToken4_B0_runOnce_merge_reg_out_stall_out),
        .out_valid_out(ActorSIMOToken4_B0_runOnce_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ActorSIMOToken4_B0_runOnce_merge_reg(STALLENABLE,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg0 <= '0;
            SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg1 <= '0;
            SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg0 <= SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg0;
            // Successor 1
            SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg1 <= SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg1;
            // Successor 2
            SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg2 <= SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_stall_out) & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid) | SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg0;
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed1 = (~ (i_llvm_fpga_push_token_i1_wt_limpush_actorsimotoken43_out_stall_out) & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid) | SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg1;
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed2 = (~ (bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backStall) & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid) | SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg2;
    // Consuming
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_StallValid = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_backStall & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid;
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg0 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_StallValid & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed0;
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg1 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_StallValid & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed1;
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_toReg2 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_StallValid & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed2;
    // Backward Stall generation
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_or0 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed0;
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_or1 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed1 & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_or0;
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireStall = ~ (SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_consumed2 & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_or1);
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_backStall = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V0 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid & ~ (SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg0);
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V1 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid & ~ (SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg1);
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V2 = SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid & ~ (SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_wireValid = ActorSIMOToken4_B0_runOnce_merge_reg_out_valid_out;

    // bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg(STALLENABLE,68)
    // Valid signal propagation
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_V0 = bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_0;
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_V1 = bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_0 = i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_o_stall & bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_0;
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_1 = i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_o_stall & bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_or0 = bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_0;
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backEN = ~ (bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_1 | bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_v_s_0 = bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backEN & SE_out_ActorSIMOToken4_B0_runOnce_merge_reg_V2;
    // Backward Stall generation
    assign bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backStall = ~ (bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_0 <= 1'b0;
            bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backEN == 1'b0)
            begin
                bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_0 <= bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_0 & bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_0 <= bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_v_s_0;
            end

            if (bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_backEN == 1'b0)
            begin
                bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_1 <= bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_1 & bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_s_tv_1;
            end
            else
            begin
                bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_R_v_1 <= bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40(STALLENABLE,47)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_V0 = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_and0 = i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_and1 = i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_o_valid & SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_and0;
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_wireValid = i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_o_valid & SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41(BLACKBOX,10)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_ihc_1_o_fifodata@20000000
    // out out_iowr_bl_call_ihc_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    ActorSIMOToken4_i_iowr_bl_call_ihc_1_unn0000n40_actorsimotoken40 thei_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41 (
        .in_i_data(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_backStall),
        .in_i_valid(bubble_out_ActorSIMOToken4_B0_runOnce_merge_reg_1_reg_V0),
        .in_iowr_bl_call_ihc_1_i_fifoready(in_iowr_bl_call_ihc_1_i_fifoready),
        .out_iowr_bl_call_ihc_1_o_fifodata(i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_iowr_bl_call_ihc_1_o_fifodata),
        .out_iowr_bl_call_ihc_1_o_fifovalid(i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_iowr_bl_call_ihc_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_o_stall),
        .out_o_valid(i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_iowr_bl_call_ihc_1_o_fifodata = i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_iowr_bl_call_ihc_1_o_fifodata;
    assign out_iowr_bl_call_ihc_1_o_fifovalid = i_iowr_bl_call_ihc_1_unnamed_actorsimotoken40_actorsimotoken41_out_iowr_bl_call_ihc_1_o_fifovalid;

    // sync_out(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_iowr_bl_call_ihc_o_fifodata = i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_iowr_bl_call_ihc_o_fifodata;
    assign out_iowr_bl_call_ihc_o_fifovalid = i_iowr_bl_call_ihc_unnamed_actorsimotoken41_actorsimotoken42_out_iowr_bl_call_ihc_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,31)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_actorsimotoken40_V0;

endmodule
