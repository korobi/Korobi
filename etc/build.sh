#!/usr/bin/env bash

# Build the docs
sphinx-build -b html source build

git config --global user.name "Korobi"
git config --global user.email "korobi@korobi.io"

# If we're on the master branch, do deploy
if [[ $TRAVIS_PULL_REQUEST = false && $TRAVIS_BRANCH = master ]]; then
    ./etc/master.sh
fi

# If we're on a pull request, build the PR
if ! [[ $TRAVIS_PULL_REQUEST = false ]]; then
    ./etc/pr.sh
fi

exit 0
