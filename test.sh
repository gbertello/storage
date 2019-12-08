#!/bin/bash -ex

ENV=$1

docker exec -it storage_test_$1 env TERM=xterm-256color pytest
