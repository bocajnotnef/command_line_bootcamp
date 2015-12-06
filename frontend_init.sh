curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.bashrc

# sometimes that source doesn't work....
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# some dependencies don't work with node 1+, so stick with 0.12
nvm install 0.12
nvm use 0.12

git clone https://github.com/Blahah/command_line_bootcamp.git
cd command_line_bootcamp
npm install

# we aren't deploying to github pages, so we'll do this
npm run build && npm run fixcolor && npm run render
