mkdir -p storage
echo "Hello World!" > storage/test.txt

docker-compose -f docker-compose-test.yml down
docker-compose -f docker-compose-test.yml build
docker-compose -f docker-compose-test.yml up -d

sleep 1
curl http://localhost:81/storage/test.txt
rm storage/test.txt