#! /usr/bin/env bash

# Loop through all of the content folder, and for each folder:
#   ls -1      get list of .md files with each file on a separate line
#   tail -1    select last line from ls -1 output

FOLDERS=(
  introduction
  getting-started
  menu-design-patterns
  disclosure-nav-menu
  conclusion
)

for folder in ${FOLDERS[@]} ; do
  f=`ls -1 $folder/*.md | tail -1`
  if [ ! -z $f ]; then sed -e '$s/$/\n/' $f ; fi
done > article.md
