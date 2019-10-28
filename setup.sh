#!/bin/bash

# see also: https://gist.github.com/godsflaw/c507c88cdc2359e8bda8cc3b34b112d7

git clone git@github.com:makerdao/dss-deploy-scripts.git src/deployment-scripts
pushd src/deployment-scripts
git fetch --all --tags --prune
git checkout tags/0.2.15
git submodule deinit -f --all && dapp update
git submodule update --init --recursive
