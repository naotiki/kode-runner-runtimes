#!/usr/bin/env sh

runtimes=$(find . -mindepth 1 -maxdepth 1 -type d -not -name ".*"| awk -F/ '{print ""$NF""}' | sort)
echo $runtimes
for name in $runtimes
do
  :
  # do whatever on $i
  docker pull ghcr.io/naotiki/code-runner-runtimes/$name:latest
done