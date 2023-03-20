#! /usr/bin/env bash

# Loop through all of the content folder, and for each file that matches
# the file glob pattern:
# (1) '$s/$/\n/' means "match EOF and replace it with a newline character"
# (2) '/^----/,$ d' means "match any range of lines that starts with 4 dashes
#     and ends with EOF and delete all lines in that range"

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
    sed -e '$s/$/\n/' -e '/^----/,$ d' $f
  done
done > article.md
