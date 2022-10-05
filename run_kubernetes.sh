#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="cuongmh/project4:latest"
# Create secret to connect repository image docker private
kubectl create secret generic cuongmh \
    --from-file=.dockerconfigjson=<path/to/.docker/config.json> \
    --type=kubernetes.io/dockerconfigjson
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create -f deployment_project-4.yaml
kubectl expose deployment project4 --port=80 --name=service-udacity-project4
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose deployment project4 --type=LoadBalancer --port=8080 --target-port=80