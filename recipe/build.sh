#!/bin/bash
set -eu

### Create Makefiles
cmake -GNinja \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DCMAKE_BUILD_TYPE=Release \
      -DINCLUDE_INSTALL_DIR=$PREFIX/include \
      -DLIB_INSTALL_DIR=$PREFIX/lib \
      -S Project/CMake \
      -B build

### Build
cmake  --build build --parallel ${CPU_COUNT}

### Install
cmake --build build -- install
