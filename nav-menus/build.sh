#! /usr/bin/env bash

for f in part-?/*.md ; do sed -e '$s/$/\n/' $f ; done > article.md
