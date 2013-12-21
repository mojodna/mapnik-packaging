PREFIX=$HOME/src/mapnik-sdk

set -o pipefail
set -e
set -x

export CFLAGS="-O3 -fPIC -Wno-unused-but-set-variable"
export CXXFLAGS="-O3 -fPIC -Wno-unused-but-set-variable"
export LDFLAGS="-O3"
export LIBRARY_PATH="$PREFIX/lib:$LIBRARY_PATH"
export CPATH="$PREFIX/include:$CPATH"
export CPPPATH="$PREFIX/include:$CPPPATH"
export PATH="$PREFIX/bin:$PATH"
export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig"
