#!/bin/bash
set -x

cd src
for t in $(grep -v '^#' ../targets); do
  $t
done
