add_library(venoge "")

target_sources(venoge
    PUBLIC
        "${CMAKE_CURRENT_LIST_DIR}/include/venoge/venoge.h"
    PRIVATE
        "${CMAKE_CURRENT_LIST_DIR}/src/venoge.cpp"
)

# Define public and private headers
target_include_directories(venoge
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
    PRIVATE 
        src
)

# Link libraries: Eigen is only used to test the setup now, not exposed in the API
target_link_libraries(venoge PRIVATE Eigen3::Eigen)
