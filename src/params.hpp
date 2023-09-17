struct t_config : nnet::conv2d_config {
    typedef float bias_t;
    typedef float weight_t;
    static const unsigned in_height = 10;
    static const unsigned in_width = 10;
    static const unsigned n_chan = 1;
    static const unsigned filt_height = 1;
    static const unsigned filt_width = 1;
    static const unsigned n_filt = 1;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = 10;
    static const unsigned out_width = 10;
};
