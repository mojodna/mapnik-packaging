#!/bin/bash

source ./settings.sh

[ ! -f boost_1_55_0.tar.gz ] && curl -L "http://downloads.sourceforge.net/project/boost/boost/1.55.0/boost_1_55_0.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fboost%2Ffiles%2Fboost%2F1.55.0%2F&ts=1387606595&use_mirror=softlayer-ams" -o boost_1_55_0.tar.gz -C -
[ ! -d boost_1_55_0 ] && tar zxf boost_1_55_0.tar.gz
cd boost_1_55_0/
./bootstrap.sh \
  --with-icu=$PREFIX
./b2 -d2 \
  linkflags="$LDFLAGS -L$PREFIX/lib -Bstatic -licudata -Bstatic -licuuc -Bdynamic -ldl" \
  cxxflags="$CXXFLAGS -I$PREFIX/include -fPIC -Wno-unused-but-set-variable -DU_STATIC_IMPLEMENTATION=1" \
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
  cxxflags="$CXXFLAGS -I$PREFIX/include -fPIC -Wno-unused-but-set-variable -DU_STATIC_IMPLEMENTATION=1" \
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
