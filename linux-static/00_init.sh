#!/bin/sh

set -e
set -x

sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y pkg-config build-essential git-core nodejs

yum install pkgconfig kernel-devel -y
