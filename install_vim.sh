#!/bin/sh

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

# Python autocompletion
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

# lint engine
git clone https://github.com/w0rp/ale.git
pip install flake8
sudo apt-get install pylint

# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# fast finding of files
git clone https://github.com/kien/ctrlp.vim.git

# sophisticated statusline
git clone https://github.com/vim-airline/vim-airline

# snippet manager + templates
git clone https://github.com/SirVer/ultisnips.git
git clone git://github.com/honza/vim-snippets.git

# git plugin
git clone https://github.com/tpope/vim-fugitive.git
