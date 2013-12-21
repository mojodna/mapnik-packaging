#!/bin/bash

source ./settings.sh

[ ! -f freetype-2.5.2.tar.gz ] && curl -LO http://download.savannah.gnu.org/releases/freetype/freetype-2.5.2.tar.gz -C -
[ ! -d freetype-2.5.2 ] && tar zxf freetype-2.5.2.tar.gz
cd freetype-2.5.2/
./configure --prefix=$PREFIX --enable-static --disable-shared --without-png
make
make install
cd ..
