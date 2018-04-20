#!/bin/bash

README=$(dirname $0)/README.md

times=$(( $RANDOM % 10 ))
for (( i = 0; i < $times; i++ )); do
  ts=$(date '+%s')

  echo "* $ts" >> $README
  git commit -am $ts
  sleep 2
done
git push
