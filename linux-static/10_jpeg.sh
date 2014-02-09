#!/bin/bash

basedir=$(dirname $0)
source $basedir/settings.sh

yum install rpm-build texinfo ghostscript -y

curl -LO http://www.nasm.us/pub/nasm/releasebuilds/2.11/linux/nasm-2.11-1.src.rpm
ARCH=`uname -m`
rpmbuild --rebuild nasm-2.11-1.src.rpm
rpm -Uvh /usr/src/redhat/RPMS/$ARCH/nasm-2.11-1.$ARCH.rpm

cd $basedir/libjpeg-turbo-*/
./configure --prefix=$PREFIX \
  --enable-static \
  --disable-shared
make
make install
