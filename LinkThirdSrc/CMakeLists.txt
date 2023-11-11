cmake_minimum_required(VERSION 3.22)

project(LinkThirdSrc)
aux_source_directory("${CMAKE_CURRENT_SOURCE_DIR}/src" src_fmt)
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")
include(fmt)

if (fmt_FOUND)
    message(STATUS "11111 no found fmt")
else ()
    message(STATUS "22222 found fmt")
    add_executable(${PROJECT_NAME})
    target_sources(${PROJECT_NAME} PUBLIC ${src_fmt})
    target_link_libraries(${PROJECT_NAME} PUBLIC fmt::fmt)

endif (fmt_FOUND)
