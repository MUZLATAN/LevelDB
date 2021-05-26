cmake_minimum_required(VERSION 3.5.1)
project(SkipList)

set(CMAKE_CXX_STANDARD 14)

aux_source_directory(./ SRCS)

add_executable(SkipList ${SRCS})
target_link_libraries(SkipList pthread )