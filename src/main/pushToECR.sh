#!/bin/bash

#This script can be ran to build a docker image of the backend and push it to the ECR
IMAGE=${1:-graduate-learning-platform:latest}
DESTINATION=${2:-318013158229.dkr.ecr.eu-west-2.amazonaws.com}

aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin ${DESTINATION}
docker build -t ${IMAGE} .
docker tag ${IMAGE} ${DESTINATION}/${IMAGE}
docker push ${DESTINATION}/${IMAGE}
