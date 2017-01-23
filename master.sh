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
git config --global alias.lg log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
git config --global alias.pull pull --rebase --autostash


# Pretty Git Command Line
echo "

source /etc/bash_completion.d/git-prompt
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[$(tput setaf 4)\]\u\[$(tput setaf 7)\] \W\[$(tput setaf 1)\]$(__git_ps1)\] $ \[$(tput setaf 7)\]'

" >> ~/.bashrc

# Node + Npm
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs --allow-unauthenticated

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Mongo
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org --allow-unauthenticated

# Dev Tools
npm install -g mocha nodemon -y --allow-unauthenticated

# Run  bashrc again to make it all work
. ~/.bashrc
