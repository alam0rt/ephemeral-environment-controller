FROM debian:stretch-20210408

LABEL author=samlockart
ENV UID=1000

RUN apt-get update && apt-get install -y \
    git \
    curl \
    bash \
  && rm -rf /var/lib/apt/lists/*

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
  && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
  && rm kubectl

RUN [ -x /usr/sbin/useradd ] && useradd -m -u ${UID} ephemeral-controller -s /bin/bash

USER ${UID}}

ENTRYPOINT [ "bash" ]