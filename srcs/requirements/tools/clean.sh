#!/bin/bash

docker stop mariadb wordpress nginx;
docker rm mariadb wordpress nginx;
docker rmi $(docker images -q);
docker volume rm $(docker volume ls -q);
docker network rm mynet;
