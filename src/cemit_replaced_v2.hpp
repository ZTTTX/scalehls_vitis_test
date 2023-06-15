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

void cemit_replaced_v2(
  float v17[1][1][32][32],
  float v18[1][10],
  float v19[1024][10]
);

void forward_node2(
  float v13[1][1][32][32],
  float v14[1][1024]
);

void forward_node1(
  float v10[1024][10],
  float v11[1][1024],
  float v12[1][10]
);

void forward_node0(
  float v0[1][10],
  float v1[10],
  float v2[1][10]
);