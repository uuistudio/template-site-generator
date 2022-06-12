#!/usr/bin/env bash

source="${1:-source}"
template="${2:-.}"

rm -rf "$template/data"
cp -r "$source/~/site/" "$template/data"
mkdir "$template/data/blog"
cp -r "$source/\$Notes/"* "$template/data/blog"

rm -rf "$template/public"
cp -r "$source/~/site/public" "$template"
