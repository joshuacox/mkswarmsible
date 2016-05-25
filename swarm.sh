#!/bin/sh
TMP=mktemp -d
cd $TMP

tar zxvf /tmp/swarm.tgz
mv swarm /root/

cd /tmp
rm -Rf $TMP
