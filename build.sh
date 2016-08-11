#!/bin/bash
set -e

DOCKER_RUN_IMAGE=nginx-rtmp

docker build -t ${DOCKER_RUN_IMAGE} .

docker images 
docker run -d --name ${DOCKER_RUN_IMAGE} -p 1935:1935 -t ${DOCKER_RUN_IMAGE}
docker ps -a

