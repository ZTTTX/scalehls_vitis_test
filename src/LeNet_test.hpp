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

#include "nnet_conv2d.h"

// using namespace xf;
// using namespace blas;

const int S4_in_height = 10;
const int S4_in_width = 10;
const int S4_n_chan = 16;
const int S4_out_height = 5;
const int S4_out_width = 5;
const int S4_pool_size = 2;
const int S2_in_height = 28;
const int S2_in_width = 28;
const int S2_n_chan = 6;
const int S2_out_height = 14;
const int S2_out_width = 14;
const int S2_pool_size = 2;
struct t_config_C1 : nnet::conv2d_config {
    typedef float bias_t;
    typedef float weight_t;
    static const unsigned in_height = 32;
    static const unsigned in_width = 32;
    static const unsigned n_chan = 1;
    static const unsigned filt_height = 5;
    static const unsigned filt_width = 5;
    static const unsigned n_filt = 6;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = 28;
    static const unsigned out_width = 28;
};

struct t_config_C3 : nnet::conv2d_config {
    typedef float bias_t;
    typedef float weight_t;
    static const unsigned in_height = 14;
    static const unsigned in_width = 14;
    static const unsigned n_chan = 6;
    static const unsigned filt_height = 5;
    static const unsigned filt_width = 5;
    static const unsigned n_filt = 16;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = 10;
    static const unsigned out_width = 10;
};

void hls4ml_conv2d_LeNet_C1(
    float vin[t_config_C1::in_height * t_config_C1::in_width * t_config_C1::n_chan],
    float vout[t_config_C1::out_height * t_config_C1::out_width * t_config_C1::n_filt],
    t_config_C1::weight_t weights[t_config_C1::filt_height * t_config_C1::filt_width * t_config_C1::n_chan * t_config_C1::n_filt],
    t_config_C1::bias_t biases[t_config_C1::n_filt]
);
void hls4ml_conv2d_LeNet_C3(
    float vin[t_config_C3::in_height * t_config_C3::in_width * t_config_C3::n_chan],
    float vout[t_config_C3::out_height * t_config_C3::out_width * t_config_C3::n_filt],
    t_config_C3::weight_t weights[t_config_C3::filt_height * t_config_C3::filt_width * t_config_C3::n_chan * t_config_C3::n_filt],
    t_config_C3::bias_t biases[t_config_C3::n_filt]
);
void max_pooling_S2(float input[S2_in_height * S2_in_width * S2_n_chan], 
                   float output[S2_out_height * S2_out_width * S2_n_chan]);

void max_pooling_S4(float input[S4_in_height * S4_in_width * S4_n_chan], 
                   float output[S4_out_height * S4_out_width * S4_n_chan]);

void fully_connected_FC1(
  float v8[400], //input
  float v9[400 * 120], //weigths
  float v10[120] //output
);

void fully_connected_FC2(
  float v81[120], //input
  float v91[120 * 84], //weights
  float v101[84]
);

void LeNet_test(float image_top[t_config_C1::in_height * t_config_C1::in_width * t_config_C1::n_chan], 
            float out_top[10],
            float weights1[t_config_C1::filt_height * t_config_C1::filt_width * t_config_C1::n_chan * t_config_C1::n_filt],
            float biases1[t_config_C1::n_filt],
            float weights2[t_config_C3::filt_height * t_config_C3::filt_width * t_config_C3::n_chan * t_config_C3::n_filt],
            float biases2[t_config_C3::n_filt],
            float weights_FC1[5*5*16][120],
            float weights_FC2[120][84],
            float weights_output[84*10],
            float biases_output[10]);


