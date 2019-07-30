# Configuration needs to be defined in ~/.profile with the following variables:
#   - export COMPOSE_IGNORE_ORPHANS=True: This will avoid docker warnings
#

source ~/.profile

mkdir -p storage

docker network create --driver bridge prod &> /dev/null
docker-compose down
docker-compose build
docker-compose up -d
