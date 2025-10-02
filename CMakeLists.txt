cmake_minimum_required(VERSION 3.24)
project(test-em-proto)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(desktop)
find_package(Protobuf REQUIRED)

add_executable(test-em-proto
        desktop/main.cpp
        desktop/cpp_gen/uart_msg.pb.h
        desktop/cpp_gen/uart_msg.pb.cc)

target_include_directories(test-em-proto PUBLIC ${Protobuf_INCLUDE_DIRS})
target_include_directories(test-em-proto PUBLIC ${CMAKE_CURRENT_BINARY_DIR})

target_link_libraries(test-em-proto ${Protobuf_LIBRARY})
