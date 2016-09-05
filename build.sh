#!/bin/sh 
echo "" > VERSION

d=$(date)
echo "Date: $d" > VERSION
branch=$(git branch | grep \* | cut -d ' ' -f2)
echo "Branch: $branch"  >> VERSION
git show --summary >> VERSION
git diff `git status -s |grep -v ^\ D |grep -v VERSION |cut -b4-` >> VERSION
bee version >> VERSION

