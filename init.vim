"Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"General settings
set number relativenumber
set nobackup
set nowb
set noswapfile
set history=1000
set backspace=indent,eol,start
set linebreak
syntax enable

"Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

"Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw

"Remapped keys
let mapleader=","
noremap t j
noremap n k
noremap s l
noremap j t
noremap k n
noremap l s
noremap T L
noremap N H
noremap S $
noremap H 0
imap ii <ESC>
map <SPACE> i
map <F2> <Esc>:w!<CR>
map <F1> <Esc>:q!<CR>
map <F5> <Esc>:wq!<CR>
imap <F2> <Esc>:w!<CR>
imap <F1> <Esc>:q!<CR>
imap <F5> <Esc>:wq!<CR>

"FZF
map <C-f> <Esc>:Files!<CR>
inoremap <C-f> <Esc>:BLines!<CR>
