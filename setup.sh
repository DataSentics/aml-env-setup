#!/bin/bash

# Installing useful packages
sudo apt -y install ranger tmux neovim sl

# Install last version of fish
# Issue https://github.com/conda/conda/issues/11079
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt -y update
sudo apt -y install fish

echo "Copy dotfiles..."
cp -r dotfiles/. ~/.config/

echo "Copying binaries..."
cp -r bin ~/.local/

# Set the user-defined PATH
fish -c 'set -U fish_user_paths /home/azureuser/.local/bin'

# set the preferred editor
fish -c 'set -Ux EDITOR nvim'

