<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="largeNet_2_copy" name="largeNet_2_copy.prj">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../src/test.cpp" sc="0" tb="1" cflags=" -I../../src/Vitis_Libraries/blas/L1/include/hw -std=c++14  -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="src/largeNet_2_copy.cpp" sc="0" tb="false" cflags="-std=c++14 -Isrc/Vitis_Libraries/blas/L1/include/hw -Isrc/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils -Isrc/Vitis_Libraries/blas/L1/tests/hw/gemm" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="sol" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

