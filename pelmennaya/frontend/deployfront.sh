#!/bin/bash
sudo docker network create -d bridge momo-store || true
sudo docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
sudo docker pull gitlab.praktikum-services.ru:5050/std-015-31/pelmennaya/pelmennaya-frontend:latest
sudo docker rm -f frontend || true
sudo docker-compose pull frontend
sudo docker-compose up -d frontend
