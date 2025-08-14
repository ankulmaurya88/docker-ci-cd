#!/bin/bash
IMAGE_NAME="python-ci-cd-app"

# Build Docker image
docker build -t $IMAGE_NAME .

# Run container
docker run --rm $IMAGE_NAME
