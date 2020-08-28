#!/bin/bash

TAG=$1
ALLOWED_TAGS="unit-testing integration-testing"
VERSION=1.1.0

set -e

if echo $ALLOWED_TAGS | grep -w $TAG > /dev/null
then
    # Create an empty chain
    docker rm parity || true
    ./start-parity.sh
    sleep 3

    # Deploy DSS to it
    docker-compose up $TAG-dss-deployer
    docker rm $TAG-dss-deployer

    # Create and publish the docker image
    docker login
    docker commit parity makerdao/testchain-pymaker:$TAG-$VERSION
    docker push makerdao/testchain-pymaker
    docker kill parity
else
    echo Tag [$TAG] not supported\; allowed tags include [$ALLOWED_TAGS]
    exit 1
fi    
