#! /usr/bin/env bash

for f in 1-*.md 2-*.md 3-*.md 6-*.md ; do sed -e '$s/$/\n/' $f ; done > article.md
