#!/bin/sh

set -e
set -x

if type apt-get > /dev/null 2>&1; then
  add-apt-repository ppa:chris-lea/node.js
  apt-get update
  apt-get install -y pkg-config build-essential git-core nodejs
fi

if type yum >/dev/null 2>&1; then
  yum install curl make gcc gcc-c++ diffutils file pkgconfig -y
fi
