#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y git curl

 curl -fsSL https://get.docker.com -o get-docker.sh

 sudo sh ./get-docker.sh 

echo "DB_NAME=mydatabase" > .env
echo "DB_USER=user" >> .env
echo "DB_PASSWORD=password" >> .env
echo "MYSQL_ROOT_PASSWORD=password" >> .env
echo "MYSQL_DATABASE=mydatabase" >> .env
echo "REDIS_HOST=${redis_host}" >> .env
echo "DB_HOST=${db_host}" >> .env
sudo  docker run -p 80:5000 -d --name flask-app --env-file .env mohammedmustaf/python:latest