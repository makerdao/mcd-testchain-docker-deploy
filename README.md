# mcd-testchain-docker-deploy
This project is generally used to build testchains for unit and integration testing `pymaker` API and dependent projects.  To build your own testchain for other purposes, check out (staxx)[https://github.com/makerdao/staxx].


## Prerequisites
- docker: https://docs.docker.com/install/
- docker-compose: https://docs.docker.com/compose/install/
- Git


## Installation
- `git clone https://github.com/grandizzy/mcd-testchain-docker-deploy.git`
- `cd mcd-testchain-docker-deploy`
- `./setup.sh`

### Start Parity node (testchain)
- `./start-parity.sh`  
*- Fetches stable Parity Docker image (if not already downloaded)*  
*- Parity node is accessible locally on port 8545 (JSON RPC) and 8546 (WS)*  
*- For tailing parity logs: `docker logs -f parity`*  

### Deploy MCD testchain to local Parity node
- `./deploy.sh`  
*- Edit bin/deploy-mcd.sh if you want to add / remove deploy steps*  
*- (On first run) builds Docker image with dapphub-tools preinstalled*  
*- Check src/deployment-scripts/out/addresses.json for deployed contracts*

### Stop Parity node (testchain)
- `./stop-parity.sh`

### Start clean
- `./cleanup.sh`  
*Run this to stop and remove services, delete testchain-dss-deployment-scripts sources and dapphub-tools image*


## Deploy and publish testchain-pymaker
- Edit the relevant `deploy-testchain_*.json` file to change DSS deployment parameters.
- Depending upon which configuration you wish to deploy and publish, run `./create-testchain-pymaker.sh unit-testing` or `./create-testchain-pymaker.sh integration-testing`; the argument determines which configuration file to deploy and the tag for the image.  The deployment takes 15-20 minutes.  After this step, the image should be available in docker hub for `pymaker`-based projects to pull.
- If updating to a new version of DSS, grab any artifacts you need from `src/deployment-scripts/out`, such as ABIs and `addresses.json`.


## Maintenance
Collateral types (`ilk`s) are provided for testing each `join` contract:
ETH - GemJoin
USDC - GemJoin5
WBTC - GemJoin6
TUSD - GemJoin7

