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
ssh-agent bash

cd /home/ubuntu
sudo mkdir aws_doc_steps
cd aws_doc_steps/
sudo wget https://raw.githubusercontent.com/cgkbharadwaj/awsKeypai/master/terraformworkload.pem
ssh-add /home/ubuntu/aws_doc_steps/terraformworkload.pem

cd /home/ubuntu
sudo mkdir ansible_control_center
sudo git clone https://github.com/ansible/ansible-examples.git
cd ansible-examples/
ls
