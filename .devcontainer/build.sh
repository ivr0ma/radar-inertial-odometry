#!/bin/bash

cd $(dirname $0)
cd ../..

NUM_THREADS=${1:-$(nproc)}

echo "Building..."

docker build . \
    -f radar-inertial-odometry/docker/Dockerfile \
    --build-arg UID=$(id -g) \
    --build-arg GID=$(id -g) \
    --build-arg NUM_THREADS=${NUM_THREADS} \
    -t my-ros:latest

docker images