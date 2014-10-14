#!/bin/bash
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git 

export PATH="$(pwd)/depot_tools:${PATH}"
gclient sync

cd src
sudo build/install-build-deps.sh --no-prompt \
    --no-syms --no-arm --no-chromeos-fonts --no-nacl
