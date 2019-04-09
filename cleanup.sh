#!/bin/bash

docker-compose down
docker-compose rm
rm -rf src/deployment-scripts
docker rmi makerdao/dapphub-tools