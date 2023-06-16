
//===------------------------------------------------------------*- C++ -*-===//
//
// Automatically generated file for High-level Synthesis (HLS).
//
//===----------------------------------------------------------------------===//

#include "cemit_replaced_v2.hpp"


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

  float p_A[1024][2];
  float p_B[1024][10];
  float p_C[2][10];
  float p_R[2][10];
  for (int i = 0; i < 1024; i++) {
    for (int j = 0; j < 10; j++) {
      p_B[i][j] = v10[i][j];
    }
  }
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 1024; j++) {
      if (i < 1) {
        p_A[j][i] = v11[i][j];
      } 
      else {
        p_A[j][i] = 0;
      }
    }
  }
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 10; j++) {
      p_C[i][j] = 0;
    }
  }
  
  hls::stream<typename WideType<float, 2>::t_TypeInt> l_strA;
  hls::stream<typename WideType<float, 2>::t_TypeInt> l_strB;
  hls::stream<typename WideType<float, 2>::t_TypeInt> l_strC;
  hls::stream<typename WideType<float, 2>::t_TypeInt> l_strSum;

#pragma HLS DATAFLOW
  gemmMatAMover<float, 2>((float *)p_A, 2, 10, 1024, l_strA);
  gemmMatBMover<float, 2>((float *)p_B, 2, 10, 1024, l_strB);
  readVec2Stream<float, 2>((float *)p_C, 2 * 10, l_strC);
  gemm<float, 1024, 2, 20>(2, 10, 1024, 1.00, l_strA, l_strB, 0.00,
                                                                  l_strC, l_strSum);
  writeStream2Vec<float, 2>(l_strSum, 2 * 10, (float *)p_R);  


  // gemm_test(1, 10, 1024, 1.00, 0.00, (float *)p_A, (float *)p_B, (float *)p_C, (float *)p_R);
  for (int i = 0; i < 10; i++) {
    v12[0][i] = p_R[0][i];
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
void cemit_replaced_v2(
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
  float v20[10] ={(float)-0.006301, (float)0.029061, (float)-0.006143, (float)-0.016538, (float)0.003510, (float)-0.016316, (float)-0.029194, (float)-0.002508, (float)-0.028033, (float)0.000132};
  // float v20[10] = {(float)0.026317, (float)0.030492, (float)-0.031115, (float)-0.007248, (float)-0.004217, (float)-0.028796, (float)0.023664, (float)0.030820, (float)-0.019262, (float)0.025696};	// L8
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


