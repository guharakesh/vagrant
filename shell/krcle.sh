#!/usr/bin/env bash

cd src/
if [ ! -d "/krcle" ]; then 
	git clone git@github.com:guharakesh/krcle.git
fi

cd krcle/
if [ ! -d "/src/krcle/node_modules" ]; then
	curl -sL https://deb.nodesource.com/setup | sudo bash -
	apt-get install -y nodejs
	npm install --no-bin-links
fi

cd ~
