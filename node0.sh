#!/bin/sh
TMP=mktemp -d
cd $TMP

tar zxvf /tmp/node0.tgz
mv node0 /root/

cd /tmp
rm -Rf $TMP
