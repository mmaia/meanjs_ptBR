#version: 0.1
FROM ubuntu:14.04

MAINTAINER Marcos Maia "maia.marcos@gmail.com"

# Expose the ports that your app uses. For example:
EXPOSE 3000

RUN apt-get update \
&& apt-get install -y \
git \
nodejs \
npm

RUN npm install -g \
bower \
grunt-cli \
gulp

# use during mongodb installation
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

# Register the repo in local ubuntu for mongodb
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# new update to get mongodb package list
RUN sudo apt-get update

RUN sudo apt-get install -y mongodb-org

#inicializa mongodb
RUN sudo service mongod start
