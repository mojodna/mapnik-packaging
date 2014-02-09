#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/tiff-*/
./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared
make
make install
