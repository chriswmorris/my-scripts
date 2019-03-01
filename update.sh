#!/bin/bash

echo "========================="
echo "Running Update"
echo "========================="
sleep 1
sudo apt update

sleep .5
echo "========================="
echo "Running Upgrade"
echo "========================="
sleep .5
sudo apt -y upgrade

sleep .5
echo "========================="
echo "Running Dist-Upgrade"
echo "========================="
sleep .5
sudo apt -y dist-upgrade

sleep .5
echo "============================="
echo "Running Autoremove and Clean"
echo "============================="
sleep .5
sudo apt -y autoremove
sudo apt clean
