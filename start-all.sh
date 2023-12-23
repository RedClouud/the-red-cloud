#!/bin/bash

cd $(dirname "$0")

# Test sudo access
sudo -v
if [ $? -ne 0 ]; then
    echo "Please run this script with sudo"
    exit 1
fi

# Install dependencies
echo "Installing dependencies..."
sudo apt-get update -y
sudo apt-get install docker.io -y
sudo apt-get install git -y 
git clone https://github.com/RedClouud/the-red-cloud.git 

# Start all services
echo "Starting services..."

cd the-red-cloud

# Start Pi-hole
cd pihole
./start-pihole.sh
