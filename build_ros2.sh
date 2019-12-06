#!/bin/bash

mkdir -p src
vcs import src < rclcpp.repos
colcon build --base-paths src --install-base install --merge-install 
