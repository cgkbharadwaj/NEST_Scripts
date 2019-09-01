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
echo "\****"
