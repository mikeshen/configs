#!/bin/sh

CONFIG_DIR=$(pwd | sed s#/scripts##)

# add repos
 sudo add-apt-repository ppa:kubuntu-ppa/backports
 sudo add-apt-repository ppa:jonathonf/vim

# basic update
 sudo apt -y --force-yes update
 sudo apt -y --force-yes upgrade

# install applications
sudo apt -y --allow-unauthenticated install \
    vim-nox \
    tmux \
    git \
    gitk \
    git-svn \
    wget \
    ctags \
    cscope \
    vlc \
    qbittorrent \
    kubuntu-desktop \
    zsh \

# install plugins
[ ! -d "$CONFIG_DIR/vim/repos/github.com/Shougo" ] && [ ! -d "$CONFIG_DIR/vim/repos/github.com/Shougo/dein.vim" ] && git clone https://github.com/Shougo/dein.vim "$CONFIG_DIR/vim/repos/github.com/Shougo/dein.vim"
[ ! -d /home/mikeshen/Development/configs/scripts/tpm ] &&  git clone https://github.com/tmux-plugins/tpm /home/mikeshen/Development/configs/scripts/tpm
[ -f .install-oh-my-zsh.sh ] && ./install-oh-my-zsh.sh


# remove folders
rm -vrf ~/Documents
rm -vrf ~/Public
rm -vrf ~/Templates
rm -vrf ~/Music
rm -vrf ~/Videos

# remove files
rm -vf ~/.zshrc

# add folders, if they don't already exist
[ ! -d ~/Development ] && mkdir ~/Development

# make symlinks
[ -f ./makelinks.sh ] && ./makelinks.sh

