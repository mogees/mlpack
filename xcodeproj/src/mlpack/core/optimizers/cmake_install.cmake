# Install script for directory: /Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/src/mlpack/core/optimizers

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/ada_delta/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/ada_grad/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/adam/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/aug_lagrangian/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/cne/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/fw/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/gradient_descent/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/grid_search/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/lbfgs/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/line_search/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/proximal/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/rmsprop/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/sa/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/sdp/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/sgd/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/smorms3/cmake_install.cmake")
  include("/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/src/mlpack/core/optimizers/spalera_sgd/cmake_install.cmake")

endif()

