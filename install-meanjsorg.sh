#!/usr/bin/env bash


#install all meanjs.org global dependencies
npm install -g bower grunt-cli grunt gulp

#clonse meanjs project
git clone https://github.com/meanjs/mean.git meanjs

#install project dependencies
cd meanjs
npm install