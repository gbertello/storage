#!/bin/bash -ex

docker network create --driver bridge local &> /dev/null || true
docker-compose -f docker-compose-local.yml down || true

mkdir -p ../storage/node/local

docker-compose -f docker-compose-local.yml build
docker-compose -f docker-compose-local.yml up -d

echo "Hello world!" > ../storage/node/local/test.txt

docker build -t app_test test/
docker run -it --rm --network="local" app_test pytest

docker-compose -f docker-compose-local.yml down
rm -rf ../storage/node/local
