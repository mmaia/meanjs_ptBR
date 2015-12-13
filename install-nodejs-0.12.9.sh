#!/usr/bin/env bash

#currently this script was only tested and targeted to Ubuntu 14.04
#change to home directory of current logged in user
cd ~

#download nodejs
curl -O https://nodejs.org/dist/v0.12.9/node-v0.12.9-linux-x64.tar.gz

#uncompress, delete compressed and move nodejs to /opt changing it's name to node-v0.12.9
tar -xvf node-v0.12.9-linux-x64.tar.gz
rm -rf node-v0.12.9-linux-x64.tar.gz
mv node-v0.12.9-linux-x64 /opt/node-v0.12.9

#gives lots of permissions for node usage
chmod -R 755 /opt/node-v0.12.9
chown -R 'whoami' /opt/node-v0.12.9

#add node and npm to .bashrc
echo 'export PATH=$PATH:/opt/node-v0.12.9/bin:~/npm-global/bin' >> ~/.bashrc
source ~/.bashrc

#change default nodejs repository to current user npm-global folder, see: https://docs.npmjs.com/getting-started/fixing-npm-permissions
mkdir ~/npm-global
chown -R 'whoami' ~/npm-global/
npm config set prefix '~/npm-global'




