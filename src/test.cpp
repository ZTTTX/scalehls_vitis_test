
// #include <iostream>

// int main() {
//     std::cout << "\n\nTEST TEST TEST TEST TEST TEST TEST TEST\n\n" << std::endl;
//     return 0;
// }


#include <iostream>
#include <random>
#include <ctime>
#include "hls_math.h"
#include "forward.hpp"
#include "cemit_replaced_v2.hpp"

void expected_forward_node0(
  float e_v0[1][10],
  float e_v1[10],
  float e_v2[1][10]
) {
  for (int e_v3 = 0; e_v3 < 1; e_v3 += 1) {
    for (int e_v4 = 0; e_v4 < 10; e_v4 += 1) {
      float e_v5 = e_v0[0][e_v4];
      float e_v6 = e_v1[e_v4];
      float e_v7 = e_v5 + e_v6;
      bool e_v8 = e_v7 > (float)0.000000;
      float e_v9 = e_v8 ? e_v7 : (float)0.000000;
      e_v2[e_v3][e_v4] = e_v9;
    }
  }
}

void expected_forward_node1(
  float e_v10[1][1024],
  float e_v11[1024][10],
  float e_v12[1][10]
) {
  for (int e_v13 = 0; e_v13 < 1; e_v13 += 1) {
    for (int e_v14 = 0; e_v14 < 10; e_v14 += 1) {
      for (int e_v15 = 0; e_v15 < 1024; e_v15 += 1) {
        float e_v16 = e_v10[e_v13][e_v15];
        float e_v17 = e_v11[e_v15][e_v14];
        float e_v18 = e_v12[e_v13][e_v14];
        float e_v19 = e_v16 * e_v17;
        float e_v20 = e_v18 + e_v19;
        e_v12[e_v13][e_v14] = e_v20;
      }
    }
  }
}

void expected_forward_node2(
  float e_v21[1][1][32][32],
  float e_v22[1][1024]
) {
  for (int e_v23 = 0; e_v23 < 1024; e_v23 += 1) {
    float e_v24 = e_v21[0][0][(e_v23 / 32)][(e_v23 % 32)];
    e_v22[0][e_v23] = e_v24;
  }
}

void expected_forward(
  float e_v25[1][1][32][32],
  float e_v26[1][10],
  float e_v27[1024][10]
) {
  float e_v28[10] =  {(float)0.026317, (float)0.030492, (float)-0.031115, (float)-0.007248, (float)-0.004217, (float)-0.028796, (float)0.023664, (float)0.030820, (float)-0.019262, (float)0.025696};
  float e_v29[1][1024];
  expected_forward_node2(e_v25, e_v29);
  float e_v30[1][10];
  expected_forward_node1(e_v29, e_v27, e_v30);
  expected_forward_node0(e_v30, e_v28, e_v26);
}


// Function to compare floating-point values with a tolerance
bool isClose(float a, float b, float tolerance = 0.0001) {
    return hls::abs(a - b) <= tolerance;
}

// Function to generate random floating-point numbers between a given range
float getRandomFloat(float min, float max) {
    static std::default_random_engine generator(42);
    // static std::default_random_engine generator(time(nullptr));
    std::uniform_real_distribution<float> distribution(min, max);
    return distribution(generator);
}

// Function to perform the forward calculations manually for verification
void calculateForward(
    float c_v25[1][1][32][32],
    float c_v26[1][10],
    float c_v27[1024][10]
) {
    expected_forward(c_v25, c_v26, c_v27);
}

// Testbench function
void testbench() {
    float min = -1.0;
    float max = 1.0;
    // Input and output arrays
    float v25b[1][1][32][32];
    float v26b[1][10];
    float v27b[1024][10];
    float expected_v25b[1][1][32][32];
    float expected_v26b[1][10];
    float expected_v27b[1024][10];

    // Initialize input arrays with random values
    for (int i = 0; i < 1; i++) {
        for (int j = 0; j < 1; j++) {
            for (int k = 0; k < 32; k++) {
                for (int l = 0; l < 32; l++) {
                    v25b[i][j][k][l] = getRandomFloat(min, max);
                    expected_v25b[i][j][k][l] = v25b[i][j][k][l];
                }
            }
        }
    }

    // Initialize v26b and v27b with random values for testing
    for (int i = 0; i < 1; i++) {
        for (int j = 0; j < 10; j++) {
            // v26b[i][j] = getRandomFloat(min, max);
            v26b[i][j] = 0;
            expected_v26b[i][j] = 0;
        }
    }
    for (int i = 0; i < 1024; i++) {
        for (int j = 0; j < 10; j++) {
            v27b[i][j] = getRandomFloat(min, max);
            expected_v27b[i][j] = v27b[i][j];
        }
    }

    // Call the top function
    cemit_replaced_v2(v25b, v26b, v27b);
    // forward(v25b, v26b, v27b);

    // Calculate the expected output manually
    calculateForward(expected_v25b, expected_v26b, expected_v27b);

    // Perform verification
    bool v26bPassed = true;

    for (int i = 0; i < 1; i++) {
        for (int j = 0; j < 10; j++) {
            if (!isClose(v26b[i][j], expected_v26b[i][j])) {
                v26bPassed = false;
                break;
            }
        }
    }

    std::cout << "Output: " << std::endl;
    for (int i = 0; i < 1; i++) {
        for (int j = 0; j < 10; j++) {
            // std::cout << "Num: " << i << ", " << j << "; golden: " << expected_v26b[i][j] << ";  get: " << v26b[i][j] << " \n" << std::endl;
            std::cout << "golden: " << expected_v26b[i][j] << ";  get: " << v26b[i][j] << " \n" << std::endl;
        }
    }
    // Print output array contents
    std::cout << "v26b Assertion: " << (v26bPassed ? "Passed" : "Failed") << "\n"<< std::endl;
    std::cout << "RUN DONE RUN DONE RUN DONE RUN DONE RUN DONE\n" << std::endl;
}


int main() {
    testbench();
    return 0;
}

