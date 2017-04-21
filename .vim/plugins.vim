filetype off "Required.

"Filesset the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vundlevim/vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'scrooloose/syntastic'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'sirver/ultisnips'
Plugin 'vim-php-refactoring-toolbox'
Plugin 'farfanoide/vim-facebook'
Plugin 'wincent/command-t'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'janko-m/vim-test'
Plugin 'daylerees/colour-schemes'
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/nerdcommenter'

"All of your Plugins must be added before the following line.
call vundle#end()            "Required.
filetype plugin indent on    "Required.
