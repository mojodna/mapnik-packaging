#!/bin/bash

source ./settings.sh

curl -LO ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz -C -
tar zxf libxml2-2.9.1.tar.gz
cd libxml2-2.9.1/
./configure --prefix=$PREFIX --enable-static --disable-shared --without-python
make
make install
cd ..
