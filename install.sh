#!/bin/zsh

# remove and set

function set_dotfile(){
	local DST=$1
	local FILE_NAME=$2
	rm -f "$DST/$FILE_NAME"
	cp $FILE_NAME "$DST/$FILE_NAME" && source "$DST/$FILE_NAME" 
}


set_dotfile $HOME ".zshrc"
#set_dotfile $HOME ".aliases"

