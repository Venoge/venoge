add_library(venoge "")

target_sources(venoge
    PUBLIC
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

# `make install` / `cmake --build . --target install`
install(TARGETS venoge EXPORT LibVenogeConfig
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR} # windows?
)
# Don't forget to copy the headers when installing
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# Cmake support!
install(EXPORT LibVenogeConfig DESTINATION share/LibVenoge/cmake) # From install directory
export(TARGETS venoge FILE LibVenogeConfig.cmake) # From build directory