#!/usr/bin/env bash
set -ex

DATE=`date "+%Y%m%d-%H%M%S"`
HOST='192.168.33.11'
OUTPUT="./outputs/output-$DATE.json"
BENCH_DIR="$HOME/isucon6q"

cd "$BENCH_DIR"
mkdir -p $(dirname "$OUTPUT")

./isucon6q-bench -target "http://$HOST" > "$OUTPUT"
jq . < $OUTPUT
