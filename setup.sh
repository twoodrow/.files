#!/bin/bash
if [ $USER == root ]
then
    echo "Do not run as root";
    exit
fi
# installing neovim
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-get install -y neovim
sudo apt-get install -y python-dev python-pip python3-dev python3-pip cmake build-essential
sudo pip install neovim

# use neovim instead of other editor things
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

# setup symbolic linking
## make directories
USER_DIR=/home/$USER
NV_DIR=$USER_DIR/.config/nvim
echo user directory: $USER_DIR
echo neovim directory: $NV_DIR
sudo mkdir -p $NV_DIR/
sudo mkdir -p $NV_DIR/autoload
# make links
sudo ln -s $USER_DIR/dotfiles/nvim/init.vim $NV_DIR/init.vim
sudo ln -s $USER_DIR/dotfiles/nvim/autoload/plug.vim $NV_DIR/autoload/plug.vim
sudo ln -s /usr/bin/nvim /usr/local/bin/nv
