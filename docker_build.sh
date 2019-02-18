#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

HOODIE_VERSION=27.2.0

docker build --build-arg HOODIE_VER=$HOODIE_VERSION -t cborgolte/hoodie:$HOODIE_VERSION .
docker push cborgolte/hoodie:$HOODIE_VERSION
