#!/bin/sh

cd RGBDPlaneDetection/include/MRF2.2
make
cd ../../..
mkdir -p build
cd build
cmake ../RGBDPlaneDetection
make
cd ..