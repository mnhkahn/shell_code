#!/bin/sh 
echo "" > VERSION

d=$(date)
echo "Date: $d" > VERSION
branch=$(git branch | grep \* | cut -d ' ' -f2)
echo "Branch: $branch"  >> VERSION
git show --summary >> VERSION
git diff >> VERSION
bee version >> VERSION

