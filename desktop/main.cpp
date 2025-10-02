//
// Created by rustam on 04.08.24.
//
#include "uart_msg.pb.h"
#include <iostream>

int main() {
    auto acc = Accelerometer();
    acc.set_x(12);
    acc.add_payload(34);
    acc.add_payload(45);
    std::cout << acc.x() << " " << acc.payload()[0] << std::endl;
    return 0;
}