#!/bin/sh
set -xeu
./setuptty.sh
echo "START" &>> ~/eeg.log
./processor.py &>> eeg.log
