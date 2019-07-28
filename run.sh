mkdir -p storage

docker-compose down
docker-compose build
docker-compose up -d
