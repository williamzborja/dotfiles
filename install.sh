#!/bin/zsh

# remove and set

function set_dotfile(){
	local DST=$1
	local FILE_NAME=$2
	rm -f "$DST/$FILE_NAME"
	ln -s "$(pwd)/$FILE_NAME" "$DST/$FILE_NAME"
	source "$DST/$FILE_NAME" 
}

CONFIG="$HOME/.config"

set_dotfile $HOME ".aliases"
set_dotfile $HOME ".config/alacritty"
set_dotfile $HOME ".config/starship.toml"
set_dotfile $HOME ".config/nvim"
set_dotfile $HOME ".config/kitty"


set_dotfile $HOME ".zshrc"
