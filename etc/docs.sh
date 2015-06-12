#!/usr/bin/env bash

# Copy static files
cp -R ./etc/static/. build/

# Deploy
cd build
git init
git remote add origin git@github.com:skcoreimaj/KorobiDocs.git
git checkout --orphan gh-pages
git add .
git commit -q -m "Deploy $(date)"
git push -q -f origin gh-pages
echo "Done! Successfully published docs!"
