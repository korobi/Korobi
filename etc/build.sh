#!/usr/bin/env bash

LEX_DEPLOY=https://github.com/LexBot/Deploy.git
DEPLOY_SCRIPTS=/tmp/NeptunePowered/deploy

# Build the docs
sphinx-build -b html source build

# Get the deploy scripts
git clone $LEX_DEPLOY $DEPLOY_SCRIPTS

# Initialize the ssh-agent so we can use Git later for deploying
eval $(ssh-agent)

# Set up our Git environment
$DEPLOY_SCRIPTS/setup_git

# If we're on the master branch, do deploy
if [[ $TRAVIS_PULL_REQUEST = false && $TRAVIS_BRANCH = master ]]; then
    ./etc/docs.sh
fi

# Kill the ssh-agent because we're done with deploying
eval $(ssh-agent -k)

exit 0
