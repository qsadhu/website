#!/bin/sh

com="$1"

hugo -D -d ../website

cd ../website
git add *
git commit -m "$com"
git push origin

cd ../qsadhu.github.io
git add *
git commit -m "$com"
git push origin
