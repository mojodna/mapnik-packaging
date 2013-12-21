#!/bin/bash

source ./settings.sh

curl -LO http://zlib.net/zlib-1.2.8.tar.gz
tar zxf zlib-1.2.8.tar.gz
cd zlib-1.2.8/
./configure --prefix=$PREFIX --static --64
make
make install
cd ..
