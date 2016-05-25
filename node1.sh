#!/bin/sh
TMP=mktemp -d
cd $TMP

tar zxvf /tmp/node1.tgz
mv node1 /root/

cd /tmp
rm -Rf $TMP
