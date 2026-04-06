#!/bin/bash

# run the coverage of the tests for the pngs

source .venv/bin/activate

# making a test folder
cd png-tests
rm -rf current-test
mkdir current-test
ls | shuf -n 50 | xargs -i cp {} current-test/
cd ..


cd libpng-1.6.34
sh ./configure CFLAGS="--coverage -static"
make clean ; make




for file in ../png-tests/current-test/*.png; do
    
    echo "file $file is running"
    ./pngtest $file
    gcovr -s -e contrib -e intel -e mips -e powerpc -r .  --gcov-ignore-errors=source_not_found
done

rm *.gcda pngout.png