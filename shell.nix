{ testchain-dss-deployment-src ? fetchGit {
    url = https://github.com/makerdao/testchain-dss-deployment-scripts.git;
    ref = "master";
  }
}: let
  testchain-dss-deployment-shell = import "${testchain-dss-deployment-src}/shell.nix" {};
in
  testchain-dss-deployment-shell.overrideAttrs (attrs: {
    src = testchain-dss-deployment-src;
  })
