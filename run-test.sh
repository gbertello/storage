# Configuration needs to be defined in ~/.profile with the following variables:
#   - export COMPOSE_IGNORE_ORPHANS=True: This will avoid docker warnings
#

source ~/.profile

mkdir -p storage

docker network create --driver bridge test &> /dev/null
docker-compose -f docker-compose-test.yml down
docker-compose -f docker-compose-test.yml build
docker-compose -f docker-compose-test.yml up -d
