#!/bin/bash


DEST=~/.local/share/fonts/Monaspace

mkdir -p $DEST 
#remove all fonts from ~/.local/share/fonts that start with "Monaspace"
rm -rf $DEST/Monaspace*

wget https://github.com/githubnext/monaspace/releases/download/v1.000/monaspace-v1.000.zip
unzip monaspace-v1.000.zip
mv monaspace-v1.000/fonts/otf/* monaspace-v1.000/fonts/variable/*  $DEST

# Build font information caches
fc-cache -f

rm  -rf __MAC* monaspace-v1.000*

