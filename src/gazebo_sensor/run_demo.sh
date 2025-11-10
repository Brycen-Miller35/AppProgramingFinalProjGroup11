#!/bin/bash

# Step 1: Launch Gazebo simulation
echo "Starting Gazebo..."
gz sim Gazebo_Demo.sdf &

# Capture the Gazebo process ID in case you want to close it later
GAZEBO_PID=$!

# Wait a few seconds (optional — gives Gazebo time to load)
sleep 3
echo "Gazebo is running."

# Step 2: Wait for user input
read -p "Press ENTER to start lidar_node..."

# Step 3: Run your lidar node
./build/lidar_node

