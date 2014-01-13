#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/bzip2-*/
make install PREFIX=$PREFIX CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS"
