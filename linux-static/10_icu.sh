#!/bin/bash
 
basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/icu/source/
./configure --prefix=$PREFIX \
  --disable-samples \
  --enable-static \
  --enable-release \
  --disable-shared \
  --with-library-bits=64 \
  --with-data-packaging=archive \
  --disable-icuio \
  --disable-tests \
  --disable-layout \
  --disable-extras
make
make install
