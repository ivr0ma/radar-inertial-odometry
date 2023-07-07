#!/bin/bash

docker_dir=$(dirname $0)

docker run -it --rm -d \
    --name radar \
    --net "host" \
    -v $(realpath $docker_dir)/../../:/home/ivr0ma/catkin_ws/src:rw \
    my-ros:latest
