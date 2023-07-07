FROM tiryoh/ros-melodic-desktop
# ros:melodic-ros-base-bionic
# tiryoh/ros-melodic-desktop
# osrf/ros:melodic-desktop-full-stretch

# ENV DEBIAN_FRONTEND noninteractive

ARG NUM_THREADS=1

# User setup
ARG USER=ivr0ma
ARG UID=1000
ARG GID=1000
ARG PW=1111

# Add user and his password
RUN useradd -m ${USER} --uid=${UID} && \
    echo "${USER}:${PW}" | chpasswd && \
    usermod -s /bin/bash ${USER} && \
    usermod -a -G sudo ${USER}

# Install dependencies
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     ros-melodic-robot=1.4.1-0* && \
#     rm -rf /var/lib/apt/lists/*

# Install additional dependencies
RUN apt-get update && apt-get install -q -y \
    vim \
    git \
    tmux \
    python3-pip \
    gcc \
    g++ \
    gfortran \
    libeigen3-dev \
    ros-melodic-turtlebot3 \ 
    ros-melodic-turtlebot3-msgs \ 
    ros-melodic-turtlebot3-simulations \
    ros-melodic-teleop-twist-keyboard \ 
    ros-melodic-amcl \
    ros-melodic-map-server \
    ros-melodic-move-base \
    ros-melodic-urdf \
    ros-melodic-xacro \
    ros-melodic-compressed-image-transport \
    ros-melodic-rqt-image-view \
    ros-melodic-gmapping \
    ros-melodic-navigation \
    ros-melodic-interactive-markers \
    ros-melodic-hector-gazebo-plugins  \
    ros-melodic-pcl-conversions \
    ros-melodic-pcl-ros \
    libgoogle-glog-dev \
    ros-melodic-catkin \
    python3-catkin-tools \
    ros-melodic-octomap-rviz-plugins && \
    rm -rf /var/lib/apt/lists/*

# Add workspace
RUN mkdir -p /home/${USER}/catkin_ws/src && \
    chown -R ${UID}:${GID} /home/${USER}

# Copy context
#COPY ./ /home/${USER}/catkin_ws/src

WORKDIR /home/${USER}
USER ${UID}:${GID}
