#!/bin/bash -ex

mkdir -p ./generated
cd EmbeddedProto
protoc --plugin=protoc-gen-eams=protoc-gen-eams -I../proto --eams_out=../generated ../proto/uart_msg.proto
cd -

# Generate the desktop source code.
mkdir -p ./desktop
protoc -I./proto --python_out=./desktop ./proto/uart_msg.proto
