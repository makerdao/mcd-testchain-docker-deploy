# mcd-testchain-docker-deploy

## Prerequisite:
- docker: https://docs.docker.com/install/
- docker-compose: https://docs.docker.com/compose/install/
- Git

## Install:
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
