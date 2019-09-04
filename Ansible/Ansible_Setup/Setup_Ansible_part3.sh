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
