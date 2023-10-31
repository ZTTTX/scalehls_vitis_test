#include "LeNet_test.hpp"

void hls4ml_conv2d_LeNet_C1(
    float vin[t_config_C1::in_height * t_config_C1::in_width * t_config_C1::n_chan],
    float vout[t_config_C1::out_height * t_config_C1::out_width * t_config_C1::n_filt],
    t_config_C1::weight_t weights[t_config_C1::filt_height * t_config_C1::filt_width * t_config_C1::n_chan * t_config_C1::n_filt],
    t_config_C1::bias_t biases[t_config_C1::n_filt]
) {
    nnet::conv_2d_latency_cl<float, float, t_config_C1>(vin, vout, weights, biases);
}

void hls4ml_conv2d_LeNet_C3(
    float vin[t_config_C3::in_height * t_config_C3::in_width * t_config_C3::n_chan],
    float vout[t_config_C3::out_height * t_config_C3::out_width * t_config_C3::n_filt],
    t_config_C3::weight_t weights[t_config_C3::filt_height * t_config_C3::filt_width * t_config_C3::n_chan * t_config_C3::n_filt],
    t_config_C3::bias_t biases[t_config_C3::n_filt]
) {
    nnet::conv_2d_latency_cl<float, float, t_config_C3>(vin, vout, weights, biases);
}

void max_pooling_S2(float input[S2_in_height * S2_in_width * S2_n_chan], 
                   float output[S2_out_height * S2_out_width * S2_n_chan]) {
    for(int c = 0; c < S2_n_chan; c++) {
        for(int i = 0; i < S2_out_height; i++) {
            for(int j = 0; j < S2_out_width; j++) {
                float max_val = -1e9;  // Initialize with a very small value
                for(int x = 0; x < S2_pool_size; x++) {
                    for(int y = 0; y < S2_pool_size; y++) {
                        float value = input[c * S2_in_height * S2_in_width + (i * S2_pool_size + x) * S2_in_width + (j * S2_pool_size + y)];
                        if(value > max_val) {
                            max_val = value;
                        }
                    }
                }
                output[c * S2_out_height * S2_out_width + i * S2_out_width + j] = max_val;
            }
        }
    }
}

void max_pooling_S4(float input[S4_in_height * S4_in_width * S4_n_chan], 
                   float output[S4_out_height * S4_out_width * S4_n_chan]) {
    for(int c = 0; c < S4_n_chan; c++) {
        for(int i = 0; i < S4_out_height; i++) {
            for(int j = 0; j < S4_out_width; j++) {
                float max_val = -1e9;  // Initialize with a very small value
                for(int x = 0; x < S4_pool_size; x++) {
                    for(int y = 0; y < S4_pool_size; y++) {
                        float value = input[c * S4_in_height * S4_in_width + (i * S4_pool_size + x) * S4_in_width + (j * S4_pool_size + y)];
                        if(value > max_val) {
                            max_val = value;
                        }
                    }
                }
                output[c * S4_out_height * S4_out_width + i * S4_out_width + j] = max_val;
            }
        }
    }
}

void fully_connected_FC1(
  float v8[400], //input
  float v9[400][120], //weigths
  float v10[120] //output
) {	//

  float p_A[400][16]; //input
  float p_B[400][120]; //weights
  float p_C[16][120]; //biases
  float p_R[16][120]; //output

  // Copy c10 to p_B
  for (int i = 0; i < 400; i++) {
    for (int j = 0; j < 120; j++) {
      p_B[i][j] = v9[i][j];
    }
  }

  // Copy c11 to p_A
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 400; j++) {
      if (i < 1) {
        p_A[j][i] = v8[j];
      }
      else {
        p_A[j][i] = 0;
      }
    }
  }

  // Initialize p_C to 0
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 120; j++) {
      p_C[i][j] = 0;
    }
  }

  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strA;
  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strB;
  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strC;
  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strSum;

// #pragma HLS DATAFLOW
  xf::blas::gemmMatAMover<float, 4>((float *)p_A, 16, 120, 400, l_strA);
  xf::blas::gemmMatBMover<float, 4>((float *)p_B, 16, 120, 400, l_strB);
  xf::blas::readVec2Stream<float, 4>((float *)p_C, 16 * 120, l_strC);
  xf::blas::gemm<float, 400, 4, 16*120>(16, 120, 400, 1.00, l_strA, l_strB, 0.00,
                           l_strC, l_strSum);
  xf::blas::writeStream2Vec<float, 4>(l_strSum, 16 * 120, (float *)p_R);

  // Copy p_R to c12
  for (int i = 0; i < 120; i++) {
    v10[i] = p_R[0][i];
  }

}

