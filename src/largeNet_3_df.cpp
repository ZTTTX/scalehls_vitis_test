
#include "largeNet_3_df.hpp"

void forward_node0(
  float v0[1][64],
  float v1[64],
  float v2[1][64]
) {	//
  for (int v3 = 0; v3 < 1; v3 += 1) {	// L20
    for (int v4 = 0; v4 < 64; v4 += 1) {	// L20
      float v5 = v0[0][v4];	// L20
      float v6 = v1[v4];	// L20
      float v7 = v5 + v6;	// L22
      v2[v3][v4] = v7;	// L20
    }
  }
}

void forward_node1(
  float v8[1][1024],
  float v10[1][64]
) {	//

  float p_A[1024][16];
  float p_B[1024][64];
  float p_C[16][64];
  float p_R[16][64];

  // Copy c10 to p_B
  for (int i = 0; i < 1024; i++) {
    for (int j = 0; j < 64; j++) {
      p_B[i][j] = 0.0011;
    }
  }

  // Copy c11 to p_A
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 1024; j++) {
      if (i < 1) {
        p_A[j][i] = v8[i][j];
      }
      else {
        p_A[j][i] = 0;
      }
    }
  }

  // Initialize p_C to 0
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 64; j++) {
      p_C[i][j] = 0;
    }
  }

  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strA;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strB;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strC;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strSum;

#pragma HLS DATAFLOW
  gemmMatAMover<float, 16>((float *)p_A, 16, 64, 1024, l_strA);
  gemmMatBMover<float, 16>((float *)p_B, 16, 64, 1024, l_strB);
  readVec2Stream<float, 16>((float *)p_C, 16 * 64, l_strC);
  gemm<float, 1024, 16, 16*64>(16, 64, 1024, 1.00, l_strA, l_strB, 0.00,
                           l_strC, l_strSum);
  writeStream2Vec<float, 16>(l_strSum, 16 * 64, (float *)p_R);

  // Copy p_R to c12
  for (int i = 0; i < 64; i++) {
    v10[0][i] = p_R[0][i];
  }
}

void forward_node2(
  float v11[1][1][32][32],
  float v12[1][1024]
) {	//
  for (int v13 = 0; v13 < 1024; v13 += 1) {	//
    float v14 = v11[0][0][(v13 / 32)][(v13 % 32)];	//
    v12[0][v13] = v14;	//
  }
}

void forward_node3(
  float v8[1][64],
  float v10[1][64]
) {	//

  float p_A[1024][64];
  float p_B[1024][64];
  float p_C[64][64];
  float p_R[64][64];

  // Copy c10 to p_B
  for (int i = 0; i < 1024; i++) {
    for (int j = 0; j < 64; j++) {
      p_B[i][j] = 0.001;
    }
  }

  // Copy c11 to p_A
  for (int i = 0; i < 64; i++) {
    for (int j = 0; j < 1024; j++) {
      if (i < 1 && j < 64) {
        p_A[j][i] = v8[i][j];
      }
      else {
        p_A[j][i] = 0.01;
      }
    }
  }

  // Initialize p_C to 0
  for (int i = 0; i < 64; i++) {
    for (int j = 0; j < 64; j++) {
      p_C[i][j] = 0;
    }
  }

  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strA;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strB;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strC;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strSum;

#pragma HLS DATAFLOW
  gemmMatAMover<float, 16>((float *)p_A, 64, 64, 1024, l_strA);
  gemmMatBMover<float, 16>((float *)p_B, 64, 64, 1024, l_strB);
  readVec2Stream<float, 16>((float *)p_C, 64 * 64, l_strC);
  gemm<float, 1024, 16, 64*64>(64, 64, 1024, 1.00, l_strA, l_strB, 0.00,
                           l_strC, l_strSum);
  writeStream2Vec<float, 16>(l_strSum, 64 * 64, (float *)p_R);

  // Copy p_R to c12
  for (int i = 0; i < 64; i++) {
    v10[0][i] = p_R[0][i];
  }
}

