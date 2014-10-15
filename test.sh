#!/bin/bash
set -x

cd src
for t in $(grep -v '^#' ../targets); do
  echo "*** $t: Starting at $(TZ='America/Los_Angeles' date)"
  if out/gn/$t --test-launcher-jobs=6; then
    echo "*** $t: PASSED"
  else
    echo "*** $t: FAILED (will not run any more tests)"
    exit 1
  fi
done

exit 0
