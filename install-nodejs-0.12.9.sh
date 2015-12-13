#!/usr/bin/env bash

#change to home directory of current logged in user
cd ~

#download nodejs
curl -O https://nodejs.org/dist/v0.12.9/node-v0.12.9-linux-x64.tar.gz

#uncompress and move nodejs to /opt
tar -xvf node-v0.12.9-linux-x64.tar.gz
mv node-v0.12.9-linux-x64 /opt


