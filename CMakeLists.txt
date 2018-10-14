cmake_minimum_required(VERSION 3.10.2)
project(Venoge VERSION 0.0.0 LANGUAGES CXX)

# Get the correct target locations among all platforms
include(GNUInstallDirs)

# Target C++11 for now
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 3rd parties and dependencies
find_package(Eigen3 3.3 QUIET REQUIRED)

# Make tests optional
option(BUILD_TESTS "Build test targets" OFF)

# Ok, time to build some stuff!
add_subdirectory(venoge)

if (BUILD_TESTS)
    add_subdirectory(tests)
endif()
