#!/bin/bash

# NOTE: this is only necessary if system python is too old

basedir=$(dirname $0)
source $basedir/settings.sh

cd $basedir/Python-*/
./configure --prefix=$PREFIX
make
make install
