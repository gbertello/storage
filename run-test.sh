mkdir -p storage

docker network create --driver bridge test &> /dev/null
docker-compose -f docker-compose-test.yml down
docker-compose -f docker-compose-test.yml build
docker-compose -f docker-compose-test.yml up -d
