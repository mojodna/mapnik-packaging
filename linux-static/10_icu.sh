#!/bin/bash

source ./settings.sh

[ ! -f icu4c-52_1-src.tgz ] && curl -LO http://download.icu-project.org/files/icu4c/52.1/icu4c-52_1-src.tgz -C -
[ ! -d icu ] && tar zxf icu4c-52_1-src.tgz
cd icu/source/
./configure --prefix=$PREFIX --disable-samples --enable-static --enable-release --disable-shared --with-library-bits=64 --with-data-packaging=archive --disable-icuio --disable-tests --disable-layout --disable-extras
make
make install
