set nocompatible                                                "viMproved, required

set noswapfile

so ~/.vim/plugins.vim

autocmd BufWritePost * GitGutter

"Duplicate file
nmap <Leader>df :Dupl 
command! -nargs=1 Dupl call Dupl(<f-args>)
function! Dupl(newName)
    let path = expand('%:p:h') . '/' . a:newName
    execute 'saveas ' . path
endfunction

set laststatus=2

set nowrap

set re=1


"set shellcmdflag=-ic                                            "To make Vim’s :! shell behave like your command prompt

syntax enable                                                   "Enable syntax highlighting.
imap jj <Esc>

let mapleader = ','                                             "The leader key.

map <Leader>l :NERDTreeFind<CR>

map <leader>p "+p
map <leader>y "+y
map <leader>d "+d
map <leader>Y "+Y
map <leader>P "+P
map <leader>D "+D

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Lesy escaping to normal model.ft> <NOP>
noremap <Right> <NOP>

" File specific settings
autocmd Filetype python setlocal noexpandtab tabstop=4 shiftwidth=4 " use tabs for Pyton (overwrite system settings)
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType php,blade autocmd BufWritePre <buffer> %s/\s\+$//e " remove whitespaces in PHP
autocmd Filetype php,blade autocmd BufWritePre <buffer> :%retab

set backspace=indent,eol,start                                  "Backspace action: indent, insert new line, and start it

"-----------Move lines----------"
" nnoremap <S-j> :m .+1<CR>==
" nnoremap <S-k> :m .-2<CR>==
" vnoremap <S-j> :m '>+1<CR>gv=gv
" vnoremap <S-k> :m '<-2<CR>gv=gv

"-----------Visuals----------"
let g:enable_bold_font = 1
set t_Co=256
colorscheme slime                                            "Set the theme.
"hi String ctermfg=14
"set background=dark
set guifont=Operator\ Mono:h15                                  "Set the default font family and size.
"set macligatures                                                "Show pretty symbols, when available.
set guioptions-=e                                               "Don't show style Gui tabs.
set linespace=17                                                "MacVim specific line-height.
set number                                                      "Show line numbers.
set relativenumber                                              "Show relative line numbers.
set noerrorbells visualbell t_vb=                               "No damn bells!
set autowriteall                                                "Automatically write the file when switching buffers.
set complete=.,w,b,u                                            "Set our desired autocompletion matching.

set guioptions-=l                                               "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

" indentLine
let g:indentLine_char = '⎸'

" PHP
let php_htmlInStrings = 1
let php_sql_query = 1
let php_baselib = 1
"let php_folding = 1

"hi LineNr guibg=bg                                              "Line number color the same as the background color.
"set cursorline                                                  "Highlight the current line.
"hi vertsplit guifg=#2d3449 guibg=#2d3449                        "Style the split borders.

"Indent
filetype plugin indent on                                       "Show existing tab with 4 spaces width.
set tabstop=4                                                   "Tab width.
set softtabstop=4                                               "On pressing tab, insert 4 spaces in insert mode.
set shiftwidth=4                                                "On pressing tab, insert 4 spaces in normal mode.
set expandtab                                                   "When indenting with '>', use 4 spaces width.

"-----------Search----------"
"set hlsearch
"set incsearch

"-----------Split Management----------"
set splitbelow
set splitright

"Easier window navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-----------Mappings----------"
"Easy way to edit the .vimrc file.
nmap <Leader>ve :e $MYVIMRC<cr>
"Make it easy to edit a snippet.
nmap <Leader>se :e ~/.vim/UltiSnips/
"nmap <Leader>se :UltiSnipsEdit<cr>
"Easy way to edit the plugins files.
nmap <Leader>pe :e ~/.vim/plugins.vim<cr>
nmap <Leader>e :e .<cr>                                         "Make it easy to edit the current directory.

