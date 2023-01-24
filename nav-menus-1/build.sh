#! /usr/bin/env bash

for f in *.md ; do sed -e '$s/$/\n/' $f ; done > article.md
