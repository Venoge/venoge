#!/bin/sh

mkdir -p /root/venoge/build
cd /root/venoge/build

cmake -DBUILD_TESTS=ON .. &&
make &&
./tests/tests
