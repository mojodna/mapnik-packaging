#!/bin/sh

set -e
set -x

basedir=$(dirname $0)

curl -L http://download.sourceforge.net/boost/boost_1_55_0.tar.gz | tar zxf - -C $basedir
curl -L http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz | tar zxf - -C $basedir
curl -L http://download.icu-project.org/files/icu4c/52.1/icu4c-52_1-src.tgz | tar zxf - -C $basedir
curl -L http://download.savannah.gnu.org/releases/freetype/freetype-2.5.2.tar.gz | tar zxf - -C $basedir
curl -L http://download.osgeo.org/gdal/1.10.1/gdal-1.10.1.tar.gz | tar zxf - -C $basedir
curl -L http://download.sourceforge.net/libjpeg-turbo/libjpeg-turbo-1.3.0.tar.gz | tar zxf - -C $basedir
curl -L http://download.sourceforge.net/libpng/libpng-1.6.8.tar.gz | tar zxf - -C $basedir
curl -L http://xmlsoft.org/sources/libxml2-2.9.1.tar.gz | tar zxf - -C $basedir
curl -kL https://webp.googlecode.com/files/libwebp-0.4.0.tar.gz | tar zxf - -C $basedir
curl -L http://ftp.postgresql.org/pub/source/v9.3.2/postgresql-9.3.2.tar.gz | tar zxf - -C $basedir
curl -L http://download.osgeo.org/proj/proj-4.8.0.tar.gz | tar zxf - -C $basedir
curl -L http://download.osgeo.org/proj/proj-datumgrid-1.5.tar.gz | tar zxf - -C $basedir/proj-*/nad/
curl -kL https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.gz | tar zxf - -C $basedir
curl -L ftp://ftp.remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz | tar zxf - -C $basedir
curl -L http://zlib.net/zlib-1.2.8.tar.gz | tar zxf - -C $basedir


