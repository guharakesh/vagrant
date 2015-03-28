#!/usr/bin/env bash

apt-get update

apt-get install -y git dos2unix

curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs

npm install -g http-server

gem install sass
