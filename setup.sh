#!/bin/bash

git clone git@github.com:makerdao/dss-deploy-scripts.git src/deployment-scripts
pushd src/deployment-scripts
git fetch --all --tags --prune
git checkout tags/0.2.10
git submodule deinit -f --all && dapp update
git submodule update --init --recursive
