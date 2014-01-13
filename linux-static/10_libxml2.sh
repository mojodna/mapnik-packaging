#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/libxml2-*/
./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared \
  --without-python
make
make install
