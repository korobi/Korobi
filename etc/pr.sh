#!/usr/bin/env bash

branch=${TRAVIS_PULL_REQUEST}

# Deploy
mkdir deploy
cd deploy
git init
git remote add origin https://${GH_NAME}:${GH_TOKEN}@github.com/korobi/Korobi.git >/dev/null
if git ls-remote origin | grep -sw "$branch"; then
    git fetch origin $branch
    git checkout $branch
else
    git checkout --orphan $branch
fi
cp -R ../build/. .
git add .
git commit -q -m "Deploy $(date)" &> /dev/null
git push -q -f origin $branch &> /dev/null
