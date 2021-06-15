[![LinkedIn][linkedin-shield]][linkedin-url]
## Opencv Installation

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#quick-installation">Quick Installation</a>
    </li>    
    <li>
      <a href="#step-by-step-installation">Step-by-Step Installation</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#dependencies">Dependencies</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>   
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Opencv libraries for c++ installation explained 

## Quick Installation
* Run as administrator 
 ```sh
 sudo su
 ```
 * Clone this repository and run `install.sh`
 ```sh
 git clone https://github.com/zoumson/OpencvInstall.git  \
 && cd OpencvInstall && chmod +x install.sh && ./install.sh
 
 ```
## Step-by-Step Installation 
<!--Built with -->
### Built With

<br>

* [cmake](https://cmake.org/)
* [gcc](https://gcc.gnu.org/)
* [git](https://git-scm.com/)
* [gtk](https://www.gtk.org/)
* [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
* [ffmpeg](http://ffmpeg.org/)
* [numpy](https://numpy.org/)
* [jpeg](https://jpegclub.org/reference/)
* [png](http://www.libpng.org/pub/png/libpng.html)
* [tiff](https://www.adobe.io/open/standards/TIFF.html)
* [1394-based digital camera specifications](https://damien.douxchamps.net/ieee1394/libdc1394/)
* [eigen](https://www.eigen.tuxfamily.org)
* [theora](https://www.theora.org/)
* [vorbis](https://xiph.org/vorbis/doc/libvorbis/index.html)
* [xvidcore](https://www.xvid.com/)
* [x264](https://www.videolan.org/developers/x264.html)
* [sphinx](https://www.sphinx-doc.org/en/master/)
* [yasm](https://yasm.tortall.net/)
* [faac](http://faac.sourceforge.net/)
* [adaptive multi rate speech codec](https://packages.debian.org/sid/libopencore-amrnb-dev)
* [adaptive multi-rate-wideband speech codec](https://packages.debian.org/sid/libopencore-amrwb-dev)
* [openexr](https://www.openexr.com/)
* [gstreamer](https://gstreamer.freedesktop.org/)
* [qt](https://wiki.qt.io/Install_Qt_5_on_Ubuntu)
* [opengl](https://www.opengl.org/)
* [opencv](https://opencv.org/)

<br>

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* Run as administrator 
 ```sh
 sudo su
 ```
* Update system
 ```sh
 apt-get update
 ```
* Upgrade system
 ```sh
 apt-get upgrade
 ```
 * Install the `build-essential` which includes `gcc`, `g++` and `make`
  ```sh
 apt install build-essential
 ```
 ### Dependencies
 ```sh
 apt-get install libgtk-3-dev pkg-config ffmpeg python-numpy            \
 libjpeg-dev libpng-dev libtiff-dev libdc1394-22 libeigen3-dev          \
 libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev
 ```
 ```sh
 apt-get install sphinx-common yasm libfaac-dev libopencore-amrnb-dev   \
 libopencore-amrwb-dev libopenexr-dev                                   \
 libgstreamer-plugins-base1.0-dev 
 ```
  ```sh
 apt-get install libglu1-mesa-dev freeglut3-dev mesa-common-dev         \
 qt5-default                                
 ```
  ### Installation
  
 * Create a directory `OpencvInstall` in `/opt`
 
 ```sh
 cd /opt && mkdir OpencvInstall && cd OpencvInstall
 ```
 * Get opencv source files from github
 ```sh
 sudo cd /opt/OpencvInstall                                 \
 && sudo git clone https://github.com/Itseez/opencv.git     \
 && sudo clone  https://github.com/Itseez/opencv_contrib.git
 ```
 * Create a `build` directory in `/opt/OpencvInstall/opencv`
 ```sh
 sudo cd /opt/OpencvInstall/opencv && sudo mkdir build && sudo cd build
 ```
 * Run `cmake` with argument `CMAKE_INSTALL_PREFIX` `CMAKE_BUILD_TYPE` and  `OPENCV_EXTRA_MODULES_PATH`, don't      forget `..` at the end
 ```sh
 sudo cd /opt/OpencvInstall/opencv/build                                 \
 && sudo cmake -D CMAKE_BUILD_TYPE=RELEASE 
 -D CMAKE_INSTALL_PREFIX=/usr/local                                      \
 -D OPENCV_EXTRA_MODULES_PATH=/opt/OpencvInstall/opencv_contrib/modules  \
 ..
 ``` 
 * `CMAKE_INSTALL_PREFIX` specifies the installation path, by default if not set it's `/usr/local`
 * Run `make`
 ```sh
 sudo cd /opt/OpencvInstall/opencv/build && sudo make -j4
 ``` 
 * Install the opencv libraries in the installation path
 ```sh
 sudo cd /opt/OpencvInstall/opencv/build && sudo make install
 ``` 
 * Run `ldconfig`
 ```sh
 sudo cd /opt/OpencvInstall/opencv/build && sudo ldconfig
 ```
 * Install opencv configuration package 
 ```sh
 apt install libopencv-dev 
 ```
 * Check opencv path
 ```sh
 pkg-config --cflags opencv4
 ```
 * Check opencv libs
 ```sh
 pkg-config --libs opencv4
 ```
 * Check opencv version
 ```sh
 pkg-config --modversion opencv4
 ```
  * Uninstall opencv from `/opt/OpencvInstall/opencv/build`
 ```sh
 cd /opt/OpencvInstall/opencv/build && sudo make uninstall 
 ```


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Adama Zouma - <!-- [@your_twitter](https://twitter.com/your_username) -->- stargue49@gmail.com

Project Link: [https://github.com/zoumson/OpencvInstall](https://github.com/zoumson/OpencvInstall.git)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Google](https://www.google.com/)
* [Stack Overflow](https://stackoverflow.com/)
* [Github](https://github.com/)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: linkedin.com/in/adama-zouma-553bba13a
[product-screenshot]: images/screenshot.png

