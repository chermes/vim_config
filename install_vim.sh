#!/bin/sh
# Installs the vim configuration and the basic plugins under linux

# get vim version
VIMVER=`vim --version | head -1 | sed "s/^[^0-9]*//" | sed "s/ .*$//"`
GT_VIM8=`echo "($VIMVER < 8.0)" | bc`

## Init vim configs

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

## General plugins

# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# fast finding of files
git clone https://github.com/kien/ctrlp.vim.git

# sophisticated statusline
git clone https://github.com/vim-airline/vim-airline

# snippet manager + templates
git clone https://github.com/SirVer/ultisnips.git
# git clone https://github.com/tomtom/tlib_vim.git
# git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
# git clone https://github.com/garbas/vim-snipmate.git
#
git clone git://github.com/honza/vim-snippets.git

# git plugin
git clone https://github.com/tpope/vim-fugitive.git

# Source code comment plugin
git clone https://github.com/tomtom/tcomment_vim

## Python

# Python autocompletion
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

# PEP8 indentation
git clone https://github.com/Vimjas/vim-python-pep8-indent.git

# lint engine
if [ $GT_VIM8 ]
then
    echo "vim >= 8: using ale"
    git clone https://github.com/w0rp/ale.git
else
    echo "vim < 8: using syntastic"
    git clone https://github.com/vim-syntastic/syntastic
fi

pip install flake8

## LaTeX
git clone https://github.com/lervag/vimtex.git
