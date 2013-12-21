#!/bin/bash

source ./settings.sh

[ ! -f protobuf-2.5.0.tar.gz ] && curl -LO https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.gz -C -
[ ! -d protobuf-2.5.0 ] && tar zxf protobuf-2.5.0.tar.gz
cd protobuf-2.5.0/
./configure --prefix=$PREFIX --enable-static --disable-shared
make
make install
