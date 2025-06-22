#!/bin/bash

# Compilation
make all

# Run the test
./output < inventory

# Clean
make clean
