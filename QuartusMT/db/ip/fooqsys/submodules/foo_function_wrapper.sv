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

// SystemVerilog created from foo_function_wrapper
// Created for function/kernel foo
// SystemVerilog created on Sat Sep  9 23:15:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_function_wrapper (
    input wire [0:0] avst_iord_bl_call_foo_data,
    input wire [0:0] avst_iord_bl_call_foo_valid,
    input wire [31:0] avst_iord_bl_s0_data,
    input wire [0:0] avst_iord_bl_s0_valid,
    input wire [0:0] avst_iowr_bl_call_task_1_almostfull,
    input wire [0:0] avst_iowr_bl_call_task_2_almostfull,
    input wire [0:0] avst_iowr_bl_call_task_3_almostfull,
    input wire [0:0] avst_iowr_bl_return_foo_almostfull,
    input wire [0:0] avst_iowr_bl_return_foo_ready,
    input wire [0:0] avst_iowr_bl_return_task_1_almostfull,
    input wire [0:0] avst_iowr_bl_return_task_2_almostfull,
    input wire [0:0] avst_iowr_bl_return_task_3_almostfull,
    input wire [0:0] avst_iowr_bl_s1_almostfull,
    input wire [0:0] avst_iowr_bl_s2_almostfull,
    input wire [0:0] avst_iowr_bl_s3_almostfull,
    input wire [0:0] avst_iowr_bl_s3_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_foo_almost_full,
    output wire [0:0] avst_iord_bl_call_foo_ready,
    output wire [0:0] avst_iord_bl_s0_almost_full,
    output wire [0:0] avst_iord_bl_s0_ready,
    output wire [0:0] avst_iowr_bl_return_foo_data,
    output wire [0:0] avst_iowr_bl_return_foo_valid,
    output wire [31:0] avst_iowr_bl_s3_data,
    output wire [0:0] avst_iowr_bl_s3_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] foo_function_out_iord_bl_call_foo_o_fifoalmost_full;
    wire [0:0] foo_function_out_iord_bl_call_foo_o_fifoready;
    wire [0:0] foo_function_out_iord_bl_return_task_1_o_fifoready;
    wire [0:0] foo_function_out_iord_bl_return_task_2_o_fifoready;
    wire [0:0] foo_function_out_iord_bl_return_task_3_o_fifoready;
    wire [0:0] foo_function_out_iowr_bl_call_task_1_o_fifodata;
    wire [0:0] foo_function_out_iowr_bl_call_task_1_o_fifovalid;
    wire [0:0] foo_function_out_iowr_bl_call_task_2_o_fifodata;
    wire [0:0] foo_function_out_iowr_bl_call_task_2_o_fifovalid;
    wire [0:0] foo_function_out_iowr_bl_call_task_3_o_fifodata;
    wire [0:0] foo_function_out_iowr_bl_call_task_3_o_fifovalid;
    wire [0:0] foo_function_out_iowr_bl_return_foo_o_fifodata;
    wire [0:0] foo_function_out_iowr_bl_return_foo_o_fifovalid;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] task_1_function_out_iord_bl_call_task_1_o_fifoready;
    wire [0:0] task_1_function_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] task_1_function_out_iord_bl_s0_o_fifoready;
    wire [0:0] task_1_function_out_iowr_bl_return_task_1_o_fifodata;
    wire [0:0] task_1_function_out_iowr_bl_return_task_1_o_fifovalid;
    wire [31:0] task_1_function_out_iowr_bl_s1_o_fifodata;
    wire [0:0] task_1_function_out_iowr_bl_s1_o_fifovalid;
    wire [0:0] task_2_function_out_iord_bl_call_task_2_o_fifoready;
    wire [0:0] task_2_function_out_iord_bl_s1_o_fifoready;
    wire [0:0] task_2_function_out_iowr_bl_return_task_2_o_fifodata;
    wire [0:0] task_2_function_out_iowr_bl_return_task_2_o_fifovalid;
    wire [31:0] task_2_function_out_iowr_bl_s2_o_fifodata;
    wire [0:0] task_2_function_out_iowr_bl_s2_o_fifovalid;
    wire [0:0] task_3_function_out_iord_bl_call_task_3_o_fifoready;
    wire [0:0] task_3_function_out_iord_bl_s2_o_fifoready;
    wire [0:0] task_3_function_out_iowr_bl_return_task_3_o_fifodata;
    wire [0:0] task_3_function_out_iowr_bl_return_task_3_o_fifovalid;
    wire [31:0] task_3_function_out_iowr_bl_s3_o_fifodata;
    wire [0:0] task_3_function_out_iowr_bl_s3_o_fifovalid;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,29)
    assign not_stall_q = ~ (stall);

    // task_3_function(BLACKBOX,49)
    foo_task_3_function thetask_3_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_s2_global(call_const_q),
        .in_arg_s3_global(call_const_q),
        .in_iord_bl_call_task_3_i_fifodata(foo_function_out_iowr_bl_call_task_3_o_fifodata),
        .in_iord_bl_call_task_3_i_fifovalid(foo_function_out_iowr_bl_call_task_3_o_fifovalid),
        .in_iord_bl_s2_i_fifodata(task_2_function_out_iowr_bl_s2_o_fifodata),
        .in_iord_bl_s2_i_fifovalid(task_2_function_out_iowr_bl_s2_o_fifovalid),
        .in_iowr_bl_return_task_3_i_fifoready(foo_function_out_iord_bl_return_task_3_o_fifoready),
        .in_iowr_bl_s3_i_fifoready(avst_iowr_bl_s3_ready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_task_3_o_fifoalmost_full(),
        .out_iord_bl_call_task_3_o_fifoready(task_3_function_out_iord_bl_call_task_3_o_fifoready),
        .out_iord_bl_s2_o_fifoalmost_full(),
        .out_iord_bl_s2_o_fifoready(task_3_function_out_iord_bl_s2_o_fifoready),
        .out_iowr_bl_return_task_3_o_fifodata(task_3_function_out_iowr_bl_return_task_3_o_fifodata),
        .out_iowr_bl_return_task_3_o_fifovalid(task_3_function_out_iowr_bl_return_task_3_o_fifovalid),
        .out_iowr_bl_s3_o_fifodata(task_3_function_out_iowr_bl_s3_o_fifodata),
        .out_iowr_bl_s3_o_fifovalid(task_3_function_out_iowr_bl_s3_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // task_2_function(BLACKBOX,48)
    foo_task_2_function thetask_2_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_s1_global(call_const_q),
        .in_arg_s2_global(call_const_q),
        .in_iord_bl_call_task_2_i_fifodata(foo_function_out_iowr_bl_call_task_2_o_fifodata),
        .in_iord_bl_call_task_2_i_fifovalid(foo_function_out_iowr_bl_call_task_2_o_fifovalid),
        .in_iord_bl_s1_i_fifodata(task_1_function_out_iowr_bl_s1_o_fifodata),
        .in_iord_bl_s1_i_fifovalid(task_1_function_out_iowr_bl_s1_o_fifovalid),
        .in_iowr_bl_return_task_2_i_fifoready(foo_function_out_iord_bl_return_task_2_o_fifoready),
        .in_iowr_bl_s2_i_fifoready(task_3_function_out_iord_bl_s2_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_task_2_o_fifoalmost_full(),
        .out_iord_bl_call_task_2_o_fifoready(task_2_function_out_iord_bl_call_task_2_o_fifoready),
        .out_iord_bl_s1_o_fifoalmost_full(),
        .out_iord_bl_s1_o_fifoready(task_2_function_out_iord_bl_s1_o_fifoready),
        .out_iowr_bl_return_task_2_o_fifodata(task_2_function_out_iowr_bl_return_task_2_o_fifodata),
        .out_iowr_bl_return_task_2_o_fifovalid(task_2_function_out_iowr_bl_return_task_2_o_fifovalid),
        .out_iowr_bl_s2_o_fifodata(task_2_function_out_iowr_bl_s2_o_fifodata),
        .out_iowr_bl_s2_o_fifovalid(task_2_function_out_iowr_bl_s2_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // task_1_function(BLACKBOX,47)
    foo_task_1_function thetask_1_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_s0_global(call_const_q),
        .in_arg_s1_global(call_const_q),
        .in_iord_bl_call_task_1_i_fifodata(foo_function_out_iowr_bl_call_task_1_o_fifodata),
        .in_iord_bl_call_task_1_i_fifovalid(foo_function_out_iowr_bl_call_task_1_o_fifovalid),
        .in_iord_bl_s0_i_fifodata(avst_iord_bl_s0_data),
        .in_iord_bl_s0_i_fifovalid(avst_iord_bl_s0_valid),
        .in_iowr_bl_return_task_1_i_fifoready(foo_function_out_iord_bl_return_task_1_o_fifoready),
        .in_iowr_bl_s1_i_fifoready(task_2_function_out_iord_bl_s1_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_task_1_o_fifoalmost_full(),
        .out_iord_bl_call_task_1_o_fifoready(task_1_function_out_iord_bl_call_task_1_o_fifoready),
        .out_iord_bl_s0_o_fifoalmost_full(task_1_function_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(task_1_function_out_iord_bl_s0_o_fifoready),
        .out_iowr_bl_return_task_1_o_fifodata(task_1_function_out_iowr_bl_return_task_1_o_fifodata),
        .out_iowr_bl_return_task_1_o_fifovalid(task_1_function_out_iowr_bl_return_task_1_o_fifovalid),
        .out_iowr_bl_s1_o_fifodata(task_1_function_out_iowr_bl_s1_o_fifodata),
        .out_iowr_bl_s1_o_fifovalid(task_1_function_out_iowr_bl_s1_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // foo_function(BLACKBOX,7)
    foo_function thefoo_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_foo_i_fifodata(avst_iord_bl_call_foo_data),
        .in_iord_bl_call_foo_i_fifovalid(start),
        .in_iord_bl_return_task_1_i_fifodata(task_1_function_out_iowr_bl_return_task_1_o_fifodata),
        .in_iord_bl_return_task_1_i_fifovalid(task_1_function_out_iowr_bl_return_task_1_o_fifovalid),
        .in_iord_bl_return_task_2_i_fifodata(task_2_function_out_iowr_bl_return_task_2_o_fifodata),
        .in_iord_bl_return_task_2_i_fifovalid(task_2_function_out_iowr_bl_return_task_2_o_fifovalid),
        .in_iord_bl_return_task_3_i_fifodata(task_3_function_out_iowr_bl_return_task_3_o_fifodata),
        .in_iord_bl_return_task_3_i_fifovalid(task_3_function_out_iowr_bl_return_task_3_o_fifovalid),
        .in_iowr_bl_call_task_1_i_fifoready(task_1_function_out_iord_bl_call_task_1_o_fifoready),
        .in_iowr_bl_call_task_2_i_fifoready(task_2_function_out_iord_bl_call_task_2_o_fifoready),
        .in_iowr_bl_call_task_3_i_fifoready(task_3_function_out_iord_bl_call_task_3_o_fifoready),
        .in_iowr_bl_return_foo_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_foo_o_fifoalmost_full(foo_function_out_iord_bl_call_foo_o_fifoalmost_full),
        .out_iord_bl_call_foo_o_fifoready(foo_function_out_iord_bl_call_foo_o_fifoready),
        .out_iord_bl_return_task_1_o_fifoalmost_full(),
        .out_iord_bl_return_task_1_o_fifoready(foo_function_out_iord_bl_return_task_1_o_fifoready),
        .out_iord_bl_return_task_2_o_fifoalmost_full(),
        .out_iord_bl_return_task_2_o_fifoready(foo_function_out_iord_bl_return_task_2_o_fifoready),
        .out_iord_bl_return_task_3_o_fifoalmost_full(),
        .out_iord_bl_return_task_3_o_fifoready(foo_function_out_iord_bl_return_task_3_o_fifoready),
        .out_iowr_bl_call_task_1_o_fifodata(foo_function_out_iowr_bl_call_task_1_o_fifodata),
        .out_iowr_bl_call_task_1_o_fifovalid(foo_function_out_iowr_bl_call_task_1_o_fifovalid),
        .out_iowr_bl_call_task_2_o_fifodata(foo_function_out_iowr_bl_call_task_2_o_fifodata),
        .out_iowr_bl_call_task_2_o_fifovalid(foo_function_out_iowr_bl_call_task_2_o_fifovalid),
        .out_iowr_bl_call_task_3_o_fifodata(foo_function_out_iowr_bl_call_task_3_o_fifodata),
        .out_iowr_bl_call_task_3_o_fifovalid(foo_function_out_iowr_bl_call_task_3_o_fifovalid),
        .out_iowr_bl_return_foo_o_fifodata(foo_function_out_iowr_bl_return_foo_o_fifodata),
        .out_iowr_bl_return_foo_o_fifovalid(foo_function_out_iowr_bl_return_foo_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_foo_almost_full(GPOUT,30)
    assign avst_iord_bl_call_foo_almost_full = foo_function_out_iord_bl_call_foo_o_fifoalmost_full;

    // avst_iord_bl_call_foo_ready(GPOUT,31)
    assign avst_iord_bl_call_foo_ready = foo_function_out_iord_bl_call_foo_o_fifoready;

    // avst_iord_bl_s0_almost_full(GPOUT,32)
    assign avst_iord_bl_s0_almost_full = task_1_function_out_iord_bl_s0_o_fifoalmost_full;

    // avst_iord_bl_s0_ready(GPOUT,33)
    assign avst_iord_bl_s0_ready = task_1_function_out_iord_bl_s0_o_fifoready;

    // avst_iowr_bl_return_foo_data(GPOUT,34)
    assign avst_iowr_bl_return_foo_data = foo_function_out_iowr_bl_return_foo_o_fifodata;

    // avst_iowr_bl_return_foo_valid(GPOUT,35)
    assign avst_iowr_bl_return_foo_valid = foo_function_out_iowr_bl_return_foo_o_fifovalid;

    // avst_iowr_bl_s3_data(GPOUT,36)
    assign avst_iowr_bl_s3_data = task_3_function_out_iowr_bl_s3_o_fifodata;

    // avst_iowr_bl_s3_valid(GPOUT,37)
    assign avst_iowr_bl_s3_valid = task_3_function_out_iowr_bl_s3_o_fifovalid;

    // not_ready(LOGICAL,28)
    assign not_ready_q = ~ (foo_function_out_iord_bl_call_foo_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,41)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,40)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,38)
    assign busy = busy_or_q;

    // done(GPOUT,39)
    assign done = foo_function_out_iowr_bl_return_foo_o_fifovalid;

endmodule
