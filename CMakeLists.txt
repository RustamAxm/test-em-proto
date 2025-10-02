cmake_minimum_required(VERSION 3.24)
project(test-em-proto)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(desktop)
#find_package(absl REQUIRED )
find_package(Protobuf REQUIRED)

protobuf_generate_cpp(TRANSPORT_CATALOGUE_PROTO_SRCS TRANSPORT_CATALOGUE_PROTO_HDRS
        proto/uart_msg.proto)

add_executable(test-em-proto
        ${TRANSPORT_CATALOGUE_PROTO_SRCS} ${TRANSPORT_CATALOGUE_PROTO_HDRS}
        desktop/main.cpp)

target_include_directories(test-em-proto PUBLIC ${Protobuf_INCLUDE_DIRS})
target_include_directories(test-em-proto PUBLIC ${CMAKE_CURRENT_BINARY_DIR})

target_link_libraries(test-em-proto
        ${Protobuf_LIBRARY}
        absl::log_internal_message
        absl::log_internal_check_op
        )
