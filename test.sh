#!/bin/bash
set -x

cd src
for t in $(grep -v '^#' ../targets); do
  echo -n "*** Starting $t: "
  TZ="America/Los_Angeles" date
  out/gn/$t --test-launcher-jobs=6
done
