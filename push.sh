#!/bin/bash

# Use GitHub pages as a lite download hosting server

# the max number of commits to keep after which version information is destroyed
LIMIT=30

# run transforms
source ./transformations.sh

# get commit count
count=$(git rev-list --count HEAD)

# new branch to overwrite when commit count more than limit
if [ $count -gt $LIMIT ]; then
	git checkout --orphan tempBranch
fi

git add .
git commit -m 'push'

# overwrite branch
if [ $count -gt $LIMIT ]; then
	git branch -D gh-pages
	git branch -m gh-pages
fi

git push -f origin gh-pages
git gc --aggressive --prune=all
