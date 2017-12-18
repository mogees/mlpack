# Install script for directory: /Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/src/mlpack

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/include/mlpack")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Debug/libmlpack.2.0.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Debug/libmlpack.2.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Debug/libmlpack.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.0.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND "/usr/bin/install_name_tool"
          -id "libmlpack.2.dylib"
          "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/usr/local/lib"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "${file}")
        endif()
      endif()
    endforeach()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Release/libmlpack.2.0.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Release/libmlpack.2.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Release/libmlpack.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.0.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND "/usr/bin/install_name_tool"
          -id "libmlpack.2.dylib"
          "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/usr/local/lib"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "${file}")
        endif()
      endif()
    endforeach()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/MinSizeRel/libmlpack.2.0.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/MinSizeRel/libmlpack.2.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/MinSizeRel/libmlpack.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.0.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND "/usr/bin/install_name_tool"
          -id "libmlpack.2.dylib"
          "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/usr/local/lib"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "${file}")
        endif()
      endif()
    endforeach()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/RelWithDebInfo/libmlpack.2.0.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/RelWithDebInfo/libmlpack.2.dylib"
      "/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/RelWithDebInfo/libmlpack.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.0.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.2.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmlpack.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND "/usr/bin/install_name_tool"
          -id "libmlpack.2.dylib"
          "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/usr/local/lib"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "${file}")
        endif()
      endif()
    endforeach()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/bindings/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/methods/cmake_install.cmake")

endif()

