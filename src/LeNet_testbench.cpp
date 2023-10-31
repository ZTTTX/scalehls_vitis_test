#include <iostream>
#include <random>
#include "LeNet_test.hpp"

// Function to generate random floating-point numbers between a given range
float getRandomFloat(float min, float max) {
    static std::default_random_engine generator(42); // Using a fixed seed for reproducibility
    std::uniform_real_distribution<float> distribution(min, max);
    return distribution(generator);
}

// Function to compare floating-point values with a tolerance
bool isClose(float a, float b, float tolerance = 0.0001) {
    return hls::abs(a - b) <= tolerance;
}
void testbench() {
    float min = -1.0;
    float max = 1.0;

    // Input and output arrays
    float image_top[t_config_C1::in_height * t_config_C1::in_width * t_config_C1::n_chan];
    float out_top[10];

    // Weights and biases for Conv1
    float weights1[t_config_C1::filt_height * t_config_C1::filt_width * t_config_C1::n_chan * t_config_C1::n_filt];
    float biases1[t_config_C1::n_filt];

    // Weights and biases for Conv3
    float weights2[t_config_C3::filt_height * t_config_C3::filt_width * t_config_C3::n_chan * t_config_C3::n_filt];
    float biases2[t_config_C3::n_filt];

    // Weights and biases for FC1
    float weights_FC1[5*5*16][120];

    // Weights and biases for FC2
    float weights_FC2[120][84];

    // Weights and biases for final output layer
    float weights_output[84 * 10];
    float biases_output[10];

    // Initialize input arrays with random values
    // ... [The initialization you previously had for the image, weights1, biases1, weights2, and biases2] ...

    for (int i = 0; i < 5*5*16 ; i++) {
        for (int j=0; j < 120; j++) {
            weights_FC1[i][j] = getRandomFloat(min, max);
        }
    }

    for (int i = 0; i < 120; i++) {
        for (int j = 0; j < 84; j++) {
            weights_FC2[i][j] = getRandomFloat(min, max);
        }
    }

    for (int i = 0; i < 84 * 10; i++) {
        weights_output[i] = getRandomFloat(min, max);
    }

    for (int i = 0; i < 10; i++) {
        biases_output[i] = getRandomFloat(min, max);
    }

    // Call the top function
    LeNet_test(image_top, out_top, weights1, biases1, weights2, biases2, weights_FC1, weights_FC2, weights_output, biases_output);

    // Print output array contents
    std::cout << "Output of LeNet_top: " << std::endl;
    for (int i = 0; i < 10; i++) {
        std::cout << out_top[i] << " ";
    }
    std::cout << "\n";

    std::cout << "RUN DONE RUN DONE RUN DONE RUN DONE RUN DONE\n" << std::endl;
}

int main() {
    testbench();
    return 0;
}
