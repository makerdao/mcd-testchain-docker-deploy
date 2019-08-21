FROM parity/parity:stable

LABEL MAINTAINER="ed@makerdao.com"

USER parity
WORKDIR /home/parity

RUN mkdir -p /home/parity/.local/share/io.parity.ethereum/
COPY --chown=parity $PWD/parity/keys /home/parity/.local/share/io.parity.ethereum/keys/
COPY --chown=parity $PWD/parity/parity-dev-constantinopole.json /home/parity/config/parity-dev-constantinopole.json

EXPOSE 8545 8546

ENTRYPOINT ["/bin/parity"]
CMD ["--chain=/home/parity/config/parity-dev-constantinopole.json", \
      "--tracing=on", \
      "--pruning=archive", \
      "--jsonrpc-interface=all", \
      "--jsonrpc-hosts=all", \
      "--base-path=/home/parity/.local/share/io.parity.ethereum/"]

