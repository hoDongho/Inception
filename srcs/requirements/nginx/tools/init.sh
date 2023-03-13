#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/server_pkey.pem -out /etc/ssl/certs/server.crt \
-subj "/C=KR/ST=Seoul/L=Gnagnam/O=42Seoul/CN=dhyun.42.fr"

nginx -g 'daemon off;'
