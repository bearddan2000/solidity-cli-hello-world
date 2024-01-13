FROM node:20.10.0-slim

ENV GIT_REPO=https://github.com/rzuckerm/solidity-docker-image.git

WORKDIR /workspace

RUN apt update

RUN apt install -y git python3

RUN git clone $GIT_REPO docker-image

RUN mv docker-image/*_solidity /usr/local/bin

RUN npm i -g npm@latest && \
    npm i -g truffle@latest && \
    npm i -g ganache@latest

WORKDIR /code

COPY bin .

CMD "./run.sh"