#!/bin/bash
cd /home/ubuntu
echo $(pwd)
sudo apt-get update
sudo apt -y upgrade
java_version=$(java -version 2>&1)
echo "\**** Before Installation"
echo  $java_version
echo "\****"
sudo apt install openjdk-8-jdk
java_version=$(java -version 2>&1)
sudo apt upgrade
echo "\**** After Installation"
echo  $java_version
echo "\*****"

sudo apt  install awscli
cd /home/ubuntu

cd NEST_Scripts/Terrafor_setup/
source Setup_terraform.sh
cd /home/ubuntu/NEST_Scripts/Terrafor_setup
