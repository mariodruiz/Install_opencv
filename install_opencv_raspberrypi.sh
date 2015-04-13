#!/bin/bash

# Step 0: Again, I’m going to assume that you have just unboxed your Raspberry Pi 2/B+. 
# Open up a terminal and we’ll start by updating and upgrading installed packages, followed 
# by updating the Raspberry Pi firmware:
sudo apt-get update
sudo apt-get upgrade
sudo rpi-update   

# Step 1: Install the required developer tools and packages.
sudo apt-get install build-essential cmake pkg-config 

# Step 2: Install the necessary image I/O packages. These packages allow you to load various image file 
# formats such as JPEG, PNG, TIFF, etc.
sudo apt-get install libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev 

# Step 3: Install the GTK development library. This library is used to build Graphical User Interfaces (GUIs) 
# and is required for the highgui  library of OpenCV which allows you to view images on your screen.
sudo apt-get install libgtk2.0-dev 

# Step 4: Install the necessary video I/O packages. These packages are used to load video files using OpenCV.
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev 

# Step 5: Install libraries that are used to optimize various operations within OpenCV.
sudo apt-get install libatlas-base-dev gfortran 

# Step 6: install pip.
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py 						

# Step 7: Install  virtualenv  and virtualenvwrapper.
sudo pip install virtualenv virtualenvwrapper
# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source ~/.profile
mkvirtualenv cv

# Step 8: Now we can install the Python 2.7 development tools.
sudo apt-get install python2.7-dev
pip install numpy

#Step 9: Download OpenCV and unpack it.
wget -O opencv-2.4.10.zip http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.10/opencv-2.4.10.zip/download
unzip opencv-2.4.10.zip
cd opencv-2.4.10
mkdir build
cd build
cmake \
-D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D INSTALL_C_EXAMPLES=ON \
-D INSTALL_PYTHON_EXAMPLES=ON  \
-D BUILD_EXAMPLES=ON .. /
# compile OpenCV
make -j($shell nproc)
sudo make install
sudo ldconfig

# Step 10: symbolic links.
cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so
ln -s /usr/local/lib/python2.7/site-packages/cv.py cv.py