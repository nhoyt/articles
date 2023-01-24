#! /usr/bin/env bash

for f in part-?.md ; do sed -e '$s/$/\n/' $f ; done > ../build/nav-menus-01.md
