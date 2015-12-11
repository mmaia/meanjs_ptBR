#!/usr/bin/env bash
#
# MongoDB installation
#
# Written by Marcos Maia <maia.marcos@gmail.com>
#
# This script install mongodb on ubuntu. Tested on ubuntu 14.04
# It uses commands listed in official mongodb webpage - https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/

echo "Adding mongo db repository key"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

echo "creating list file for ubuntu 14.04"
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

echo "updates ubuntu to recognize added mongodb repository"
sudo apt-get update

echo "installing latest stable version of mongodb packages"
sudo apt-get install -y mongodb-org

echo "starting mongodb"
sudo service mongod start