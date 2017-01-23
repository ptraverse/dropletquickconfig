#!

# Git Alias
echo "alias g=git" >> ~/.bash_aliases


# Git Configs
git config --global user.name "Philippe Traverse"
git config --global user.email "philippe.traverse@gmail.com"
git config --global alias.co checkout
git config --global alias.s status
git config --global alias.stauts status
git config --global alias.c commit
git config --global push.default simple


# Node + Npm
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Mongo
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# Dev Tools
npm install -g mocha nodemon