void fully_connected_FC2(
  float v81[120], //input
  float v91[120][84], //weights
  float v101[84]
) {	//

  float p_A[120][16];
  float p_B[120][84];
  float p_C[16][84];
  float p_R[16][84];

  // Copy c10 to p_B
  for (int i = 0; i < 120; i++) {
    for (int j = 0; j < 84; j++) {
      p_B[i][j] = v91[i][j];
    }
  }

  // Copy c11 to p_A
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 120; j++) {
      if (i < 1) {
        p_A[j][i] = v81[j];
      }
      else {
        p_A[j][i] = 0;
      }
    }
  }

  // Initialize p_C to 0
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 84; j++) {
      p_C[i][j] = 0;
    }
  }

  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strA;
  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strB;
  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strC;
  hls::stream<typename xf::blas::WideType<float, 4>::t_TypeInt> l_strSum;

// #pragma HLS DATAFLOW
  xf::blas::gemmMatAMover<float, 4>((float *)p_A, 16, 84, 120, l_strA);
  xf::blas::gemmMatBMover<float, 4>((float *)p_B, 16, 84, 120, l_strB);
  xf::blas::readVec2Stream<float, 4>((float *)p_C, 16 * 84, l_strC);
  xf::blas::gemm<float, 120, 4, 16*84>(16, 84, 120, 1.00, l_strA, l_strB, 0.00,
                           l_strC, l_strSum);
  xf::blas::writeStream2Vec<float, 4>(l_strSum, 16 * 84, (float *)p_R);

  // Copy p_R to c12
  for (int i = 0; i < 84; i++) {
    v101[i] = p_R[0][i];
  }

}

void LeNet_test(float image_top[t_config_C1::in_height * t_config_C1::in_width * t_config_C1::n_chan], 
            float out_top[10],
            float weights1[t_config_C1::filt_height * t_config_C1::filt_width * t_config_C1::n_chan * t_config_C1::n_filt],
            float biases1[t_config_C1::n_filt],
            float weights2[t_config_C3::filt_height * t_config_C3::filt_width * t_config_C3::n_chan * t_config_C3::n_filt],
            float biases2[t_config_C3::n_filt],
            float weights_FC1[5*5*16][120],
            float weights_FC2[120][84],
            float weights_output[84 * 10],
            float biases_output[10]){

#pragma HLS interface s_axilite port=return bundle=control

#pragma HLS interface m_axi offset=slave port=image_top
#pragma HLS interface s_axilite port=image_top bundle=control

#pragma HLS interface m_axi offset=slave port=out_top
#pragma HLS interface s_axilite port=out_top bundle=control

#pragma HLS interface m_axi offset=slave port=weights1
#pragma HLS interface s_axilite port=weights1 bundle=control

#pragma HLS interface m_axi offset=slave port=biases1
#pragma HLS interface s_axilite port=biases1 bundle=control

#pragma HLS interface m_axi offset=slave port=weights2
#pragma HLS interface s_axilite port=weights2 bundle=control

#pragma HLS interface m_axi offset=slave port=biases2
#pragma HLS interface s_axilite port=biases2 bundle=control

#pragma HLS interface m_axi offset=slave port=weights_FC1
#pragma HLS interface s_axilite port=weights_FC1 bundle=control

#pragma HLS interface m_axi offset=slave port=weights_FC2
#pragma HLS interface s_axilite port=weights_FC2 bundle=control

#pragma HLS interface m_axi offset=slave port=weights_output
#pragma HLS interface s_axilite port=weights_output bundle=control

#pragma HLS interface m_axi offset=slave port=biases_output
#pragma HLS interface s_axilite port=biases_output bundle=control

//for conv
    float v1_out[t_config_C1::out_height * t_config_C1::out_width * t_config_C1::n_filt];
#pragma HLS resource variable=v1_out core=ram_t2p_bram
    hls4ml_conv2d_LeNet_C1(image_top, v1_out, weights1, biases1);

 //for pooling   
    float v2_in[t_config_C3::in_height * t_config_C3::in_width * t_config_C3::n_chan];
#pragma HLS resource variable=v2_in core=ram_t2p_bram
    max_pooling_S2(v1_out, v2_in);

//for conv
    float v2_out[t_config_C3::out_height * t_config_C3::out_width * t_config_C3::n_filt];
#pragma HLS resource variable=v2_out core=ram_t2p_bram
    hls4ml_conv2d_LeNet_C3(v2_in, v2_out, weights2, biases2);

 //for pooling  
    float v3_in[5*5*16];
#pragma HLS resource variable=v3_in core=ram_t2p_bram
    // max_pooling_S4(v2_out, v3_in);

    float fc1_output[120];
#pragma HLS resource variable=fc1_output core=ram_t2p_bram
    fully_connected_FC1(v3_in,  weights_FC1, fc1_output);

    float fc2_output[84];
#pragma HLS resource variable=fc2_output core=ram_t2p_bram
    fully_connected_FC2(fc1_output,  weights_FC2, fc2_output);

    for(int i = 0; i < 10; i++) {
        out_top[i] = 0;
        for(int j = 0; j < 84; j++) {
            out_top[i] += fc2_output[j] * weights_output[i * 84 + j];
        }
        out_top[i] += biases_output[i];
        // Softmax is typically applied on this output but it's skipped for brevity
    }
}