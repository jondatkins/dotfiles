#!/usr/bin/env bash
find Music -type d -name '.tagged' | while read -r t; do
  dir=$(dirname "$t")
  mv "$t"/* "$dir"/
  rmdir "$t"
done
