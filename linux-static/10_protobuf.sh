#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/protobuf-*/
./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared
make
make install
