# storage

This repository aims at storing files on a web server and retrieve them with a direct URL without the usage of any cloud provider. A "storage" folder will be created at deployment time. All the files to be served have to be inserted in this folder. To retrieve a file called "test.txt" in the storage folder, the URL to be used is:

`http://www.your-host.com/storage/test.txt`

## Environments

This application can be deployed in 3 environments:

### Local

Usage: `./run-local.sh`

The local environment is used for testing container in isolations. It launches the containers to be tested, run the tests and shuts down the containers after use. A specific test container is created to run the tests.

The port used for accessing the application is 82. The network used is "local". An environment variable ENV is set with the value "local".

### Test

Usage: `./run-test.sh`

The test environment is used for testing this application within an integrated environment (with a reverse proxy for example). It does not stop the containers after use. To stop them run the script `./shut-down-test.sh`.

The port used for accessing the application is 81. The network used is "test". An environment variable ENV is set with the value "test".

### Production

Usage: `./run.sh`

The production environment is used for final deployment to real users. It does not stop the containers after use. To stop them run the script `./shut-down.sh`.

The port used for accessing the application is 80. The network used is "prod". An environment variable ENV is set with the value "prod".

## Dependencies

Docker needs to be installed on the host machine for development or deployment purposes.
