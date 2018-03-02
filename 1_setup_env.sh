#!/bin/bash

# add ppa
sudo add-apt-repository ppa:zeal-developers/ppa -y

# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# install media codecs
sudo apt-get install ubuntu-restricted-extras -y

# install curl
sudo apt-get install curl -y

# install vim
sudo apt-get install vim -y
cp dotfiles/.vimrc ~/.vimrc
source ~/.vimrc

# install tree
sudo apt-get install tree -y

# install htop
sudo apt-get install htop -y

# install gparted
sudo apt-get install gparted -y

# install tmux
sudo apt-get install tmux -y
cp dotfiles/.tmux.config ~/.tmux.config

# install ranger
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo -y
cp -r dotfiles/ranger ~/.config

# install sox
sudo apt install sox -y
sudo apt install libsox-fmt-all -y

if [ ! -f ~/Music/hallelujahshort.swf.mp3 ]; then
	wget https://www.myinstants.com/media/sounds/hallelujahshort.swf.mp3
	mv hallelujahshort.swf.mp3 ~/Music/hallelujahshort.swf.mp3
fi

# install zsh
sudo apt-get install zsh -y

#get oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

# install zeal
sudo apt-get install zeal -y

cp dotfiles/.bash_aliases ~/.bash_aliases
cp dotfiles/.zshrc ~/.zshrc

. ~/.bashrc

echo "done"
