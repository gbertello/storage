# Configuration needs to be defined in ~/.profile with the following variables:
#   - export COMPOSE_IGNORE_ORPHANS=True: This will avoid docker warnings
#

source ~/.profile

mkdir -p storage
echo "Hello World!" > storage/test.txt

docker network create --driver bridge local &> /dev/null
docker-compose -f docker-compose-local.yml build
docker-compose -f docker-compose-local.yml up -d

sleep 1
docker build -t storage_test test/
docker run -it --rm --network="local" storage_test python test.py

docker-compose -f docker-compose-local.yml down
rm storage/test.txt
