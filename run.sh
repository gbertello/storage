#!/bin/bash -ex

source ~/.profile

docker network create --driver bridge prod &> /dev/null || true
docker-compose down || true

mkdir -p storage/db/prod

docker-compose build
docker-compose up -d
