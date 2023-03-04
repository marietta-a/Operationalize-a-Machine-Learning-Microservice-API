#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=marietta95/project-ml:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project-ml-pod --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
#get pod name
pod=$(kubectl get pods -o name)
echo pod: $pod
# Forward the container port to a host
kubectl port-forward $pod --address 0.0.0.0 8000:80
