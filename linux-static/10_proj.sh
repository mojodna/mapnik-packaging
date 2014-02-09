#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/proj-*/
./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared
make
make install
