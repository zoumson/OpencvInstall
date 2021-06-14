[![LinkedIn][linkedin-shield]][linkedin-url]
## Opencv Installation

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
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
* [opencv](https://opencv.org/)

<br>

<!-- GETTING STARTED -->
## Getting Started

This is a tutorial for installing opencv on `ubuntu`. 
To get a local copy up and running follow these simple steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* Update system
 ```sh
 sudo apt-get update
 ```
* Upgrade system
 ```sh
 sudo apt-get upgrade
 ```
 * Install the `build-essential` which includes `gcc`, `g++` and `make`
  ```sh
 sudo apt install build-essential
 ```
 ### Dependencies
   ```sh
 sudo apt-get install libgtk-3-dev pkg-config ffmpeg python-numpy \
 libjpeg-dev libpng-dev libtiff-dev libdc1394-22 ibeigen3-dev     \
 libtheora-dev ibvorbis-dev libxvidcore-dev libx264-dev           \
 sphinx-common yasm libfaac-dev libopencore-amrnb-dev             \
 libopencore-amrwb-dev libopenexr-dev                             \
 libgstreamer-plugins-base1.0-dev 

 ```
 
 
  ### Installation
  
 * Create a directory `OpencvInstall` in `/opt`
 
 ```sh
 sudo cd /opt && mkdir OpencvInstall && cd OpencvInstall
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
* Default build configuration is here
* By deafault `VTK` is included
* Customized build items are here
* Custom installation with  `TTB`, `exemples` and `openGL`
 ```sh
 cd /opt && mkdir OpencvInstall && cd OpencvInstall                      \
 && git clone https://github.com/Itseez/opencv.git                       \
 && git clone  https://github.com/Itseez/opencv_contrib.git              \
 && cd opencv && mkdir build && cd build                                 \
 && cmake -D CMAKE_BUILD_TYPE=RELEASE                                    \
 -D CMAKE_INSTALL_PREFIX=/usr/local                                      \
 -D OPENCV_EXTRA_MODULES_PATH=/opt/OpencvInstall/opencv_contrib/modules  \
 -D WITH_TBB=ON -D BUILD_TBB=ON -D WITH_OPENGL:BOOL=ON                   \
 -D BUILD_EXAMPLES=ON                                                    \
 ..                                                                      \
 && make -j4 && make install && ldconfig                                 \
 && apt install libopencv-dev                                       
 ``` 
  * Install system opencv related configuration package
 ```sh
 sudo apt install libopencv-dev
 ```
 * check opencv path
 ```sh
 sudo pkg-config --cflags opencv4
 ```
 * check opencv libs
 ```sh
 sudo pkg-config --libs opencv4
 ```
 * check opencv version
 ```sh
 sudo pkg-config --modversion opencv4
 ```
  * Uninstall opencv from `/opt/OpencvInstall/opencv/build`
 ```sh
 sudo cd /opt/OpencvInstall/opencv/build && sudo make uninstall 
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

