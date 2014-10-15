#!/bin/bash
set -x

export PATH="$(pwd)/depot_tools:${PATH}"
export GYP_LINK_CONCURRENCY=4
cd src
gn gen out/gn
ninja -j6 -C out/gn $(grep -v '^#' ../targets)
