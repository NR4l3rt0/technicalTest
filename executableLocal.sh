#!/usr/bin/bash

# Create the jar file
mvn clean package

# Create an image locally
docker build -t technical-test-docker.jar:v3.0 .

# Create the cluster 
minikube start

# Create a deployment object with the docker image in the cluster
#kubectl apply -f deployment.yaml
kubectl create deployment technical-test-local-hello --image=technical-test-docker.jar:v3.0

# Expose deployment while creating the service
kubectl expose deployment balanced --type=LoadBalancer --port=8888

kubectl get deployments
kubectl get service

# Create a deployment object with the docker image in the cluster
#kubectl apply -f deployment.yaml
#kubectl create deployment technical-test-local-hello --image=yp

# Create a service object that expose the deployement
kubectl apply -f service.yaml

# Create a service object that expose the deployement
kubectl apply -f service.yaml

# Returns the default endpoint since there is no redirection
minikube service technical-test-k8s-service --url
