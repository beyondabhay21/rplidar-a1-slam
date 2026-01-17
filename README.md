# cmds to run = 

# Powershell cmds
- usbipd list
- usbipd bind --busid 5-1
- usbipd attach --busid 5-1 --wsl

# Basic rituals
- ls /dev/ttyUSB*
- sudo chmod 666 /dev/ttyUSB0
- source /opt/ros/humble/setup.bash

# For only Rviz Launching for /scan
- source install/setup.bash
- ros2 launch rplidar_slam rplidar_rviz.launch.py

# Slam Launching
- cd ~/rplidar_slam_ws
- colcon build --packages-select rplidar_slam --symlink-install
- source install/setup.bash
- ros2 launch rplidar_slam rplidar_slam_fixed.launch.py
