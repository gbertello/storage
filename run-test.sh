#!/bin/bash -ex

source ~/.profile

docker network create --driver bridge test &> /dev/null || true
docker-compose -f docker-compose-test.yml down || true

docker-compose -f docker-compose-test.yml build
docker-compose -f docker-compose-test.yml up -d
