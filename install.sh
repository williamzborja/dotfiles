#!/usr/bin/env bash

# remove and set
function set_dotfile() {
	local DST=$1
	local FILE_NAME=$2
	sudo rm -rf "$DST/$FILE_NAME"
	ln -s "$(pwd)/$FILE_NAME" "$DST/$FILE_NAME"
	#	source "$DST/$FILE_NAME"
}

CONFIG="$HOME/.config"

mkdir -p $CONFIG

set_dotfile $HOME ".aliases"
set_dotfile $HOME ".config/alacritty"
set_dotfile $HOME ".config/nvim"
#set_dotfile $HOME ".config/kitty"
set_dotfile $HOME ".zshrc"

sudo cp /etc/nixos/hardware-configuration.nix ./nixos
sudo rm -rf /etc/nixos
sudo ln -s "$(pwd)/nixos" /etc/nixos
