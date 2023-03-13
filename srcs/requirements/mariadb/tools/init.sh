#!/bin/bash

service mysql start

echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" | mysql
echo "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

service mysql stop

mysqld
