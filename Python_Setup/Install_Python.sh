#!/bin/bash
cd /home/ubuntu
sudo apt-get update
sudo apt -y upgrade
sudo apt full-upgrade
python3_version=$(python3 --version 2>&1)
echo "\**** Before Installation"
echo  $python3_version
echo "\****"
sudo apt-get install python3.7
sudo apt-get install python-boto


python_version=$(python3 --version 2>&1)
echo "\**** After Installation"
echo  $python_version
echo "\****"
