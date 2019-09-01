sudo apt-get update
sudo apt -y upgrade
python_version=$(python3 --version 2>&1)
echo "\**** Before Installation"
echo  $python_version
echo "\****"

sudo apt-get install python3.7
python_version=$(python3 --version 2>&1)
echo "\**** After Installation"
echo  $python_version
echo "\****"
