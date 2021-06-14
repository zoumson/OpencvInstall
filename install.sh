#!/bin/bash
############### Dependencies #######################
# First group of dependencies
 apt-get install libgtk-3-dev pkg-config ffmpeg python-numpy             \
 libjpeg-dev libpng-dev libtiff-dev libdc1394-22 libeigen3-dev           \
 libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev
 
# Second group of dependencies
 apt-get install sphinx-common yasm libfaac-dev libopencore-amrnb-dev    \
 libopencore-amrwb-dev libopenexr-dev                                    \
 libgstreamer-plugins-base1.0-dev 
 
# Third group of dependencies 
 apt-get install libglu1-mesa-dev freeglut3-dev mesa-common-dev          \
 qt5-d

############### Installation #######################
 cd /no && mkdir OpencvInstall && cd OpencvInstall                       \
 && git clone https://github.com/Itseez/opencv.git                       \
 && git clone  https://github.com/Itseez/opencv_contrib.git              \
 && cd opencv && mkdir build && cd build                                 \
 && cmake -D CMAKE_BUILD_TYPE=RELEASE                                    \
-D CMAKE_INSTALL_PREFIX=/usr/local                                       \
-D OPENCV_EXTRA_MODULES_PATH=/opt/OpencvInstall/opencv_contrib/modules   \
-D WITH_TBB=ON -D BUILD_TBB=ON                                           \
-D BUILD_TIFF=ON -D WITH_CUDA=OFF -D ENABLE_AVX=OFF -D WITH_OPENGL=OFF   \
-D WITH_OPENCL=OFF -D WITH_IPP=OFF -D WITH_TBB=ON -D BUILD_TBB=ON        \
-D WITH_EIGEN=OFF -D WITH_QT=ON                                          \
-D WITH_V4L=OFF -D WITH_OPENGL=ON                                        \
-D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF                               \
                    
############### Version #######################
apt install libopencv-dev
pkg-config --cflags opencv4
pkg-config --libs opencv4
pkg-config --modversion opencv4