void forward_node4(
  float v8[1][64],
  float v10[1][64]
) {	//

  float p_A[1024][32];
  float p_B[1024][64];
  float p_C[32][64];
  float p_R[32][64];

  // Copy c10 to p_B
  for (int i = 0; i < 1024; i++) {
    for (int j = 0; j < 64; j++) {
      p_B[i][j] = 0.0012;
    }
  }

  // Copy c11 to p_A
  for (int i = 0; i < 32; i++) {
    for (int j = 0; j < 1024; j++) {
      if (i < 1 && j < 64) {
        p_A[j][i] = v8[i][j];
      }
      else {
        p_A[j][i] = 0.01;
      }
    }
  }

  // Initialize p_C to 0
  for (int i = 0; i < 32; i++) {
    for (int j = 0; j < 64; j++) {
      p_C[i][j] = 0;
    }
  }

  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strA;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strB;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strC;
  hls::stream<typename WideType<float, 16>::t_TypeInt> l_strSum;

#pragma HLS DATAFLOW
  gemmMatAMover<float, 16>((float *)p_A, 32, 64, 1024, l_strA);
  gemmMatBMover<float, 16>((float *)p_B, 32, 64, 1024, l_strB);
  readVec2Stream<float, 16>((float *)p_C, 32 * 64, l_strC);
  gemm<float, 1024, 16, 32*64>(32, 64, 1024, 1.00, l_strA, l_strB, 0.00,
                           l_strC, l_strSum);
  writeStream2Vec<float, 16>(l_strSum, 32 * 64, (float *)p_R);

  // Copy p_R to c12
  for (int i = 0; i < 64; i++) {
    v10[0][i] = p_R[0][i];
  }
}

/// This is top function.
void largeNet_3_df(
  float v15[1][1][32][32],
  float v16[1][64],
  float v17[1024][64]
) {	// L7
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface m_axi offset=slave port=v15
  #pragma HLS interface s_axilite port=v15 bundle=ctrl
  #pragma HLS interface m_axi offset=slave port=v16
  #pragma HLS interface s_axilite port=v16 bundle=ctrl
  #pragma HLS interface m_axi offset=slave port=v17
  #pragma HLS interface s_axilite port=v17 bundle=ctrl
  float v18[64] = {(float)0.028799, (float)0.019184, (float)-0.012270, (float)-0.018211, (float)0.028217, (float)-0.022545, (float)0.022272, (float)0.008557, (float)0.019062, (float)0.003067, (float)0.002157, (float)-0.002910, (float)0.012933, (float)0.009919, (float)0.018405, (float)0.013145, (float)-0.027011, (float)-0.019426, (float)-0.006864, (float)0.002867, (float)0.014728, (float)0.025334, (float)0.016700, (float)-0.009678, (float)0.021224, (float)0.025826, (float)0.011888, (float)-0.026725, (float)-0.002453, (float)0.012318, (float)0.027199, (float)0.018682, (float)-0.026768, (float)0.027273, (float)-0.016844, (float)0.010912, (float)-0.022516, (float)-0.005652, (float)0.019256, (float)0.025129, (float)-0.001125, (float)0.009343, (float)0.020913, (float)-0.018394, (float)0.023882, (float)-0.027693, (float)0.025523, (float)-0.002920, (float)0.004418, (float)-0.015000, (float)0.017225, (float)-0.029970, (float)-0.004766, (float)0.030751, (float)-0.013858, (float)-0.026862, (float)-0.003422, (float)-0.029417, (float)-0.030402, (float)0.000192, (float)-0.015011, (float)0.010030, (float)0.021137, (float)0.018205};	// L8
  #pragma HLS resource variable=v18 core=ram_t2p_bram

  float v19[1][1024];	//
  #pragma HLS resource variable=v19 core=ram_t2p_bram

  forward_node2(v15, v19);	//
  float v20[1][64];	// L18

#pragma HLS DATAFLOW
  #pragma HLS resource variable=v20 core=ram_t2p_bram
  forward_node1(v19, v20);	//

  float v21[1][64];	// L18
  #pragma HLS resource variable=v21 core=ram_t2p_bram
  forward_node3(v20, v21);

  float v22[1][64];	// L18
  #pragma HLS resource variable=v22 core=ram_t2p_bram
  forward_node4(v21, v22);

  forward_node0(v22, v18, v16);	//
}
