#!/bin/bash

cd $(dirname $0)
times=$(( $RANDOM % 10 ))

for (( i = 0; i < $times; i++ )); do
  ts=$(date '+%s')

  echo "* $ts" >> ./README.md
  git commit -am $ts && sleep 2
done
git push
