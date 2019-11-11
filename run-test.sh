#!/bin/bash -ex
#
# Configuration needs to be defined in ~/.profile with the following variables:
#   - USER: user name used for mongodb
#   - PASSWORD: password used for mongodb

source ~/.profile

docker network create --driver bridge test &> /dev/null || true
docker-compose -f docker-compose-test.yml down || true

rm -rf storage/node/test || true
mkdir -p storage/node/test

docker-compose -f docker-compose-test.yml build
docker-compose -f docker-compose-test.yml up -d

echo "Hello world!" > storage/node/test/test.txt
