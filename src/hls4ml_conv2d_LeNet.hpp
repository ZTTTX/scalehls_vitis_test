
#include <complex>
#include "ap_int.h"
#include "ap_fixed.h"

#include "nnet_conv2d.h"


#include "params_LeNet.hpp"




void hls4ml_conv2d_LeNet(
    float vin[t_config::in_height * t_config::in_width * t_config::n_chan],
    float vout[t_config::out_height * t_config::out_width * t_config::n_filt],
    t_config::weight_t weights[t_config::filt_height * t_config::filt_width * t_config::n_chan * t_config::n_filt],
    t_config::bias_t biases[t_config::n_filt]
);



