# Configuration needs to be defined in ~/.profile with the following variables:
#   - export COMPOSE_IGNORE_ORPHANS=True: This will avoid docker warnings
#

source ~/.profile

docker-compose -f docker-compose-test.yml down