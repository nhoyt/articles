#! /usr/bin/env bash

FOLDERS=(introduction getting-started menu-design-patterns disclosure-nav-menu conclusion)

for folder in ${FOLDERS[@]} ; do
  #echo $folder
  # xargs -r : noop when input is empty
  # ls -1 : one file per line
  # tail -1 : last line of input (assumes alphabetical sort order)
  f=`find $folder -name "*.md" -print0 | xargs -r ls -1 | tail -1`
  if [ ! -z $f ]; then sed -e '$s/$/\n/' $f ; fi
done > article.md
