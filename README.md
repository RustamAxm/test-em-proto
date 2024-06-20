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
+ mkdir -p ./desktop
+ protoc -I./proto --python_out=./desktop ./proto/uart_msg.proto

```
