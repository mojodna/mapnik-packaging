#!/bin/bash

source ./settings.sh

[ ! -f bzip2-1.0.6.tar.gz ] && curl -LO http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz -C -
[ ! -d bzip2-1.0.6 ] && tar zxf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6/
make install PREFIX=$PREFIX CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS"
