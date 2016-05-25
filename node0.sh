#!/bin/sh
TMP=mktemp -d
cd $TMP

tar zxvf /tmp/node0.tgz
mkdir -p /home/muskateer/.certs
cd node0
mv ca.pem /home/muskateer/.certs/
mv cert.pem /home/muskateer/.certs/
mv key.pem /home/muskateer/.certs/
chown -R muskateer. /home/muskateer/.certs
chmod -R 660 muskateer. /home/muskateer/.certs
service docker restart

cd /tmp
rm -Rf $TMP
