#!/bin/bash
cd /home/ubuntu

sudo apt-get install unzip

cd /home/ubuntu/

sudo mkdir Terraformbase

ls

cd Terraformbase/

sudo wget https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_linux_amd64.zip

sudo unzip terraform_0.12.7_linux_amd64.zip

export PATH=/home/ubuntu/Terraformbase/:$PATH
#sudo mv terraform /usr/local/bin/

terraform --version

which terraform

pwd
