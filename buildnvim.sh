#!/bin/sh
rm -rf build && 
  cmake -S cmake.deps -B .deps -G Ninja && cmake --build .deps &&
  cmake -B build -G Ninja -D CMAKE_C_FLAGS="$( pkg-config --cflags guile-3.0 ) $( pkg-config --libs guile-3.0 )" && 
  cmake --build build
