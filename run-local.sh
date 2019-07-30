mkdir -p storage
echo "Hello World!" > storage/test.txt

docker-compose -f docker-compose-local.yml build
docker-compose -f docker-compose-local.yml up -d

sleep 1
docker build -t storage_test test/
docker run -it --rm storage_test python test.py

docker-compose -f docker-compose-local.yml down
rm storage/test.txt