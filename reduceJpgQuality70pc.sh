#/!/bin/bash

if [$(which convert)=""];then
    sudo apt install -y imagemagick > /dev/null
fi

CURRENT_DIR=$(basename $(pwd))

COMPRESSED_DIR="$CURRENT_DIR compressed"

mkdir ./COMPRESSED_DIR


for f in *.JPG; do convert "$f" -quality 70 COMPRESSED_DIR/"$f"; done 
