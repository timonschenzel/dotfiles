filetype off "Required.

"Filesset the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'posva/vim-vue'
Plugin 'jiangmiao/auto-pairs'
Plugin 'haya14busa/incsearch.vim'
Plugin 'w0rp/ale'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'skwp/greplace.vim'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
Plugin 'airblade/vim-gitgutter'
" Plugin 'StanAngeloff/php.vim'
" Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'tobyS/vmustache'
" Plugin 'sirver/ultisnips'

" Plugin 'farfanoide/vim-facebook'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'janko-m/vim-test'
" Plugin 'dracula/vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
" Plugin 'daylerees/colour-schemes', { 'rtp': 'vim/' }
" Plugin 'noahfrederick/vim-noctu'
Plugin 'alvan/vim-php-manual'
Plugin 'mhinz/vim-startify'
Plugin 'markonm/traces.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'arnaud-lb/vim-php-namespace'

"All of your Plugins must be added before the following line.
call vundle#end()            "Required.
filetype plugin indent on    "Required.
