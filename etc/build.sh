#!/usr/bin/env bash

# Build the docs
sphinx-build -b html source build

# If we're on the master branch, do deploy
if [[ $TRAVIS_PULL_REQUEST = false && $TRAVIS_BRANCH = master ]]; then
    ./etc/docs.sh
fi

exit 0
