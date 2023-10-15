// (c) 1992-2021 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 
// Generated by Intel(R) HLS Compiler, Version 21.4.0 Build 53.1

/////////////////////////////////////////////////////////////////
// MODULE ActorSIMOToken3_internal
/////////////////////////////////////////////////////////////////
module ActorSIMOToken3_internal
(
   input logic clock,
   input logic resetn,
   // AVST s0
   input logic s0_valid,
   output logic s0_ready,
   input logic [31:0] s0_data,
   // AVST s1
   output logic s1_valid,
   input logic s1_ready,
   output logic [31:0] s1_data
);
   // INST ActorSIMOToken3_internal of ActorSIMOToken3_function_wrapper
   ActorSIMOToken3_function_wrapper ActorSIMOToken3_internal
   (
      .clock(clock),
      .resetn(resetn),
      // AVST avst_iord_bl_s0
      .avst_iord_bl_s0_valid(s0_valid),
      .avst_iord_bl_s0_ready(s0_ready),
      .avst_iord_bl_s0_data(s0_data),
      // AVST avst_iowr_s1
      .avst_iowr_s1_valid(s1_valid),
      .avst_iowr_s1_ready(s1_ready),
      .avst_iowr_s1_data(s1_data)
   );

endmodule

