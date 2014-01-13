#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/freetype-*/
./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared \
  --without-png
make
make install
