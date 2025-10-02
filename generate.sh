#!/bin/bash -ex

which protoc
protoc --version

mkdir -p ./generated
cd EmbeddedProto
protoc --plugin=protoc-gen-eams=protoc-gen-eams -I../proto --eams_out=../generated ../proto/uart_msg.proto
cd -

# Generate the desktop source code.
mkdir -p ./desktop/py_gen
mkdir -p ./desktop/cpp_gen

protoc -I./proto --python_out=./desktop/py_gen ./proto/uart_msg.proto
protoc -I./proto --cpp_out=./desktop/cpp_gen ./proto/uart_msg.proto
