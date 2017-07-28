cmake_minimum_required(VERSION 2.6)
project(ch9)

add_executable(ch9)

install(TARGETS ch9 RUNTIME DESTINATION bin)

add_subdirectory(include/myslam)