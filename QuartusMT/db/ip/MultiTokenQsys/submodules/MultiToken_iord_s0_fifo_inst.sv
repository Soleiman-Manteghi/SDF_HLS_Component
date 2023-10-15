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

// SystemVerilog created from iord_s0_fifo_inst
// Created for function/kernel MultiToken
// SystemVerilog created on Sat Sep 16 17:21:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module MultiToken_iord_s0_fifo_inst (
    input wire [31:0] in_stream_in_data,
    input wire [0:0] in_stream_in_valid,
    input wire [0:0] in_stream_out_almost_full,
    input wire [0:0] in_stream_out_ready,
    output wire [0:0] out_stream_in_ready,
    output wire [31:0] out_stream_out_data,
    output wire [0:0] out_stream_out_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] iord_s0_fifo_inst_internal_stream_in_data;
    wire [0:0] iord_s0_fifo_inst_internal_stream_in_empty;
    wire iord_s0_fifo_inst_internal_stream_in_empty_bitsignaltemp;
    wire [0:0] iord_s0_fifo_inst_internal_stream_in_endofpacket;
    wire iord_s0_fifo_inst_internal_stream_in_endofpacket_bitsignaltemp;
    wire [0:0] iord_s0_fifo_inst_internal_stream_in_startofpacket;
    wire iord_s0_fifo_inst_internal_stream_in_startofpacket_bitsignaltemp;
    wire [0:0] iord_s0_fifo_inst_internal_stream_in_valid;
    wire iord_s0_fifo_inst_internal_stream_in_valid_bitsignaltemp;
    wire [0:0] iord_s0_fifo_inst_internal_stream_out_almost_full;
    wire iord_s0_fifo_inst_internal_stream_out_almost_full_bitsignaltemp;
    wire [0:0] iord_s0_fifo_inst_internal_stream_out_ready;
    wire iord_s0_fifo_inst_internal_stream_out_ready_bitsignaltemp;
    wire [0:0] iord_s0_fifo_inst_internal_stream_in_ready;
    wire iord_s0_fifo_inst_internal_stream_in_ready_bitsignaltemp;
    wire [31:0] iord_s0_fifo_inst_internal_stream_out_data;
    wire [0:0] iord_s0_fifo_inst_internal_stream_out_valid;
    wire iord_s0_fifo_inst_internal_stream_out_valid_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iord_s0_fifo_inst_internal(EXTIFACE,8)
    assign iord_s0_fifo_inst_internal_stream_in_data = in_stream_in_data;
    assign iord_s0_fifo_inst_internal_stream_in_empty = GND_q;
    assign iord_s0_fifo_inst_internal_stream_in_endofpacket = GND_q;
    assign iord_s0_fifo_inst_internal_stream_in_startofpacket = GND_q;
    assign iord_s0_fifo_inst_internal_stream_in_valid = in_stream_in_valid;
    assign iord_s0_fifo_inst_internal_stream_out_almost_full = in_stream_out_almost_full;
    assign iord_s0_fifo_inst_internal_stream_out_ready = in_stream_out_ready;
    assign iord_s0_fifo_inst_internal_stream_in_empty_bitsignaltemp = iord_s0_fifo_inst_internal_stream_in_empty[0];
    assign iord_s0_fifo_inst_internal_stream_in_endofpacket_bitsignaltemp = iord_s0_fifo_inst_internal_stream_in_endofpacket[0];
    assign iord_s0_fifo_inst_internal_stream_in_startofpacket_bitsignaltemp = iord_s0_fifo_inst_internal_stream_in_startofpacket[0];
    assign iord_s0_fifo_inst_internal_stream_in_valid_bitsignaltemp = iord_s0_fifo_inst_internal_stream_in_valid[0];
    assign iord_s0_fifo_inst_internal_stream_out_almost_full_bitsignaltemp = iord_s0_fifo_inst_internal_stream_out_almost_full[0];
    assign iord_s0_fifo_inst_internal_stream_out_ready_bitsignaltemp = iord_s0_fifo_inst_internal_stream_out_ready[0];
    assign iord_s0_fifo_inst_internal_stream_in_ready[0] = iord_s0_fifo_inst_internal_stream_in_ready_bitsignaltemp;
    assign iord_s0_fifo_inst_internal_stream_out_valid[0] = iord_s0_fifo_inst_internal_stream_out_valid_bitsignaltemp;
    acl_stream_fifo #(
        .BYPASS_ALMOST_FULL(0),
        .FIFO_DEPTH(8),
        .INTER_KERNEL_PIPELINING(0),
        .ALMOST_FULL_VALUE(8),
        .ASYNC_RESET(1),
        .DATA_W(32),
        .DELAY_READY(0),
        .EMPTY_W(0),
        .STALL_ON_ALMOSTFULL(0),
        .SYNCHRONIZE_RESET(0),
        .USES_PACKETS(0)
    ) theiord_s0_fifo_inst_internal (
        .stream_in_data(in_stream_in_data),
        .stream_in_empty(iord_s0_fifo_inst_internal_stream_in_empty_bitsignaltemp),
        .stream_in_endofpacket(iord_s0_fifo_inst_internal_stream_in_endofpacket_bitsignaltemp),
        .stream_in_startofpacket(iord_s0_fifo_inst_internal_stream_in_startofpacket_bitsignaltemp),
        .stream_in_valid(iord_s0_fifo_inst_internal_stream_in_valid_bitsignaltemp),
        .stream_out_almost_full(iord_s0_fifo_inst_internal_stream_out_almost_full_bitsignaltemp),
        .stream_out_ready(iord_s0_fifo_inst_internal_stream_out_ready_bitsignaltemp),
        .stream_in_ready(iord_s0_fifo_inst_internal_stream_in_ready_bitsignaltemp),
        .stream_out_data(iord_s0_fifo_inst_internal_stream_out_data),
        .stream_out_valid(iord_s0_fifo_inst_internal_stream_out_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stream_in_ready(GPOUT,9)
    assign out_stream_in_ready = iord_s0_fifo_inst_internal_stream_in_ready;

    // out_stream_out_data(GPOUT,10)
    assign out_stream_out_data = iord_s0_fifo_inst_internal_stream_out_data;

    // out_stream_out_valid(GPOUT,11)
    assign out_stream_out_valid = iord_s0_fifo_inst_internal_stream_out_valid;

endmodule
