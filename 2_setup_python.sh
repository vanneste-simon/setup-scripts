#!/bin/bash

# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# install pip
sudo apt-get install -y python-pip
sudo apt-get install -y python3-pip

# install development tools
sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y

# install virtualenv and wrapper
sudo pip install virtualenv virtualenvwrapper

# update pip
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip

# backup bashrc
cp ~/.bashrc ~/.bachrc-org

# adapt bachrc
if ! grep -q "virtualenv" ~/.bash_aliases ; then
	printf '\n%s\n%s\n%s' '# virtualenv' 'export WORKON_HOME=~/virtualenvs' \
		'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
fi

. ~/.bashrc

echo "done"
