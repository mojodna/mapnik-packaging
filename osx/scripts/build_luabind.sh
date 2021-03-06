#!/bin/bash
set -e -u -x

mkdir -p ${PACKAGES}
cd ${PACKAGES}

download luabind-${LUABIND_VERSION}.tar.gz

echoerr 'building luabind'

rm -rf luabind
git clone https://github.com/DennisOSRM/luabind.git
cd luabind
# avoid g++ being killed on travis
if [ "${TRAVIS_COMMIT:-false}" != false ]; then
    JOBS=2
fi
LINK_FLAGS="${STDLIB_LDFLAGS} ${LINK_FLAGS}"
rm -rf build
mkdir build
cd build
cmake ../ -DCMAKE_INSTALL_PREFIX=${BUILD} \
  -DBoost_NO_SYSTEM_PATHS=ON \
  -DCMAKE_INCLUDE_PATH=${BUILD}/include \
  -DCMAKE_LIBRARY_PATH=${BUILD}/lib \
  -DBUILD_STATIC_LIBS=ON \
  -DCMAKE_BUILD_TYPE=Release

make -j${JOBS} VERBOSE=1
make install

cd ${PACKAGES}
