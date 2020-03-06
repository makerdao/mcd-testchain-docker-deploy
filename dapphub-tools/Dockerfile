FROM debian

RUN apt-get clean && apt-get purge && apt-get autoremove --purge -y && \
    rm -rf /var/lib/apt/lists/* && apt-get update && \
    apt-get install -y curl git jq bc bzip2 xz-utils && \
    mkdir -p /nix /etc/nix && chmod a+rwx /nix && \
    echo 'sandbox = false' > /etc/nix/nix.conf && \
    adduser maker --home /home/maker --disabled-password --gecos "" --shell /bin/bash

CMD /bin/bash -l
USER maker
ENV USER maker
WORKDIR /home/maker

RUN touch .bash_profile \
 && curl https://dapp.tools/install | sh
