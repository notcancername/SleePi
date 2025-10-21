#! /bin/sh
PYTHON_INCLUDE=${PYTHON_INCLUDE:-/usr/include/python3.11/}
g++ -I/usr/local/include -I "$PYTHON_INCLUDE" -fpic -o eeg.o -c eeg_reader.cpp
g++  -std=c++11 -shared -Wl,-soname,"libeeg.so" -L/usr/local/lib eeg.o -lboost_python -fpic -o openeeg.so
