#!/bin/bash
cd /home/ubuntu
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
#change pwd and check the url

sudo vim /etc/default/jenkins
#change port number to 9090
sudo systemctl status jenkins
sudo systemctl stop jenkins
sudo systemctl status jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

sudo ufw status
sudo ufw allow 9090
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status
#check the url
