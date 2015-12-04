#!/bin/bash

docker run \
  -v /docker/mysql-data:/var/lib/mysql \
  -v /home/ec2-user/sqlfiles:/sqlfiles \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  --name mysql \
  -d \
  mysql
