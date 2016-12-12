#!/bin/sh

# add repos
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:jonathonf/vim

# basic update
sudo apt -y --force-yes update
sudo apt -y --force-yes upgrade

# install applications
sudo apt -y --allow-unauthenticated install \
	vim-nox \
	git \
	spotify-client

# remove folders
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Music
rm -rf ~/Videos

# add folders
mkdir ~/Development
