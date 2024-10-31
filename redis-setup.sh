#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y git curl

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh ./get-docker.sh

sudo docker run -d -p 6379:6379 --name redis redis