nmap <Leader>sr :call ReloadAllSnippets()<cr>                   "Easy reload snippets.

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nmap <leader><space> :nohlsearch<cr>                            "Remove highlichting.
nmap <D-1> :NERDTreeToggle<cr>                                  "Toggle the NERD Tree sidebar.
nmap <Leader>cd :cd %:p:h<cr>:pwd<cr>                           "Easy set the current working directory to the current present working directory.
"Tip: run ctags -R to regenerated the index.
"'\v[\/](node_modules|target|dist|admin_ci/public|admin_ci/_recources|var)|(\.(swp|ico|git|svn))$
"ctags -R --languages=PHP --exclude=node_modules --exclude=target --exclude=dist --exclude=admin_ci/public --exclude=admin_ci/_recources --exclude=var --exclude=vendor --exclude=.git --exclude=.svn --exclude=.js --exclude=.min.js
"Quickly browse to any tag/symbol in the project.
nmap <Leader>f :tag<space>
nmap <F9> :exe "tag " . expand("<cword>")<cr>
"Switch between prev and next buffer file
nmap <Leader>] :bn<cr>
nmap <Leader>[ :bp<cr>

"nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>

"-----------Pinkcubeshops (Inge 2.0 and webshop specific)----------
nmap <Leader>ps :cd ~/../../Applications/MAMP/htdocs/test.pinkcubeshops.nl<cr>:tabedit .<cr>

"Replace"
vmap <Leader>r :s/
nmap <Leader>r :%s/
nmap <Leader>wr :%s/<C-r><C-w>/

"Run phpunit tests inside homestead
let test#php#phpunit#executable = 'TERM=xterm-256color ssh -t vagrant@192.168.10.10 "cd /home/vagrant/projects/pinkcubeshops; vendor/bin/phpunit"'

map <Leader>t :TestNearest<cr>
map <Leader>tt :TestFile<cr>
map <Leader>ta :exe "! cd /Applications/MAMP/htdocs/test.pinkcubeshops.nl && vendor/bin/phpunit --testsuite unit --exclude-group validator"<cr>

"Run Startify for each new tab
if has('nvim')
    autocmd TabNewEntered * Startify
else
    autocmd VimEnter * let t:startify_new_tab = 1
    autocmd BufEnter *
                \ if !exists('t:startify_new_tab') && empty(expand('%')) |
                \   let t:startify_new_tab = 1 |
                \   Startify |
                \ endif
endif
"-----------Plugins----------"
"/
"/ NERD Comment
"/
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"/
"/ CtrlP
"/
set wildignore+=*/tmp/*,*.so,*.swp,*.zip                        "MacOSX/Linux
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|admin_ci/public|admin_ci/_recources|var|vendor)|(\.(swp|ico|git|svn))$'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
let g:ctrlp_max_files = 100000
let g:ctrlp_buftag_types = { 'javascript': '--language-force=javascript --javascript-types=fcmv' }
let g:ctrlp_map = ''

"/
"/ GitGutter
"/
nmap <Leader>= <Plug>GitGutterPreviewHunk
nmap <Leader>] <Plug>GitGutterNextHunk
nmap <Leader>[ <Plug>GitGutterPrevHunk

"/
" mileszs/ack.vim
if executable('ag')
    let g:ackprg = 'ag -S --nogroup --column --ignore node_modules --ignore "/public/*" --ignore "/admin_ci/public/*" --ignore "vendor/*" --ignore tags --ignore "includes/src" --ignore "media/*" --vimgrep'
endif

" junegunn/fzf.vim
map <C-p> :FZF<cr>
map <C-e> :Buffers<cr>
map <C-t> :Tags<cr>
map <C-l> :call fzf#vim#buffer_tags('', { 'options': ['--nth', '..-2,-1','--query', '^f$ '] })<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" map <C-l> :BTags<cr>

function! TestingVar()
    CtrlPBufTag
    let wordUnderCursor = expand("<cword>")
    echo wordUnderCursor
endfunction

function! GetCurrentInput()
    return 'test'
endfunction

"/ NERDTree
"/
let NERDTreeHijackNetrw = 0
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers= 1

"/
"/ Greplace.vim
"/
" mileszs/ack.vim
if executable('ag')
    let g:ackprg = 'ag -S --nogroup --column --ignore node_modules --ignore "public/*" --ignore "vendor/*" --ignore tags --vimgrep'
endif

" set grepprg=ag                                                  "We want to use Ag for the search.
" let g:grep_cmd_opts = '--line-numbers --noheading'
" let g:ag_prg = 'ag -S --nocolor --nogroup --column --ignore node_modules --ignore ./public/* --ignore tags'
"let g:ag_prg = 'ag -S --nocolor --nogroup --column --ignore "./public/*" --ignore tags'

"/
"/ tobyS/pdv
"/ PDV - PHP Documentor for VIM - 2
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<cr>

"/
"/ adoy/vim-php-refactoring-toolbox
"/
let g:vim_php_refactoring_auto_validate_visibility = 0
let g:vim_php_refactoring_default_property_visibility = 'protected'
let g:vim_php_refactoring_default_method_visibility = 'protected'

"/
"/ SirVer/ultisnips
"/ Ultisnips
"/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"/
"/ mhinz/vim-startify
"/ Startify
"/
let g:startify_change_to_vcs_root = 1

"-----------Auto-Commands----------"
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

" Show syntax highlighting groups for word under cursor
nmap <C-X> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

"-----------Tips and Reminders----------"
" o                         Insert new line under the cursor
" O                         Insert new line above the cursor
" Vip                       Visual select the current paragraph
" dd                        Delete the current line
" V                         Visual select the current line
" yy                        Copy the current line
" cc                        Change (delete and go into insert mode) the current line
" cw                        Delete all characters starting from the cursor to the right from the current word
" ciw                       Change (delete and go into insert mode) the word under the cursor
" viw                       Visual select the word under the cursor
" diw                       Delete the word under the cursor
" Shift + < or >            Indent / de-indent
" :mapclear                 Clear all mappings
" zz                        To instantly center the line where the cursor is located.
" gt                        To switch between tabs
" d-i [char]		        To delete everything inside the character [char]
" c-i [char]		        To change everything inside the characher [char] -> so going also in insert mode
" v-i [char]		        To select everything inside the character [char]
" d-a [char]		        To delete everything include the character [char]
" c-a [char]		        To change everything include the characher [char] -> so going also in insert mode
" v-a [char]		        To select everything include the character [char]

