#!/bin/bash

source ./settings.sh

[ ! -d node-mapnik ] && git clone https://github.com/mapnik/node-mapnik
cd node-mapnik
npm install
