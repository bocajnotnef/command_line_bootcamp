#!/usr/bin/env bash

apt-get update

# install and set up nvm and node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.bashrc

# some dependencies don't work with node 1+, so stick with 0.12
nvm install 0.12
nvm use 0.12

# major dependencies
npm install --global docker-browser-server

# set up docker
cd command_line_bootcamp
docker build -t "command_line_bootcamp"
docker-broswer-server command_line_bootcamp -p 8080

cd ..

git clone https://github.com/bocajnotnef/command_line_bootcamp.git
cd command_line_bootcamp
npm install

npm run deploy
