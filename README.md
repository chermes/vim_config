# Vim

Vim Installation and Configuration

## Installation

Initialize the ~/.vim directory and download / clone all the plugins listed below.
```bash
sh install_vim.sh
```

Link the vim configuration files in the home directory:
```bash
sh configs/link_configs.sh
```

## Structure

Look into the configs/ directory for the vim and gvim configurations.

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
