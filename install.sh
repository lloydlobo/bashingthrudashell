#!/usr/bin/env bash

# https://github.com/lloydlobo/dotfiles-scripts/blob/master/scripts/install.sh

# “Use the interpreter located at usr/bin/env to run the above script, with bash.”
# using the above as direct reference to location of the shell on target machine
# #!/bin/bash

# Inform script status & shell info
echo Running in $SHELL 

# Copy dotfiles
# ./copy.sh

# Update Arch and get statndard repository programs
sudo pacman -Syu
# sudo pacman -S yay
# TODO add yay to the programs/ -- first on the list

function install {
  which $1 &> /dev/null
  # $a -ne $b	$a is not equal to $b
  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo pacman -Syu $1
  else 
    echo "Already installed: ${1}"
  fi
}
# if else syntax https://linuxhandbook.com/if-else-bash/

# Basics
install curl
install wget
install git
install file
install htop
install tree
install vim
install yq
install jq
install firefox
# install chrome
install qutebrowser

# Image processing
install gimp
install jpegoptim
install optipng

# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo pacman -Syu
# Remove orphaned packages
# yay -Yc

# List orphaned packages
sudo pacman -Qtdq

#
# FIN
#


#
# Install terminal stuff
#
# sudo pacman -S kitty alacritty vim vi

#
# Install astronvim & it's dependencies
#
# yay astronvim ncdu ripgrep lazygit htop btop 

#
# NODE | NVM 
#
# yay nvm

#
# CLI TOOLS
#
# yay procs
