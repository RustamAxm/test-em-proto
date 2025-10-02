//
// Created by rustam on 04.08.24.
//
#include "cpp_gen/uart_msg.pb.h"
#include <iostream>

int main() {
    auto acc = Accelerometer();
    acc.set_x(12);
    std::cout << acc.x() << std::endl;
    return 0;
}