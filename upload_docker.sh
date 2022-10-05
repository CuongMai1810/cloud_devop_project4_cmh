#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="cuongmh/project4:latest"
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u cuongmh -p dckr_pat_ixn3XEp9bBGOvcdAOBB8U_g5N-o
docker tag project4:latest cuongmh/project4:latest
# Step 3:
# Push image to a docker repository
docker push cuongmh/project4:latest
