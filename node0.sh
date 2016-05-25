#!/bin/sh
TMP=mktemp -d
cd $TMP

tar zxvf /tmp/node0.tgz
mkdir -p /home/muskateer/.certs
cd node0
mv ca.pem /home/muskateer/.certs/
mv cert.pem /home/muskateer/.certs/
mv key.pem /home/muskateer/.certs/

cd /tmp
rm -Rf $TMP
