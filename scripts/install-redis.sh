#!/usr/bin/env bash
set -ex

cd /tmp
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
sudo make install
sudo ./utils/install_server.sh
