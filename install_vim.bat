REM Set the HOME variable on your local windows account, first!

mkdir %HOME%\vimfiles
mkdir %HOME%\vimfiles\autoload
mkdir %HOME%\vimfiles\bundle
bitsadmin.exe /transfer "Pathogen" https://tpo.pe/pathogen.vim %HOME%\vimfiles\autoload\pathogen.vim

set BUNDLE_DIR=%HOME%\vimfiles\bundle

REM NERDTree
git -c http.sslVerify=false clone https://github.com/scrooloose/nerdtree.git %BUNDLE_DIR%\nerdtree

REM fast finding of files
git -c http.sslVerify=false clone https://github.com/kien/ctrlp.vim.git %BUNDLE_DIR%\ctrlp.vim

REM sophisticated statusline
git -c http.sslVerify=false clone https://github.com/vim-airline/vim-airline %BUNDLE_DIR%\vim-airline

REM snippet manager + templates
git -c http.sslVerify=false clone https://github.com/SirVer/ultisnips.git %BUNDLE_DIR%\ultisnips
git -c http.sslVerify=false clone git://github.com/honza/vim-snippets.git %BUNDLE_DIR%\vim-snippets

git plugin
git -c http.sslVerify=false clone https://github.com/tpope/vim-fugitive.git %BUNDLE_DIR%\vim-fugitive

REM Source code comment plugin
git -c http.sslVerify=false clone https://github.com/tomtom/tcomment_vim %BUNDLE_DIR%\tcomment_vim

REM Python autocompletion
git -c http.sslVerify=false clone --recursive https://github.com/davidhalter/jedi-vim.git %BUNDLE_DIR%\jedi-vim

REM PEP8 indentation
git -c http.sslVerify=false clone https://github.com/Vimjas/vim-python-pep8-indent.git %BUNDLE_DIR%\vim-python-pep8-indent

REM lint engine
git -c http.sslVerify=false clone https://github.com/w0rp/ale.git %BUNDLE_DIR%\ale
pip install flake8

REM vimtex
git -c http.sslVerify=false clone https://github.com/lervag/vimtex.git %BUNDLE_DIR%\vimtex
