FROM mojodna/centos:5.10
MAINTAINER Seth Fitzsimmons "seth@mojodna.net"

ADD ./settings.sh /tmp/settings.sh

#
# Initialization
#

ADD ./00_init.sh /tmp/00_init.sh
RUN /tmp/00_init.sh

#
# Download sources
#

ADD ./01_download.sh /tmp/01_download.sh
RUN /tmp/01_download.sh

ADD ./10_bzip2.sh /tmp/10_bzip2.sh
RUN /tmp/10_bzip2.sh

ADD ./10_freetype.sh /tmp/10_freetype.sh
RUN /tmp/10_freetype.sh

ADD ./10_icu.sh /tmp/10_icu.sh
RUN /tmp/10_icu.sh

ADD ./10_jpeg.sh /tmp/10_jpeg.sh
RUN /tmp/10_jpeg.sh

ADD ./10_libxml2.sh /tmp/10_libxml2.sh
RUN /tmp/10_libxml2.sh

ADD ./10_proj.sh /tmp/10_proj.sh
RUN /tmp/10_proj.sh

ADD ./10_protobuf.sh /tmp/10_protobuf.sh
RUN /tmp/10_protobuf.sh

ADD ./10_zlib.sh /tmp/10_zlib.sh
RUN /tmp/10_zlib.sh

ADD ./11_boost.sh /tmp/11_boost.sh
RUN /tmp/11_boost.sh

ADD ./11_png.sh /tmp/11_png.sh
RUN /tmp/11_png.sh

ADD ./11_postgresql.sh /tmp/11_postgresql.sh
RUN /tmp/11_postgresql.sh

ADD ./11_tiff.sh /tmp/11_tiff.sh
RUN /tmp/11_tiff.sh

ADD ./12_webp.sh /tmp/12_webp.sh
RUN /tmp/12_webp.sh

ADD ./13_gdal.sh /tmp/13_gdal.sh
RUN /tmp/13_gdal.sh

# 
#
# Python
# (Centos 5.10 comes with a version of Python that's too old to support
# Mapnik's build process)
#

RUN curl -L http://www.python.org/ftp/python/2.7.6/Python-2.7.6.tgz | tar zxf - -C /tmp

ADD ./10_python.sh /tmp/10_python.sh
RUN /tmp/10_python.sh

#
# Mapnik
#

RUN curl -L https://api.github.com/repos/mapnik/mapnik/tarball/2.3.x | tar zxf - -C /tmp

ADD ./20_mapnik.sh /tmp/20_mapnik.sh
RUN /tmp/20_mapnik.sh

#
# Node
#

RUN curl -L http://nodejs.org/dist/v0.10.25/node-v0.10.25-linux-x64.tar.gz | tar zxf - -C /tmp

#
# node-mapnik
#

RUN curl -L https://api.github.com/repos/mapnik/node-mapnik/tarball/master | tar zxf - -C /tmp

ADD ./30_node-mapnik.sh /tmp/30_node-mapnik.sh
RUN /tmp/30_node-mapnik.sh


# 3af3ba535be2
