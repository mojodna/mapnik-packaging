#!/bin/bash

source ./settings.sh

[ ! -d node-mapnik ] && git clone git://github.com/mapnik/node-mapnik
cd node-mapnik
sed -i 's/shared/static/' binding.gyp
npm install --unsafe-perm
