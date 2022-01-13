#!/usr/bin/bash

# Create the jar file
mvn clean package

# Create an image locally
docker build -t 4lb3rt0/technical-test-docker.jar:v2.0 .

# Create the cluster 
minikube start

# Create a deployment object with the docker image in the cluster
kubectl apply -f deployment.yaml

# Create a service object that expose the deployement
kubectl apply -f service.yaml

