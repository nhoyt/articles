#! /usr/bin/env bash

if [ -z "$1" ]; then
  echo "Syntax:"
  echo "    build <foldername>"
  exit
fi

for f in ${1}/*.md ; do sed -e '$s/$/\n/' $f ; done > build/${1}.md
