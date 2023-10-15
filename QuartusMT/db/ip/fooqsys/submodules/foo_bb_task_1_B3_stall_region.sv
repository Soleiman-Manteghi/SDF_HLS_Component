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

// SystemVerilog created from bb_task_1_B3_stall_region
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_task_1_B3_stall_region (
    input wire [0:0] in_iowr_bl_return_task_1_i_fifoready,
    output wire [0:0] out_iowr_bl_return_task_1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_task_1_o_fifovalid,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_iowr_bl_return_task_1_o_fifodata;
    wire [0:0] i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_iowr_bl_return_task_1_o_fifovalid;
    wire [0:0] i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_o_stall;
    wire [0:0] i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_o_valid;
    wire [0:0] SE_out_i_iowr_bl_return_task_1_unnamed_task_15_task_10_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_task_1_unnamed_task_15_task_10_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;


    // SE_stall_entry(STALLENABLE,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_iowr_bl_return_task_1_unnamed_task_15_task_10(STALLENABLE,19)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_task_1_unnamed_task_15_task_10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_task_1_unnamed_task_15_task_10_wireValid = i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_iowr_bl_return_task_1_unnamed_task_15_task_10(BLACKBOX,7)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_task_1_o_fifodata@20000000
    // out out_iowr_bl_return_task_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_return_task_1_unnamed_task_15_task_10 thei_iowr_bl_return_task_1_unnamed_task_15_task_10 (
        .in_i_data(GND_q),
        .in_i_stall(SE_out_i_iowr_bl_return_task_1_unnamed_task_15_task_10_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_iowr_bl_return_task_1_i_fifoready(in_iowr_bl_return_task_1_i_fifoready),
        .out_iowr_bl_return_task_1_o_fifodata(i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_iowr_bl_return_task_1_o_fifodata),
        .out_iowr_bl_return_task_1_o_fifovalid(i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_iowr_bl_return_task_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_o_stall),
        .out_o_valid(i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_task_1_o_fifodata = i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_iowr_bl_return_task_1_o_fifodata;
    assign out_iowr_bl_return_task_1_o_fifovalid = i_iowr_bl_return_task_1_unnamed_task_15_task_10_out_iowr_bl_return_task_1_o_fifovalid;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,15)@0
    assign out_valid_out = SE_stall_entry_V1;

endmodule
