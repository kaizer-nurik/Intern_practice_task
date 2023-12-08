FROM osrf/ros:noetic-desktop-focal


RUN mkdir /z1_package && \
    mkdir /z1_package/unitree_ws && \
    mkdir /z1_package/unitree_ws/src && \
    mkdir /z1_package/unitree_ws/src/unitree_ros && \
    mkdir /z1_package/unitree_ws/src/unitree_legged_msgs && \
    mkdir /z1_package/z1_controller && \
    mkdir /z1_package/z1_sdk

WORKDIR /z1_package
SHELL ["/bin/bash", "-c"]
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget unzip git make gcc nano htop gperf python3-pip python3-dev \
    build-essential libboost-dev libeigen3-dev ros-noetic-desktop-full && \
    pip3 install --upgrade pip && \
    rm -rf /var/lib/apt/lists/* 

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh

CMD [ "bash" ]