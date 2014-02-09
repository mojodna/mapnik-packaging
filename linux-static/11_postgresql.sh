#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

yum install openssl-devel -y

cd $basedir/postgresql-*/
./configure --prefix=$PREFIX \
  --with-openssl \
  --without-readline
gmake
gmake -C src/bin install-strip
gmake -C src/include install-strip
gmake -C src/interfaces install-strip

# remove shared libpq
rm -f $PREFIX/lib/libpq.so*
