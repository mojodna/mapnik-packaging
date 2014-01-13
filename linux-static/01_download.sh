#!/bin/sh

set -e
set -x

basedir=$(dirname $0)

curl -L http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz | tar zxf - -C $basedir
curl -L http://download.icu-project.org/files/icu4c/52.1/icu4c-52_1-src.tgz | tar zxf - -C $basedir
curl -L http://download.savannah.gnu.org/releases/freetype/freetype-2.5.2.tar.gz | tar zxf - -C $basedir
curl -L https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.gz | tar zxf - -C $basedir
curl -L http://xmlsoft.org/sources/libxml2-2.9.1.tar.gz | tar zxf - -C $basedir
curl -L http://zlib.net/zlib-1.2.8.tar.gz | tar zxf - -C $basedir
curl -L "http://downloads.sourceforge.net/project/boost/boost/1.55.0/boost_1_55_0.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fboost%2Ffiles%2Fboost%2F1.55.0%2F&ts=1387606595&use_mirror=softlayer-ams" | tar zxf - -C $basedir
