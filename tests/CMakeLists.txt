add_library(catch2 INTERFACE)
target_include_directories(catch2 INTERFACE catch2/)

add_executable(tests "")

target_sources(tests
    PRIVATE
        test_dummy.cpp
)

target_link_libraries(tests PRIVATE venoge catch2)