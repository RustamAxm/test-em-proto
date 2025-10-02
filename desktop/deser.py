from desktop.py_gen import uart_msg_pb2


def main():
    accel = uart_msg_pb2.Accelerometer()
    accel.x = 12
    accel.y = 23
    accel.z = 34
    accel.payload.extend([23, 45])
    msg = accel.SerializeToString()
    print(msg)
    with open('out_py.bin', 'wb') as file:
        file.write(msg)

    with open('out_py.bin', 'rb') as file:
        in_bin = file.read()

    accel.ParseFromString(in_bin)
    print(accel)


if __name__ == '__main__':
    main()
