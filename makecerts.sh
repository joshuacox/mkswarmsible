#!/bin/sh
TMP=mktemp -d
cd $TMP
git clone https://github.com/joshuacox/mkcerts
cd mkcerts
make
cd /tmp
rm -Rf $TMP
