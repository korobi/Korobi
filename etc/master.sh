#!/usr/bin/env bash

# Copy static files
cp -R ./etc/static/. build/
cp build/_static/404.html build/404.html
rm build/_static/404.html

# Deploy
cd build
git init
git remote add origin https://${GH_NAME}:${GH_TOKEN}@github.com/korobi/Korobi.git >/dev/null
git checkout --orphan gh-pages
git add .
git commit -q -m "Deploy $(date)" &> /dev/null
git push -q -f origin gh-pages &> /dev/null
