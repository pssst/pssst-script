#!/bin/bash
set -o errexit
set -o nounset

DIR=/opt/pssst
RUN=sudo -u pssst

mkdir -p $DIR/db

# Upgrade to the latest packages
apt-get update
apt-get install -y git
apt-get install -y build-essential

# Install Redis
cd /tmp
wget https://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd /tmp/redis-stable
make
make install
rm -rf /tmp/redis-stable*

# Install Node.js
cd /tmp
wget https://nodejs.org/dist/node-latest.tar.gz
tar xvzf node-latest.tar.gz
cd /tmp/node-v*
./configure
CXX="g++ -Wno-unused-local-typedefs" make
CXX="g++ -Wno-unused-local-typedefs" make install
PROFILE="/root/.bash_profile"
echo 'export PATH="node_modules/.bin:$PATH"' >> $PROFILE
rm -f node-latest.tar.gz
rm -rf /tmp/node-v*

# Install Pssst server
cd /tmp
git clone https://github.com/pssst/pssst
cp -R pssst/server/* $DIR/
cd $DIR
cat > config.json <<EOF
{
  "debug": 0,
  "port": 80,
  "db": {
    "source": "/opt/pssst/db/redis.sock",
    "number": 0
  },
  "app": {
    "allow": null,
    "limit": null
  }
}
EOF
npm install
rm -rf /tmp/pssst*

# Install Pssst Redis config
cd /tmp
git clone https://github.com/pssst/config
cp config/jiffybox/cloudlevel1.conf $DIR/db/redis.conf
touch $DIR/db/redis.sock
rm -rf /tmp/config*

# Run servers
useradd pssst
chown -R pssst:pssst $DIR

$RUN nohup /usr/local/bin/redis-server $DIR/db/redis.conf
$RUN nohup /usr/local/bin/node $DIR/start.js

echo "Done"
exit 0
