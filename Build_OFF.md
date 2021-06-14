1. Build CUDA modules stubs when no CUDA SDK
```sh
BUILD_CUDA_STUBS:BOOL=OFF
```
2. Create build rules for OpenCV Documentation
```sh
BUILD_DOCS:BOOL=OFF
```
3. Build all examples
```sh
BUILD_EXAMPLES:BOOL=OFF
```
4. Build libjasper from source
```sh
BUILD_JASPER:BOOL=OFF
```
5. Build libjpeg from source
```sh
BUILD_JPEG:BOOL=OFF
```
6. Build only listed modules (comma-separated, e.g. 'videoio,dnn,ts')
```sh
BUILD_LIST:STRING=
```
7. Build openexr from source
```sh
BUILD_OPENEXR:BOOL=OFF
```
8. Build OpenJPEG from source
```sh
BUILD_OPENJPEG:BOOL=OFF
```
9. Build libpng from source
```sh
BUILD_PNG:BOOL=OFF
```
10. Download and build TBB from source
```sh
BUILD_TBB:BOOL=OFF
```
11. Build libtiff from source
```sh
BUILD_TIFF:BOOL=OFF
```
12. Use symlinks instead of files copying during build (and !!INSTALL!!)
```sh
BUILD_USE_SYMLINKS:BOOL=OFF
```
13. Build WebP from source
```sh
BUILD_WEBP:BOOL=OFF
```
14. Include debug info into release binaries ('OFF' means default settings)
```sh
BUILD_WITH_DEBUG_INFO:BOOL=OFF
```
15. Enables dynamic linking of IPP (only for standalone IPP)
```sh
BUILD_WITH_DYNAMIC_IPP:BOOL=OFF
```
16. Build zlib from source
```sh
BUILD_ZLIB:BOOL=OFF
```
17. Build JavaScript bindings by Emscripten
```sh
BUILD_opencv_js:BOOL=OFF
```
18. Include opencv_world module into the OpenCV build
```sh
BUILD_opencv_world:BOOL=OFF
```
