#!/bin/bash

echo '**** Create Network ****'

docker network create proj1-net

echo '**** Create Volume ****'

docker volume create mongodb_vol

echo '**** Starting MongoDB ****'

docker run --name mongodb -v mongodb_vol:/data/db -d --rm --network proj1-net -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=secret  mongo

echo '**** Starting Backend ****'

docker run --name proj1back --mount type=bind,source=${PWD}/backend,target=/app -v /app/node_modules -e MONGODB_USERNAME=admin -e MONGODB_PASSWORD=secret --network proj1-net -d --rm -p 3001:80 proj1-backend

echo '**** Starting Frontend ****'

docker run -d --rm -p 3000:80 --name proj1front proj1-frontend

echo '**** Launch Completed ****'
