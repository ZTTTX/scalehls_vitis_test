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

using namespace xf;
using namespace blas;

void forward_node0(
  float v0[1][64],
  float v1[64],
  float v2[1][64]
) ;

void forward_node1(
  float v8[1][1024],
  float v9[1024][64],
  float v10[1][64]
);

void forward_node3(
  float v8[1][1024],
  float v9[1024][64],
  float v10[1][64]
);
void forward_node4(
  float v8[1][1024],
  float v9[1024][64],
  float v10[1][64]
);

void forward_node2(
  float v11[1][1][32][32],
  float v12[1][1024]
);

/// This is top function.
void largeNet_3(
  float v15[1][1][32][32],
  float v16[1][64],
  float v17[1024][64]
);