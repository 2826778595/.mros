#!/bin/bash
# start_multiple_nodes_terminal.sh

# 加载 ROS2 环境
source /opt/ros/humble/setup.bash

# 在新终端中启动第一个节点 (turtlesim_node)
gnome-terminal -- bash -c "ros2 run turtlesim turtlesim_node; exec bash"

# 在新终端中启动第二个节点 (turtle_teleop_key)
gnome-terminal -- bash -c "ros2 run turtlesim turtle_teleop_key; exec bash"
