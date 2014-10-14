#!/bin/bash
set -x

export PATH="$(pwd)/depot_tools:${PATH}"
cd src
gn gen out/gn
ninja -C out/gn $(cat ../targets)
