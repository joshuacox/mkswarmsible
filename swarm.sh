#!/bin/sh
TMP=mktemp -d
cd $TMP

tar zxvf /tmp/swarm.tgz
mkdir -p /home/muskateer/.certs
cd swarm
mv ca.pem /home/muskateer/.certs/
mv cert.pem /home/muskateer/.certs/
mv key.pem /home/muskateer/.certs/
chown -R muskateer. /home/muskateer/.certs
chmod -R 660 muskateer. /home/muskateer/.certs
service docker restart
sudo export TOKEN=$(docker run --rm swarm create)
echo "$TOKEN" > /root/TOKEN

cd /tmp
rm -Rf $TMP
