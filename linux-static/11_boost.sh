#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/boost_*/
./bootstrap.sh \
  --with-icu=$PREFIX
./b2 -d2 \
  linkflags="$LDFLAGS -L$PREFIX/lib -Bstatic -licudata -Bstatic -licuuc -Bdynamic -ldl" \
  cxxflags="$CXXFLAGS -I$PREFIX/include -fPIC -DU_STATIC_IMPLEMENTATION=1" \
  --prefix=$PREFIX \
  --with-thread \
  --with-filesystem \
  --with-program_options \
  --with-system \
  --with-chrono \
  --with-regex \
  -sHAVE_ICU=1 \
  -sICU_PATH=$PREFIX \
  toolset=gcc \
  link=static \
  variant=release \
  stage -a
./b2 -d2 \
  linkflags="$LDFLAGS -L$PREFIX/lib -Bstatic -licudata -Bstatic -licuuc -Bdynamic -ldl" \
  cxxflags="$CXXFLAGS -I$PREFIX/include -fPIC -DU_STATIC_IMPLEMENTATION=1" \
  --prefix=$PREFIX \
  --with-thread \
  --with-filesystem \
  --with-program_options \
  --with-system \
  --with-chrono \
  --with-regex \
  -sHAVE_ICU=1 \
  -sICU_PATH=$PREFIX \
  toolset=gcc \
  link=static \
  variant=release \
  install
