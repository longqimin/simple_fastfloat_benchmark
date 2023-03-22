#!/bin/bash

declare -a StringArray=("-f data/canada.txt" "-f data/mesh.txt" "-m uniform" "-m uniform -c" "-m simple_int32" "-m simple_int32 -c"  "-m simple_int64" "-m bigint_int_dot_int" "-m big_ints" "-m int_e_int" )

#cmake -B build --parallel
#cmake --build build --parallel
for ((i = 0; i < ${#StringArray[@]}; i++))
do
    echo "./build/benchmarks/benchmark ${StringArray[$i]}"
   ./build/benchmarks/benchmark ${StringArray[$i]}  
done
