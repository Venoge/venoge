cmake_minimum_required(VERSION 3.11)
project(Venoge VERSION 0.0.0 LANGUAGES CXX)

# Target C++11 for now
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 3rd parties and dependencies
find_package(Eigen3 3.3 QUIET REQUIRED)

# Make tests optional
option(BUILD_TESTS "Build test targets" OFF)