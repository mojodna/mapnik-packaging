#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/gdal-*/
./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared \
  --with-pcraster=no \
  --with-jasper=no \
  --with-grib=no \
  --with-vfk=no \
  --with-hide-internal-symbols
make
make install
