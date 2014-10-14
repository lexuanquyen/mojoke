#!/bin/bash
set -x

cd src
for t in $(cat ../targets); do
  $t
done
