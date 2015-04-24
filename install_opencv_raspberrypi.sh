#!/bin/bash

# Step 0: Again, I’m going to assume that you have just unboxed your Raspberry Pi 2/B+. 
# Open up a terminal and we’ll start by updating and upgrading installed packages, followed 
# by updating the Raspberry Pi firmware:
sudo apt-get -y update
sudo apt-get -y upgrade

# Step 1: Install the required developer tools and packages.
sudo apt-get install -y rpi-update  build-essential cmake pkg-config libjpeg8-dev libtiff4-dev libjasper-dev \
libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev gfortran python2.7-dev

# Step 2: install pip.
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py 	

pip install numpy	

# Step 3: Install  virtualenv  and virtualenvwrapper.
sudo pip install virtualenv virtualenvwrapper
# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source ~/.profile
mkvirtualenv cv

#Step 4: Download OpenCV and unpack it.
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
-D BUILD_EXAMPLES=ON .. 
# compile OpenCV
make -j($shell nproc)
sudo make install
sudo ldconfig

# Step 5: symbolic links.
cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so
ln -s /usr/local/lib/python2.7/site-packages/cv.py cv.py