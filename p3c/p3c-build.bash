#!/bin/bash

cd afl-2.52b
make clean ; make

# NOTE: libpng and afl-2.52b have to be in the same direcotry
cd ../libpng-1.6.34
CC=($pwd)/../afl-2.52b/afl-gcc ./configure --disable-shared CFLAGS="-static"
make clean ; make

