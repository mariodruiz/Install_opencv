#! /bin/bash

#RaspiCam: C++ API for using Raspberry camera with/without OpenCv

# Step 1: Download the sources
wget http://sourceforge.net/projects/raspicam/files/raspicam-0.1.3.zip/download

# Step 2: Uncompres .zip
unzip download

# Step 3: Configurating
cd raspicam-0.1.3
mkdir build
cd build
cmake ..

# Step 4: Compiling

make -j5
sudo make install
sudo ldconfig