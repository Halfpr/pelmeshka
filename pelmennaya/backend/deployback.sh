#!/bin/bash
#sudo apt  install docker.io -y || true
#sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose  || true
#sudo chmod +x /usr/local/bin/docker-compose || true
sudo docker network create -d bridge momo-store || true
sudo docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
sudo docker pull gitlab.praktikum-services.ru:5050/std-015-31/pelmennaya/pelmennaya-backend:latest
sudo docker rm -f backend || true
sudo docker-compose pull backend
sudo docker-compose up -d backend
