#!/bin/bash
echo "RPLIDAR SLAM Test Script"
echo "========================"
echo ""
echo "1. Testing RPLIDAR connection..."
source /opt/ros/humble/setup.bash
source ~/rplidar_slam_ws/install/setup.bash

# Check USB port
echo "Checking /dev/ttyUSB0..."
if [ -c /dev/ttyUSB0 ]; then
    echo "✓ USB port found"
    sudo chmod 666 /dev/ttyUSB0
else
    echo "✗ USB port not found!"
    exit 1
fi

echo ""
echo "2. Available launch files:"
echo "   ros2 launch rplidar_slam rplidar.launch.py"
echo "   ros2 launch rplidar_slam rplidar_rviz.launch.py"
echo "   ros2 launch rplidar_slam slam.launch.py"
echo ""
echo "3. Quick commands:"
echo "   Test RPLIDAR only:        ros2 launch rplidar_slam rplidar.launch.py"
echo "   Test RPLIDAR + RVIZ:      ros2 launch rplidar_slam rplidar_rviz.launch.py"
echo "   Full SLAM:                ros2 launch rplidar_slam slam.launch.py"
echo ""
echo "4. If you get timeout errors, try different baud rates:"
echo "   Edit launch/rplidar.launch.py and change serial_baudrate to:"
echo "   - 115200 (default)"
echo "   - 256000"
echo "   - 9600"
echo "   - 57600"