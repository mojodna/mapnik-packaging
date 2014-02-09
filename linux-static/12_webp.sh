#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/libwebp-*/
# https://code.google.com/p/webp/issues/detail?id=180
ac_cv_search_png_get_libpng_ver="none required" \
  ./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared
make
make install
