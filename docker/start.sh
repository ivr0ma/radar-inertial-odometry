#!/bin/bash

docker_dir=$(dirname $0)

docker run -it --rm -d \
    $ARGS \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --privileged \
    --name radar \
    --net "host" \
    -v $(realpath $docker_dir)/../../:/home/ivr0ma/catkin_ws/src:rw \
    my-ros:latest
