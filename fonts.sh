#!/bin/bash

DEST=~/.local/share/fonts/

mkdir -p $DEST 

function set_nerd_font() {
	local NAME=$1
	rm -rf "$DST/$NAME"
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/$NAME.zip
  unzip $NAME.zip -d $NAME
  mv $NAME $DEST
  rm -rf $NAME $NAME.zip
  fc-cache -f
}

set_nerd_font "Monaspace"
set_nerd_font "RobotoMono"
