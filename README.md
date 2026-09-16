# brow6el nixpkg

Getting some practice with packaging

so far learned about "raw" git fetchers ( e.g. `fetchgit`) and how they can work with
in place of the "magic" fetchers (e.g `fetchFromGitHub`, `fetchFromCodeberg`)

currently running into some issue with CEF:

```sh
CMake Error at CMakeLists.txt:75 (find_package):
  By not providing "FindCEF.cmake" in CMAKE_MODULE_PATH this project has
  asked CMake to find a package configuration file provided by "CEF", but
  CMake did not find one.

  Could not find a package configuration file provided by "CEF" with any of
  the following names:

    CEF.cps
    cef.cps
    CEFConfig.cmake
    cef-config.cmake

  Add the installation prefix of "CEF" to CMAKE_PREFIX_PATH or set "CEF_DIR"
  to a directory containing one of the above files.  If "CEF" provides a
  separate development package or SDK, be sure it has been installed.


-- Configuring incomplete, errors occurred!
error: Cannot build '/nix/store/4m7zs43g0n0n9x5m5l42nmi51jp68ndi-brow6el-0.3.5.drv'.
       Reason: builder failed with exit code 1.
       Output paths:
         /nix/store/ynv44xzhgz2lqbpbqa8p235r26n6c6zb-brow6el-0.3.5
       Last 25 log lines:
       > -- Check for working CXX compiler: /nix/store/3d1c302vw7kc8a5vknhmn34c0pd7zm6m-gcc-wrapper-15.3.0/bin/g++ - skipped
       > -- Detecting CXX compile features
       > -- Detecting CXX compile features - done
       > -- Brow6el version: 0.0.999-dev
       > -- Chromium version: 143.0.0.0
       > -- System architecture: x86_64
       > CMake Error at CMakeLists.txt:75 (find_package):
       >   By not providing "FindCEF.cmake" in CMAKE_MODULE_PATH this project has
       >   asked CMake to find a package configuration file provided by "CEF", but
       >   CMake did not find one.
       >
       >   Could not find a package configuration file provided by "CEF" with any of
       >   the following names:
       >
       >     CEF.cps
       >     cef.cps
       >     CEFConfig.cmake
       >     cef-config.cmake
       >
       >   Add the installation prefix of "CEF" to CMAKE_PREFIX_PATH or set "CEF_DIR"
       >   to a directory containing one of the above files.  If "CEF" provides a
       >   separate development package or SDK, be sure it has been installed.
       >
       >
       > -- Configuring incomplete, errors occurred!
       For full logs, run:
         nix log /nix/store/4m7zs43g0n0n9x5m5l42nmi51jp68ndi-brow6el-0.3.5.drv
```

and I've tried setting `CEF` and/or `CEF_DIR` as best I know how to no avail.

The current repo represents the most current state of the project.
