
//===------------------------------------------------------------*- C++ -*-===//
//
// Automatically generated file for High-level Synthesis (HLS).
//
//===----------------------------------------------------------------------===//

#include <algorithm>
#include <ap_axi_sdata.h>
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_math.h>
#include <hls_stream.h>
#include <hls_vector.h>
#include <math.h>
#include <stdint.h>
#include <string.h>

#include "ap_int.h"
#include "hls_stream.h"
#include "xf_blas.hpp"
#include "xf_blas/uut_top.hpp"

using namespace xf;
using namespace blas;

void forward_node0(
  float v0[1][10],
  float v1[10],
  float v2[1][10]
) {	//
  for (int v3 = 0; v3 < 1; v3 += 1) {	// L25
    for (int v4 = 0; v4 < 10; v4 += 1) {	// L25
      float v5 = v0[0][v4];	// L25
      float v6 = v1[v4];	// L25
      float v7 = v5 + v6;	// L22
      bool v8 = v7 > (float)0.000000;	// L27
      float v9 = v8 ? v7 : (float)0.000000;	// L28
      v2[v3][v4] = v9;	// L25
    }
  }
}

void forward_node1(
  float v10[1024][10],
  float v11[1][1024],
  float v12[1][10]
) {	
  float p_A[1024];
  float p_B[10240];
  float p_C[10];
  float p_R[10];

  // Unroll v10 into p_A (1024 10)
  for (int i = 0; i < 1024; i++) {
    for (int j = 0; j < 10; j++) {
      p_B[i * 10 + j] = v10[i][j];
    }
  }
  for (int i = 0; i < 1024; i++) {
    p_A[i] = v11[0][i];
  }
  for (int i = 0; i < 10; i++) {
    p_C[i] = 0;
  }
  uut_top(1, 10, 1024, 1.00, 0.00, (float *)p_A, (float *)p_B, (float *)p_C, (float *)p_R);
  for (int i = 0; i < 10; i++) {
    v12[0][i] = p_R[i];
  }

}

void forward_node2(
  float v13[1][1][32][32],
  float v14[1][1024]
) {	//
  for (int v15 = 0; v15 < 1024; v15 += 1) {	//
    float v16 = v13[0][0][(v15 / 32)][(v15 % 32)];	//
    v14[0][v15] = v16;	//
  }
}

/// This is top function.
void cemit_replaced(
  float v17[1][1][32][32],
  float v18[1][10],
  float v19[1024][10]
) {	// L7
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface m_axi offset=slave port=v17
  #pragma HLS interface s_axilite port=v17 bundle=ctrl
  #pragma HLS interface m_axi offset=slave port=v18
  #pragma HLS interface s_axilite port=v18 bundle=ctrl
  #pragma HLS interface m_axi offset=slave port=v19
  #pragma HLS interface s_axilite port=v19 bundle=ctrl
  float v20[10] = {(float)0.026317, (float)0.030492, (float)-0.031115, (float)-0.007248, (float)-0.004217, (float)-0.028796, (float)0.023664, (float)0.030820, (float)-0.019262, (float)0.025696};	// L8
  #pragma HLS resource variable=v20 core=ram_t2p_bram

  float v21[1][1024];	//
  #pragma HLS resource variable=v21 core=ram_t2p_bram

  forward_node2(v17, v21);	//
  float v22[1][10];	// L18
  #pragma HLS resource variable=v22 core=ram_t2p_bram
  float v30[1][10];	// L18
  #pragma HLS resource variable=v30 core=ram_t2p_bram
  forward_node1(v19, v21, v22);	//

  forward_node0(v22, v20, v18);	//
}


