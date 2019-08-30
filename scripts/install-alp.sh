#!/usr/bin/env bash
set -ex

# See: https://github.com/tkuchiki/alp
VER='v1.0.0'
URL="https://github.com/tkuchiki/alp/releases/download/${VER}/alp_linux_amd64.zip"

test $(which unzip) || sudo apt install -y unzip

cd /tmp
wget "${URL}"
unzip -o alp.zip -d .
sudo install ./alp /usr/local/bin
