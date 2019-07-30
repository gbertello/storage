export COMPOSE_IGNORE_ORPHANS=True

mkdir -p storage

docker network create --driver bridge prod &> /dev/null
docker-compose down
docker-compose build
docker-compose up -d
