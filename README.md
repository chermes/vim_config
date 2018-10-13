# Vim

This repository comprises a set of vim configurations and plugins of my daily
work. Currently, I am using Python and LaTeX.

## Requirements

The following software packages need to be already installed on your system and
available via shell:
* VIM (>= 8.0) with python3 support enabled
* python3 (e.g. via (mini/ana)conda) + pip3

## Plugin Installation

### Linux

Initialize the ~/.vim directory and download / clone all the plugins listed below:
```bash
sh install_vim.sh
```

### Windows

Created a %HOME% environment variable and point that to c:\Users\<yourname>.
The vim configurations and plugins will be installed to that directory.

Initialize the ~/vimfiles directory and download / clone all the plugins listed
below from a cmd shell:
```cmd
.\install_vim.bat
```

## Configuration Installation: (g)vimrc

Currently, the following configuration files need to be linked / copied:
- vimrc
- gvimrc
- flake8

### Linux

Link the vim configuration files in the home directory:
```bash
cd configs
sh link_configs.sh
```

### Windows

Again, make sure that you created the %HOME% environment variable (see above).

Since linking is not possible in Windows, the configuration files have to be
copied:
```cmd
cd configs
sh .\copy_configs.bat
```

## Plugin List

### Initialization

* [pathogen](https://tpo.pe/pathogen.vim): vim package manager

### General plugins

* [NERDTree](https://github.com/scrooloose/nerdtree.git)
* [CtrlP](https://github.com/kien/ctrlp.vim.git): fast finding of files
* [Vim airline](https://github.com/vim-airline/vim-airline): sophisticated statusline
* [Ultisnips](https://github.com/SirVer/ultisnips.git): snippet manager + [templates](https://github.com/honza/vim-snippets.git)
* [fugitive](https://github.com/tpope/vim-fugitive.git): git management
* [tcomment](https://github.com/tomtom/tcomment_vim): source code comments

### Python

* [jedi-vim](https://github.com/davidhalter/jedi-vim.git): Python autocompletion
* lint engine
  * [ale](https://github.com/w0rp/ale.git) (for VIM greater or equal than 8.0)
  * [syntastic](https://github.com/vim-syntastic/syntastic) (for VIM less than 8.0)
* flake8 (actually a Python package)
* [PEP8 Indentation](https://github.com/Vimjas/vim-python-pep8-indent.git)

### LaTeX

* [vimtex](https://github.com/lervag/vimtex.git)
