#!/bin/bash
if [ $USER == root ]
then
    echo "Do not run as root";
    exit
fi
# installing neovim
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y git software-properties-common
sudo apt-get install -y neovim
sudo apt-get install -y python-dev python-pip python3-dev python3-pip cmake build-essential
sudo pip install neovim

# setup symbolic linking
## make directories
USER_DIR=/home/$USER
NV_DIR=$USER_DIR/.config/nvim
echo user directory: $USER_DIR
echo neovim directory: $NV_DIR
mkdir -p $NV_DIR/
mkdir -p $NV_DIR/autoload

# make links
ln -s $USER_DIR/.files/nvim/init.vim $NV_DIR/init.vim
ln -s $USER_DIR/.files/nvim/autoload/plug.vim $NV_DIR/autoload/plug.vim
ln -s /usr/bin/nvim /usr/local/bin/nv

# use neovim instead of other editor things
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

# git setup
git config credential.helper 'cache --timeout 3600'

