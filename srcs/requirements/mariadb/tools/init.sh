#!/bin/bash

echo CREATE DATABSE wordpress_db; | mysql
echo CREATE USER 'dhyun'@'%' IDENTIFIED BY '1234'; | mysql
echo GRANT ALL ON wordpress_db.* TO 'dhyun'@'%'; | mysql
echo FLUSH PRIVILEGES; | mysql
