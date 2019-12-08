#!/bin/bash -ex

ENV=$1

source ~/.profile

docker network create --driver bridge $ENV &> /dev/null || true
mkdir -p storage/node/$ENV

docker-compose -f docker-compose-$ENV.yml build
docker-compose -f docker-compose-$ENV.yml up -d
