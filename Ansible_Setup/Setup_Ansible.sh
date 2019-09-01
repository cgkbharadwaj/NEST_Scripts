sudo apt-get update
sudo apt -y upgrade
ansible_version=$(ansible --version 2>&1)
echo "\**** Before Installation"
echo  $ansible_version
echo "\****"

sudo apt install ansible
ansible_version=$(ansible --version 2>&1)
echo "\**** After Installation"
echo  $ansible_version
echo "\****"

export AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXXXXXXXXXXXXXXXX'
export AWS_SECRET_ACCESS_KEY='XXXXXXXXXXXXXXXXXXXXXXXXXXXX'

cd /etc/ansible/
wget https://github.com/cgkbharadwaj/ansible_config/blob/master/ec2.ini
wget https://github.com/cgkbharadwaj/ansible_config/blob/master/ec2.py

export ANSIBLE_HOSTS=/etc/ansible/ec2.py
export EC2_INI_PATH=/etc/ansible/ec2.ini



pip install boto
cd /etc/ansible
sudo chmod +x ec2.ini
sudo chmod +x ec2.py
/etc/ansible/ec2.py --list
ssh-agent bash

cd /home/ubuntu
cd aws_doc_steps/
wget https://github.com/cgkbharadwaj/awsKeypai/blob/master/terraformworkload.pem
ssh-add /home/ubuntu/aws_doc_steps/terraformworkload.pem

cd /home/ubuntu
mkdir ansible_control_center
gitclone https://github.com/ansible/ansible-examples.git
cd ansible-examples
ls