//  This file is used to generate HLS Component of SDF graph With HLS Compiler                               
// For creat the HLS Component please Run ./run_Fpga.sh SDFgraph.cpp  on this file directoris
                                          
#include <iostream>
#include "HLS/hls.h"

// It is recommended to use ihc::stream_in/ihc::stream_out for communicating
// outside the component and ihc::stream for within the component. However, in
// this example, since the generalized task_function can only take ihc::stream
// as a reference parameter, we must use ihc::stream for communicating
// with the external system.


ihc::stream<int, ihc::buffer<8> > s0, s1, s2, s3, s4;


// Functions that are launched cannot take reference parameters so to reuse

void taskFunction_ActorA(ihc::stream<int, ihc::buffer<8> > &s0_in,ihc::stream<int, ihc::buffer<8> > &s1_out, ihc::stream<int, ihc::buffer<8> > &s2_out) {
    static unsigned int cnt = 0;
    if(cnt==0)
    {
    	cnt++;
    	s1_out.write(1);
    	s2_out.write(1);
    	s2_out.write(1);
    	
    	s1_out.write(1);
    	s2_out.write(1);
    	s2_out.write(1);
    	
    }
    else
    {
    	if(cnt==10)
    	{
	    	cnt=1;
		int input = s0_in.read();
		input += 1;
		s1_out.write(1);
    		s2_out.write(1);
    		s2_out.write(1);
    	}
    	else
    	{
	    	cnt++;
		int input = s0_in.read();
		input += 1;
		s1_out.write(input );
		s2_out.write(input );
		s2_out.write(input );
    	}
    	
    }
    
}

void taskFunction_ActorB(ihc::stream<int, ihc::buffer<8> > &A2,ihc::stream<int, ihc::buffer<8> > &A3) {
    int input = A2.read();
    input = A2.read();
    input = A2.read();
    input = A2.read();
    A3.write(input);
}

void taskFunction_ACtorC(ihc::stream<int, ihc::buffer<8> > &A1,ihc::stream<int, ihc::buffer<8> > &A2,ihc::stream<int, ihc::buffer<8> > &A3) {
    int input1 = A1.read();
    input1 = A1.read();
    int input2 = A2.read();
    A3.write(input1);
    A3.write(input1);

}

void task_1() {
  taskFunction_ActorA(s0, s1, s2);
}

void task_2() {
  taskFunction_ActorB(s2,s3);
}

void task_3() {
  taskFunction_ACtorC(s1,s3,s4);
}



component  hls_always_run_component void SDF_HLS_component() {
  ihc::launch_always_run<task_1>();
  ihc::launch_always_run<task_2>();
  ihc::launch_always_run<task_3>();

}



