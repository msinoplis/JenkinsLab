#!/bin/bash

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install nginx -y

sudo apt-get install python-software-properties

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash

sudo apt-get install nodejs -y

sudo apt-get install npm -y

sudo npm install pm2 -g

# install nginx
sudo apt-get install mongodb-org -y

# configure and restart mongo
sudo rm /etc/mongod.conf
sudo cp /db/templates/mongod.conf /etc/mongod.conf
sudo service mongod restart

# copy the profiles.d directory
sudo cp /home/ubuntu/profile.d/* /etc/profile.d
