#!/usr/bin/env bash

cd ../$1

pwd1=`pwd`

echo $pwd1

changeList=`git diff --name-only | grep pom.xml`

for file in $(git diff --name-only | grep pom.xml)
do
    git add $file
done

git commit -m "Updated POM Versions"