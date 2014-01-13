#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/zlib-*/
./configure --prefix=$PREFIX \
  --static \
  --64
make
make install
