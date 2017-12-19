include_directories(${CMAKE_CURRENT_SOURCE_DIR}/..)

# Add core.hpp to list of sources.
set(MLPACK_SRCS ${MLPACK_SRCS} "${CMAKE_CURRENT_SOURCE_DIR}/core.hpp")

## Recurse into both core/ and methods/.
set(DIRS
  core
  methods
)

foreach(dir ${DIRS})
    add_subdirectory(${dir})
endforeach()

if (BUILD_TESTS)
  add_subdirectory(tests)
endif ()

# MLPACK_SRCS is set in the subdirectories.  The dependencies (MLPACK_LIBRARIES)
# are set in the root CMakeLists.txt.
add_library(mlpack ${MLPACK_SRCS})

# If we are not forcing C++11 support, check that the compiler supports C++11
# and enable it.
if ((NOT FORCE_CXX11) AND
    (NOT (${CMAKE_MAJOR_VERSION} LESS 3 OR
         (${CMAKE_MAJOR_VERSION} EQUAL 3 AND ${CMAKE_MINOR_VERSION} LESS 1))))
  # Use the newer C++11 checks.
  include(../../CMake/NewCXX11.cmake)
endif ()

# Generate export symbols for Windows, instead of adding __declspec(dllimport)
# and __declspec(dllexport) everywhere.  However, those modifiers are still
# necessary for global variables (of which there are a few in mlpack).
set_target_properties(mlpack PROPERTIES WINDOWS_EXPORT_ALL_SYMBOLS ON)
include(GenerateExportHeader)
generate_export_header(mlpack EXPORT_FILE_NAME "${CMAKE_CURRENT_SOURCE_DIR}/mlpack_export.hpp")
if (NOT BUILD_SHARED_LIBS)
  add_definitions(-DMLPACK_STATIC_DEFINE)
endif ()

target_link_libraries(mlpack
  ${MLPACK_LIBRARIES})

set_target_properties(mlpack
  PROPERTIES
  VERSION 2.0
  SOVERSION 2
)

# Backtrace for Linux need those libs.
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  if(LIBBFD_FOUND AND LIBDL_FOUND AND DEBUG)
    target_link_libraries(mlpack ${LIBBFD_LIBRARIES})
    target_link_libraries(mlpack ${LIBDL_LIBRARIES})
  endif()
endif()

# At install time, we simply install that directory of header files we
# collected to include/.
install(DIRECTORY ${CMAKE_BINARY_DIR}/include/mlpack DESTINATION include)

# Set generated executables to be installed.  Unfortunately they must manually
# be entered...
install(TARGETS mlpack
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib)


# If we are building Python bindings, we have to configure setup.py but only
# after we've recursed into methods/.
if (BUILD_PYTHON_BINDINGS)
  # Extract the version number.
  file(READ "${CMAKE_SOURCE_DIR}/src/mlpack/core/util/version.hpp"
      VERSION_HPP_CONTENTS)
  string(REGEX REPLACE ".*#define MLPACK_VERSION_MAJOR ([0-9]+).*" "\\1"
      MLPACK_VERSION_MAJOR "${VERSION_HPP_CONTENTS}")
  string(REGEX REPLACE ".*#define MLPACK_VERSION_MINOR ([0-9]+).*" "\\1"
      MLPACK_VERSION_MINOR "${VERSION_HPP_CONTENTS}")
  string(REGEX REPLACE ".*#define MLPACK_VERSION_PATCH [\"]?([0-9x]+)[\"]?.*"
      "\\1" MLPACK_VERSION_PATCH "${VERSION_HPP_CONTENTS}")

  set(PACKAGE_VERSION
      "${MLPACK_VERSION_MAJOR}.${MLPACK_VERSION_MINOR}.${MLPACK_VERSION_PATCH}")

  get_property(CYTHON_INCLUDE_DIRECTORIES DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
      PROPERTY INCLUDE_DIRECTORIES)
  configure_file(${CMAKE_SOURCE_DIR}/src/mlpack/bindings/python/setup.py.in
                 ${CMAKE_BINARY_DIR}/src/mlpack/bindings/python/setup.py)
endif ()
