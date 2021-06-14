1. // Build CUDA modules stubs when no CUDA SDK
BUILD_CUDA_STUBS:BOOL=OFF

2. // Create build rules for OpenCV Documentation
BUILD_DOCS:BOOL=OFF

3. // Build all examples
BUILD_EXAMPLES:BOOL=OFF

4. // Build libjasper from source
BUILD_JASPER:BOOL=OFF

5. // Build libjpeg from source
BUILD_JPEG:BOOL=OFF

6. // Build only listed modules (comma-separated, e.g. 'videoio,dnn,ts')
BUILD_LIST:STRING=

7. // Build openexr from source
BUILD_OPENEXR:BOOL=OFF

8. // Build OpenJPEG from source
BUILD_OPENJPEG:BOOL=OFF

9. // Build libpng from source
BUILD_PNG:BOOL=OFF

10. // Download and build TBB from source
BUILD_TBB:BOOL=OFF

11. // Build libtiff from source
BUILD_TIFF:BOOL=OFF

12. // Use symlinks instead of files copying during build (and !!INSTALL!!)
BUILD_USE_SYMLINKS:BOOL=OFF

13. // Build WebP from source
BUILD_WEBP:BOOL=OFF

14. // Include debug info into release binaries ('OFF' means default settings)
BUILD_WITH_DEBUG_INFO:BOOL=OFF

15. // Enables dynamic linking of IPP (only for standalone IPP)
BUILD_WITH_DYNAMIC_IPP:BOOL=OFF

16. // Build zlib from source
BUILD_ZLIB:BOOL=OFF

17. // Build JavaScript bindings by Emscripten
BUILD_opencv_js:BOOL=OFF

18. // Include opencv_world module into the OpenCV build
BUILD_opencv_world:BOOL=OFF