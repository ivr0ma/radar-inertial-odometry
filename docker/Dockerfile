FROM ros:melodic-ros-base-bionic

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
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-robot=1.4.1-0* && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/${USER}/catkin_ws/src && \
    chown -R ${UID}:${GID} /home/${USER}

# Copy context
COPY ./ /home/${USER}/catkin_ws/src

WORKDIR /home/${USER}
USER ${UID}:${GID}
