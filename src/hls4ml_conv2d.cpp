#include "hls4ml_conv2d.hpp"



void hls4ml_conv2d(
    float vin[t_config::in_height * t_config::in_width * t_config::n_chan],
    float vout[t_config::out_height * t_config::out_width * t_config::n_filt],
    t_config::weight_t weights[t_config::filt_height * t_config::filt_width * t_config::n_chan * t_config::n_filt],
    t_config::bias_t biases[t_config::n_filt]
) {
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface m_axi offset=slave port=vin
  #pragma HLS interface s_axilite port=vin bundle=ctrl

  #pragma HLS interface m_axi offset=slave port=vout
  #pragma HLS interface s_axilite port=vout bundle=ctrl

  #pragma HLS interface m_axi offset=slave port=weights
  #pragma HLS interface s_axilite port=weights bundle=ctrl
  
  #pragma HLS interface m_axi offset=slave port=biases
  #pragma HLS interface s_axilite port=biases bundle=ctrl
    // Call the conv_2d function
    nnet::conv_2d_latency_cl<float, float, t_config>(vin, vout, weights, biases);
}


