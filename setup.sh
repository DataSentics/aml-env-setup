#!/bin/bash

# Installing useful packages
sudo apt -y install fish ranger tmux neovim sl

echo "Copy dotfiles..."
cp -r dotfiles/. ~/.config/

echo "Copying binaries..."
cp -r bin ~/.local/

# Set the user-defined PATH
fish -c 'set -U fish_user_paths /home/azureuser/.local/bin'
