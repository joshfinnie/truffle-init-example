FROM debian:bullseye-slim as base

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        build-essential \
        curl \
        nodejs \
        npm && \
    rm -fr /var/lib/apt/lists/* && \
    rm -rf /etc/apt/sources.list.d/*

RUN mkdir -p /home/app
WORKDIR /home/app

RUN npm install --global npm truffle ganache-cli
