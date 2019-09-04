#!/bin/bash
cd /etc/ansible/
sudo wget https://raw.githubusercontent.com/cgkbharadwaj/ansible_config/master/ec2.ini
sudo wget https://raw.githubusercontent.com/cgkbharadwaj/ansible_config/master/ec2.py

export ANSIBLE_HOSTS=/etc/ansible/ec2.py
export EC2_INI_PATH=/etc/ansible/ec2.ini

cd /etc/ansible
sudo chmod +x ec2.ini
sudo chmod +x ec2.py
/etc/ansible/ec2.py --list
