# test-em-proto
create proto file in ./proto 
```
./generate.sh
```
example uart_msg.proto
```
rustam@rustam-ZenBook-UX431DA-UM431DA:~/test-em-proto$ ./generate.sh 
+ mkdir -p ./generated
+ cd EmbeddedProto
+ protoc --plugin=protoc-gen-eams=protoc-gen-eams -I../proto --eams_out=../generated ../proto/uart_msg.proto
+ cd -
/home/rustam/test-em-proto
+ mkdir -p ./desktop/py_gen
+ mkdir -p ./desktop/cpp_gen
+ protoc -I./proto --python_out=./desktop/py_gen ./proto/uart_msg.proto
+ protoc -I./proto --cpp_out=./desktop/cpp_gen ./proto/uart_msg.proto
rustam@rustam-ZenBook-UX431DA-UM431DA:~/test-em-proto$ tree desktop/
desktop/
├── cpp_gen
│   ├── uart_msg.pb.cc
│   └── uart_msg.pb.h
└── py_gen
    └── uart_msg_pb2.py

2 directories, 3 files
```

