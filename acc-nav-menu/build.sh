#! /usr/bin/env bash

# Loop through all of the content folder, and for each folder:
#   ls -1      get list of .md files with each file on a separate line
#   tail -1    select last line from ls -1 output

FOLDERS=(
  0-prologue
  1-introduction
  2-section
  3-section
  4-section
  9-epilogue
)

for folder in ${FOLDERS[@]} ; do
  for f in ${folder}/doc-*.md ; do
    if [ ! -z $f ]; then sed -e '$s/$/\n/' -e '/----/,$ d' $f ; fi
  done
done > article.md