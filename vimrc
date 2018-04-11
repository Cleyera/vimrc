scriptencoding utf-8
colorscheme default
syntax on

set nocompatible

set number
set title
set showmatch
set matchtime=3
set wrap
set showcmd
set timeout
set timeoutlen=1000
set scrolloff=8
set sidescrolloff=16
"set cursorcolumn
"set cursorline

set ambiwidth=double
set backspace=indent,eol,start
set scroll=1
set sidescroll=1
"set whichwrap=b,s,h,l,<,>,[,]
"set nrformats-=octal

"set list
"set listchars=tab:»,trail:-,eol:↲,extends:»-,precedes:«,nbsp:%

"tab settings
set smarttab
set expandtab
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4

set hidden
set confirm
set nobackup
set noswapfile
"set autoread
"set backup
"set backupdir=~/backup

"status line settings
set laststatus=2
set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]

set hlsearch
set incsearch
set smartcase
set wrapscan
set gdefault
"set ignorecase

"bell style settings
set visualbell t_vb=
set noerrorbells

set history=50
set virtualedit=block
set wildmenu
set wildmode=list:longest,full
set matchpairs+=<:>
"set iminsert=2
"set paste

"save as super user
cnoremap w!! w!sudo tee > /dev/null %

inoremap jj <Esc>

nnoremap <silent><Esc><Esc> :nohlsearch<CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap j gj
nnoremap k gk

nnoremap <silent><S-Left>   <C-w><
nnoremap <silent><S-Right>  <C-w>>
nnoremap <silent><S-Up>     <C-w>-
nnoremap <silent><S-Down>   <C-w>+

nnoremap <Up>       <Nop>
nnoremap <Down>     <Nop>
nnoremap <Left>     <Nop>
nnoremap <Right>    <Nop>
vnoremap <Up>       <Nop>
vnoremap <Down>     <Nop>
vnoremap <Left>     <Nop>
vnoremap <Right>    <Nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

cnoremap <C-h> <Left>
cnoremap <C-l> <Right>

vnoremap v $h
nnoremap Y y$

nnoremap <Tab> %
vnoremap <Tab> %

cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

nnoremap x "_x
nnoremap X "_X
vnoremap x "_x
vnoremap X "_X

nnoremap c "_c
nnoremap C "_C
vnoremap c "_c
vnoremap C "_C

nnoremap s "_s
nnoremap S "_S
vnoremap s "_s
vnoremap S "_S

augroup TabGroup
    autocmd!
    autocmd FileType make setlocal list listchars=tab:»-,trail:- noexpandtab
    autocmd BufNewFile,BufRead *.py setlocal list listchars=tab:»-,trail:- noexpandtab
augroup END

augroup Brackets
    autocmd!
    autocmd FileType c,cpp inoremap <buffer> {<Enter> {<CR>}<Left><Esc><S-o>
augroup END

let mapleader = "\<Space>"

nnoremap <Leader>h ^
nnoremap <Leader>l $
nnoremap <Leader>a 0
vnoremap <Leader>h ^
vnoremap <Leader>l $
vnoremap <Leader>a 0

nnoremap <Leader>dd "_dd
nnoremap <Leader>d  "_d
vnoremap <Leader>d  "_d
nnoremap <Leader>diw "_diw
nnoremap <Leader>dw "_dw
nnoremap <Leader>ciw "_ciw
nnoremap <Leader>cw "_cw

nnoremap <Leader><Leader>yy "+yy
nnoremap <Leader><Leader>y  "+y
nnoremap <Leader><Leader>dd "+dd
nnoremap <Leader><Leader>d  "+d
nnoremap <Leader><Leader>p  "+p
nnoremap <Leader><Leader>P  "+P
vnoremap <Leader><Leader>p  "+p
vnoremap <Leader><Leader>P  "+P
