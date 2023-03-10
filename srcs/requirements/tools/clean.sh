#!/bin/bash

docker volume rm srcs_dbVolume srcs_wpVolume
docker system prune --force
