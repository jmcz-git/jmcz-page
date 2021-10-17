#!/bin/sh

set -e

printf "Deploying changes to GitHub...\n"

hugo -t risotto

cd public

git add .

msg="rebuilt using deploy script [$(date)]"

git commit -m "$msg"

git push origin master
