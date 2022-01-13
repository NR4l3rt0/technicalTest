#!/usr/bin/bash

mvn clean package

docker build -t 4lb3rt0/technical-test-docker.jar:v2.0 .

minikube start

kubectl apply -f deployment.yaml

kubectl apply -f service.yaml
