#!/bin/bash

#05-10-2023-saravjeets

a=$(pwd | awk -F'( |/)+' '{print $3}')
git checkout -b dev-$a

echo "------your current branch is dev-$a------"

git branch

echo "-------------git status----------------"

git status


echo "------------GIT ADD---------------"


git add .

echo "---------git committing---------"

git commit -m "$1 config changes according to sp $2"

echo "---------your remote value is this"

git remote -v

echo "-------enter your user and password if remote url is good"

git push origin dev-$a
