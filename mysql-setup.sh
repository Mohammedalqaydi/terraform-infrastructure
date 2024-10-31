#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y git curl

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh ./get-docker.sh

sudo docker run -d -p 3306:3306 --name mysql-server \
  -e MYSQL_ROOT_PASSWORD=password \
  -e MYSQL_DATABASE=mydatabase \
  -e MYSQL_USER=user \
  -e MYSQL_PASSWORD=password \
 mysql:latest


