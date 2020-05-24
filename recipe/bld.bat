rem Create Makefiles
cmake -g 'Ninja Makefiles' ^
      -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      -DCMAKE_INSTALL_LIBDIR=lib ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DINCLUDE_INSTALL_DIR=%PREFIX%\include ^
      -DLIB_INSTALL_DIR=%PREFIX%\lib ^
      -S Project\CMake ^
      -B build

rem Build
cmake  --build build

rem Install
cmake --build build -- install

rem Test / Check ?
rem There is no make check/test
