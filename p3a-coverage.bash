#!/bin/bash

# run the coverage of the tests 

# NOTE: All tests should be in the folder avl-tests

# activate the venv

source .venv/bin/activate

for file in avl-tests/*; do
    
    echo "file $file has been run"
    coverage run --append --branch avl.py $file > /dev/null
done

coverage report -m
coverage erase