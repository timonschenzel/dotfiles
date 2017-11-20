set nocompatible                                                "viMproved, required

set noswapfile

so ~/.vim/plugins.vim

"Duplicate file
nmap <Leader>df :Dupl 
command! -nargs=1 Dupl call Dupl(<f-args>)
function! Dupl(newName)
    let path = expand('%:p:h') . '/' . a:newName
    execute 'saveas ' . path
endfunction

set laststatus=2

"set shellcmdflag=-ic                                            "To make Vim’s :! shell behave like your command prompt

syntax enable                                                   "Enable syntax highlighting.

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" File specific settings
autocmd Filetype python setlocal noexpandtab tabstop=4 shiftwidth=4 " use tabs for Pyton (overwrite system settings)
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType php,blade autocmd BufWritePre <buffer> %s/\s\+$//e " remove whitespaces in PHP
autocmd Filetype php,blade autocmd BufWritePre <buffer> :%retab

set backspace=indent,eol,start                                  "Backspace action: indent, insert new line, and start it
let mapleader = ','                                             "The leader key.

"-----------Move lines----------"
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

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
imap ;; <C-C>                                                   "Easy escaping to normal model.
imap jj <C-C>                                                   "Easy escaping to normal model.
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
nmap <C>PI :CommandT admin_ci/<cr>
nmap <C-P><C-M> :CommandT app/<cr>
"Inge 2.0"
nmap <C-A-i> :CommandT admin_ci/<cr>
"Controllers"
nmap <Leader><Leader>c :CommandT<cr>_ci/a/controllers/
nmap <Leader><Leader>ca :CommandT<cr>_/a/controllers/admin/
nmap <Leader><Leader>cc :CommandT<cr>_/a/controllers/customers/
nmap <Leader><Leader>cs :CommandT<cr>_/a/controllers/suppliers/
"Views"
nmap <Leader><Leader>v :CommandT<cr>_/a/views/
nmap <Leader><Leader>va :CommandT<cr>_/a/views/admin/
nmap <Leader><Leader>vc :CommandT<cr>_/a/views/customers/
nmap <Leader><Leader>vs :CommandT<cr>_/a/views/suppliers/
"Magento"
nmap <C-A-m> :CommandT app/<cr>

"Replace"
vmap <Leader>r :s/
nmap <Leader>r :%s/
nmap <Leader>wr :%s/<C-r><C-w>/

"Testing
map <Leader>t :TestNearest<cr>
map <Leader>tt :TestFile<cr>
map <Leader>ta :exe "! cd /Applications/MAMP/htdocs/test.pinkcubeshops.nl && vendor/bin/phpunit --testsuite unit --exclude-group validator"<cr>
"com Testall :exe "! cd /Applications/MAMP/htdocs/test.pinkcubeshops.nl && phpunit --colors=never --testsuite unit --exclude-group validator"<cr>

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
nmap <Leader>] <Plug>GitGutterNextHunk
nmap <Leader>[ <Plug>GitGutterPrevHunk

"/
"/ Command-T
"/
set ttimeoutlen=50

if &term =~ "xterm" || &term =~ "screen"
    " as of March 2013, with current iTerm (1.0.0.20130319), tmux (1.8)
    " and Vim (7.3, with patches 1-843), this is all I need:
    let g:CommandTCancelMap     = ['<ESC>', '<C-c>']

    " when I originally started using Command-T inside a terminal,
    " I used to need these as well:
    let g:CommandTSelectNextMap = ['<C-j>', '<ESC>OB']
    let g:CommandTSelectPrevMap = ['<C-k>', '<ESC>OA']
endif

let g:CommandTHighlightColor="CommandT"
let g:CommandTWildIgnore=&wildignore . ',.DS_Store,*/node_modules/*,*/vendor/*,/admin_ci/public'
let g:CommandTMaxFiles=500000

nmap <C-p> :CommandT<cr>
nmap <C-t> :CommandT<cr>
nmap <C-r> :CtrlPBufTag<cr>
"Go directly to the method using F10 key
map <F10> :CtrlPBufTag<cr><c-\>w<cr>
nmap <C-e> :CommandTMRU<cr>
nmap <C-tf> :CommandTFlush<cr>
"nmap <D-e> :CtrlPMRUFiles<cr>
let g:CommandTMatchWindowReverse = 0
let g:CommandTMatchWindowAtTop = 0

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
set grepprg=ag                                                  "We want to use Ag for the search.
let g:grep_cmd_opts = '--line-numbers --noheading'
let g:ag_prg = 'ag -S --nocolor --nogroup --column --ignore node_modules --ignore ./public/* --ignore tags'
"let g:ag_prg = 'ag -S --nocolor --nogroup --column --ignore "./public/*" --ignore tags'

"/
"/ vim-php-cs-fixer.vim
"/
"let g:php_cs_fixer_lever = 'psr2'
nmap <Leader>b :call PhpCsFixerFixFile()<cr>

"/
"/ Syntastic
"/
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']

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
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

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

