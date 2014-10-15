#!/bin/bash
set -x

export PATH="$(pwd)/depot_tools:${PATH}"
cd src
gn gen out/gn
ninja -j6 -C out/gn $(grep -v '^#' ../targets)
