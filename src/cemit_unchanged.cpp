
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
#include "Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp"

using namespace std

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
) {	//
  gemm<float, int, 32, 2, 1024>((int)1, (int)10, (int)1024, (float)1.000000, (float)0.000000, v10, v11, v12, v12);	// L19
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
void forward(
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

  forward_node1(v19, v21, v22);	//
  forward_node0(v22, v20, v18);	//
}


