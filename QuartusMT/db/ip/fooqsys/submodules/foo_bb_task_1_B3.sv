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

// SystemVerilog created from bb_task_1_B3
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_task_1_B3 (
    input wire [0:0] in_iowr_bl_return_task_1_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_iowr_bl_return_task_1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_task_1_o_fifovalid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_task_1_B3_stall_region_out_iowr_bl_return_task_1_o_fifodata;
    wire [0:0] bb_task_1_B3_stall_region_out_iowr_bl_return_task_1_o_fifovalid;
    wire [0:0] bb_task_1_B3_stall_region_out_stall_out;
    wire [0:0] bb_task_1_B3_stall_region_out_valid_out;
    wire [0:0] task_1_B3_branch_out_stall_out;
    wire [0:0] task_1_B3_branch_out_valid_out_0;
    wire [0:0] task_1_B3_merge_out_stall_out_0;
    wire [0:0] task_1_B3_merge_out_valid_out;


    // task_1_B3_merge(BLACKBOX,12)
    foo_task_1_B3_merge thetask_1_B3_merge (
        .in_stall_in(bb_task_1_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(task_1_B3_merge_out_stall_out_0),
        .out_valid_out(task_1_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // task_1_B3_branch(BLACKBOX,11)
    foo_task_1_B3_branch thetask_1_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_task_1_B3_stall_region_out_valid_out),
        .out_stall_out(task_1_B3_branch_out_stall_out),
        .out_valid_out_0(task_1_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_task_1_B3_stall_region(BLACKBOX,2)
    foo_bb_task_1_B3_stall_region thebb_task_1_B3_stall_region (
        .in_iowr_bl_return_task_1_i_fifoready(in_iowr_bl_return_task_1_i_fifoready),
        .in_stall_in(task_1_B3_branch_out_stall_out),
        .in_valid_in(task_1_B3_merge_out_valid_out),
        .out_iowr_bl_return_task_1_o_fifodata(bb_task_1_B3_stall_region_out_iowr_bl_return_task_1_o_fifodata),
        .out_iowr_bl_return_task_1_o_fifovalid(bb_task_1_B3_stall_region_out_iowr_bl_return_task_1_o_fifovalid),
        .out_stall_out(bb_task_1_B3_stall_region_out_stall_out),
        .out_valid_out(bb_task_1_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iowr_bl_return_task_1_o_fifodata(GPOUT,6)
    assign out_iowr_bl_return_task_1_o_fifodata = bb_task_1_B3_stall_region_out_iowr_bl_return_task_1_o_fifodata;

    // out_iowr_bl_return_task_1_o_fifovalid(GPOUT,7)
    assign out_iowr_bl_return_task_1_o_fifovalid = bb_task_1_B3_stall_region_out_iowr_bl_return_task_1_o_fifovalid;

    // out_stall_in_0(GPOUT,8)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,9)
    assign out_stall_out_0 = task_1_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,10)
    assign out_valid_out_0 = task_1_B3_branch_out_valid_out_0;

endmodule
