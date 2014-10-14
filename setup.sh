#!/bin/bash
set -x

# Get depot_tools.
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git 

# Once we have that, we can get everything else.
export PATH="$(pwd)/depot_tools:${PATH}"
gclient sync

# And then we need to install some packages.
cd src
sudo build/install-build-deps.sh --no-prompt \
    --no-syms --no-arm --no-chromeos-fonts --no-nacl
