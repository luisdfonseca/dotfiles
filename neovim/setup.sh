#!/bin/bash

# Install necessary dependencies
sudo apt-get update
sudo apt-get install -y \
    ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl ripgrep

# Clone neovim repository from GitHub
mkdir ~/neovim
cd ~/neovim
curl -L https://github.com/neovim/neovim/archive/refs/heads/master.zip -o neovim.zip
unzip neovim.zip
cd neovim-master

# Build and install
make CMAKE_BUILD_TYPE=Release
sudo make install

# Add to PATH (Optional)
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Confirm the installation
nvim --version

mkdir -p ~/.config/nvim
cp /dotfiles/neovim/init.lua ~/.config/nvim
