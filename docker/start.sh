#!/bin/bash

docker_dir=$(dirname $0)

docker run -it -d --rm \
    --env="DISPLAY=$DISPLAY" \
    --privileged \
    --name radar \
    my-ros:latest
