#!/bin/bash

source ./settings.sh

[ ! -d mapnik ] && git clone git://github.com/mapnik/mapnik -b 2.3.x
cd mapnik
./configure \
  PREFIX=$PREFIX \
  LINKING=static \
  RUNTIME_LINK=static \
  INPUT_PLUGINS=csv,geojson \
  PLUGIN_LINKING=static \
  FAST=yes \
  PNG=no \
  JPEG=no \
  TIFF=no \
  WEBP=no \
  PROJ=no \
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
