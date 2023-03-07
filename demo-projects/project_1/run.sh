#!/bin/bash

echo '**** Create Network ****'

docker network create proj1-net

echo '**** Create Volume ****'

docker volume create mongodb_vol

echo '**** Starting MongoDB ****'

docker run --name mongodb --mount type=volume,source=${PWD}/backend/data,target=mongodb_vol -d --rm --network proj1-net mongo

echo '**** Starting Backend ****'

docker run --name proj1back --network proj1-net -d --rm -p 3001:80 proj1-backend

echo '**** Starting Frontend ****'

docker run -d --rm -p 3000:80 --name proj1front proj1-frontend

echo '**** Launch Completed ****'