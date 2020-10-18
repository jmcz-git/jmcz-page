#!/bin/sh

set -e

printf "Deploying changes to GitHub...\n"

hugo -t aether

cd public

git add .

msg="site rebuilt: $(date)"

git commit -m "$msg"

git push origin master
