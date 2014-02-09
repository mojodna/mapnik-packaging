#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/mapnik-*/
./configure \
  PREFIX=$PREFIX \
  LINKING=static \
  RUNTIME_LINK=static \
  INPUT_PLUGINS=csv,geojson,postgis,gdal \
  PLUGIN_LINKING=static \
  FAST=yes \
  PNG=yes \
  JPEG=no \
  TIFF=yes \
  WEBP=yes \
  PROJ=yes \
  SVG_RENDERER=no \
  CPP_TESTS=no \
  CAIRO=no \
  BINDINGS=none \
  DEMO=no \
  SHAPEINDEX=no \
  CXX="g++ $LDFLAGS -Bstatic -lboost_regex -Bstatic -licudata -Bstatic -licuuc -Bstatic -licudata" \
  CUSTOM_CXXFLAGS="-fPIC -DU_STATIC_IMPLEMENTATION=1 -DBOOST_ALL_NO_LIB=1 -DBOOST_HAS_ICU=1"
make
make install
