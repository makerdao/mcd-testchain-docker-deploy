#!/bin/bash

git clone https://github.com/makerdao/testchain-dss-deployment-scripts.git src/deployment-scripts
cd src/deployment-scripts
git submodule update --init --recursive