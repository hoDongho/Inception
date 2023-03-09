#!/bin/bash

docker container prune --force
docker image prune --force
docker volume prune --force
docker network prune --force
docker system prune --force
