struct t_config : nnet::conv2d_config {
    typedef float bias_t;
    typedef float weight_t;
    static const unsigned in_height = 64;     
    static const unsigned in_width = 64;      
    static const unsigned n_chan = 1;         
    static const unsigned filt_height = 5;     
    static const unsigned filt_width = 5;      
    static const unsigned n_filt = 1;         
    static const unsigned stride_height = 1;    
    static const unsigned stride_width = 1;     
    static const unsigned out_height = 60;     
    static const unsigned out_width = 60; 
    static const unsigned reuse_factor = 100;     
};
