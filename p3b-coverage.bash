#!/bin/bash

# run the coverage of the tests 

# NOTE: All tests should be in the folder avl-tests

# activate the venv

source .venv/bin/activate

cd libpng-1.6.34
sh ./configure CFLAGS="--coverage -static"
make clean ; make

for file in ../png-tests/*.png; do
    
    echo "file $file is running"
    ./pngtest $file
    gcovr -s -e contrib -e intel -e mips -e powerpc -r .  --gcov-ignore-errors=source_not_found
done

rm *.gcda pngout.png