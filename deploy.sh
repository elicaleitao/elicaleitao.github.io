#!/bin/bash

echo "deploying..."
# cd public
git add .

echo "pushing to master."
d=$(echo "Deploy at" $(date +"%d-%m-%Y %T") ...)

git commit -m "$d"
git push

echo "pushing to subtre gh-pages."
git subtree push --prefix public/ origin gh-pages
