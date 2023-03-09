#!/bin/bash

echo CREATE DATABSE $(DB_NAME); | mysql
echo CREATE USER $(DB_USER)@'%' IDENTIFIED BY $(DB_PASSWORD); | mysql
echo GRANT ALL ON $(DB_NAME).* TO $(DB_USER)@'%'; | mysql
echo FLUSH PRIVILEGES; | mysql

mysqld
