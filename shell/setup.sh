#!/usr/bin/env bash

apt-get update

apt-get install -y git dos2unix

curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs

npm install -g http-server
npm install -g node-inspector 

gem install sass

npm install -g cordova
npm install -g ionic

npm install -g gulp-install
npm install -g gulp-util
npm install -g bower
npm install -g gulp-concat
npm install -g gulp-sass
npm install -g gulp-minify-css
npm install -g gulp-rename
npm install -g shelljs
