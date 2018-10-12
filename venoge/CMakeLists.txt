add_library(venoge "")

target_sources(venoge
    PUBLIC
        "${CMAKE_CURRENT_LIST_DIR}/venoge.h"
    PRIVATE
        "${CMAKE_CURRENT_LIST_DIR}/venoge.cpp"
)

target_link_libraries(venoge PRIVATE Eigen3::Eigen)