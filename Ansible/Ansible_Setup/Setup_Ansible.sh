sudo apt-get update
sudo apt -y upgrade
ansible_version=$(ansible --version 2>&1)
echo "\**** Before Installation"
echo  $ansible_version
echo "\****"

sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible


sudo apt install ansible

ansible_version=$(ansible --version 2>&1)
echo "\**** After Installation"
echo  $ansible_version
echo "\****"
apt show ansible
export AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXXXXXXXXXXX'
export AWS_SECRET_ACCESS_KEY='XXXXXXXXXXXXXXXXXXXXXXXXXX'
