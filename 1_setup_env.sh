#!/bin/bash

# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# install vim
sudo apt-get install vim -y

# install tree
sudo apt-get install tree -y

# install htop
sudo apt-get install htop -y

# install gparted
sudo apt-get install gparted -y

# install tmux
sudo apt-get install tmux -y
cp config/.tmux.config ~/.tmux.config













# setup the aliases
touch ~/.bash_aliases


add_alias () {
	if ! grep -q "$1" ~/.bash_aliases ; then
		echo $1 >> ~/.bash_aliases
	fi
}

# Add git aliases
add_alias "alias s=\"git status\""
add_alias "alias aa=\"git add --all\""
add_alias "alias c=\"git commit -m\""
add_alias "alias pull=\"git pull\""
add_alias "alias push=\"git pull & git push -u\""
add_alias "alias merge=\"git merge\""



exec "$BASH"

echo "done"
