#!/bin/bash

cd $(dirname $0)
git pull

times=$(( $RANDOM % 10 + 1 ))
for (( i = 0; i < $times; i++ )); do
  ts=$(date '+%s')

  echo "* $ts" >> ./README.md
  git commit -am $ts && sleep 2
done
git push
