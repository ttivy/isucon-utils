#!/usr/bin/env bash
set -ex

DATE=`date "+%Y%m%d-%H%M%S"`
HOST=
OUTPUT="${DATE}.log"

# test $(which jq) || sudo apt install -y jq

# ./bin/bench "http://${HOST}" > "${OUTPUT}"
# jq . < "${OUTPUT}"
