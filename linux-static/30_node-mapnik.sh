#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

export PATH=$PATH:/tmp/node-v0.10.25-linux-x64/bin

cd $basedir/mapnik-node-mapnik-*/
sed -i 's/shared/static/' binding.gyp
npm install --unsafe-perm
