#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
apt install libboost-all-dev ninja-build libprotobuf-dev libusb-1.0-0-dev openssl cmake  libqt5-core  protobuf-compiler gcc-11 g++-11