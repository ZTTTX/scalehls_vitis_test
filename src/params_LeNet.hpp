struct t_config : nnet::conv2d_config {
    typedef float bias_t;
    typedef float weight_t;
    static const unsigned in_height = 32;      // Common input size for CIFAR-10 dataset
    static const unsigned in_width = 32;       // Common input size for CIFAR-10 dataset
    static const unsigned n_chan = 3;          // RGB channels
    static const unsigned filt_height = 3;     // Typical filter size for lightweight conv nets
    static const unsigned filt_width = 3;      // Typical filter size for lightweight conv nets
    static const unsigned n_filt = 64;         // 64 different filters
    static const unsigned stride_height = 1;   // Common stride
    static const unsigned stride_width = 1;    // Common stride
    static const unsigned out_height = 30;     // Computed based on in_height, filt_height, and stride_height: ((32-3)/1)+1 = 30
    static const unsigned out_width = 30;      // Computed based on in_width, filt_width, and stride_width: ((32-3)/1)+1 = 30
};