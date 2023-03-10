#!/bin/bash

docker rmi --force $(docker images -q)
docker volume rm $(docker volume ls -q)
docker system prune --force
