#!/bin/bash

cd afl-2.52b
make clean ; make

cd ../libpng-1.6.34
CC=/home/nikolai/projects/CS340Project3/p3c/afl-2.52b/afl-gcc ./configure --disable-shared CFLAGS="-static"
make clean ; make

