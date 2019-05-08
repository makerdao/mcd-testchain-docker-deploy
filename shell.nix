{ tdds-src ? fetchGit {
    url = https://github.com/makerdao/testchain-dss-deployment-scripts.git;
    ref = "master";
  }
}: let
  tdds-shell = import "${tdds-src}/shell.nix" {};
in
  tdds-shell.overrideAttrs (attrs: {
    src = tdds-src;
  })
