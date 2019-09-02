sudo apt-get update
sudo apt -y upgrade

sudo apt install mysql-server

sudo systemctl status mysql

mysql --version

sudo mysql_secure_installation

sudo systemctl status mysql

sudo mysql -u root -p

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'very_strong_password';

FLUSH PRIVILEGES;

show databases;

CREATE DATABASE users_database;

show databases;
