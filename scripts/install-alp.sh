#!/usr/bin/env bash
set -ex

# See: https://github.com/tkuchiki/alp/releases/tag/v1.0.0
VER='v1.0.0'
URL="https://github.com/tkuchiki/alp/releases/download/$VER/alp_linux_amd64.zip"

if !(type "unzip" > /dev/null 2>&1); then
    sudo apt install unzip
fi

cd /tmp
curl -L -o ./alp.zip $URL
unzip -o alp.zip -d .
sudo install ./alp /usr/local/bin
