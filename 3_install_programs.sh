#!/bin/bash

# add PPA
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y

# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# install vlc
sudo apt install vlc -y

# install GIMP
sudo apt-get install gimp -y

# install chromium
sudo apt-get install chromium-browser -y

# remove PPA
sudo add-apt-repository --remove ppa:otto-kesselgulasch/gimp -y

echo "done"
