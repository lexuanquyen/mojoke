#!/bin/bash
set -x

export PATH="$(pwd)/depot_tools:${PATH}"
export GYP_LINK_CONCURRENCY=2
cd src
gn gen out/gn
ninja -j8 -C out/gn $(grep -v '^#' ../targets)
