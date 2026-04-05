#!/bin/bash

$(pwd)/afl-2.52b/afl-fuzz -i testcase_dir -o findings_dir -- $(pwd)/libpng-1.6.34/pngtest @@

