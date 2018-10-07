#!/bin/sh

# Link all config files in the home directory to these files

PWD=$(pwd)

ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/gvimrc ~/.gvimrc
ln -s $PWD/flake8 ~/.config/flake8
