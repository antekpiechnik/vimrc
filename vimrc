set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'

" Solarized colortheme
color solarized

" Light background based on time ?
set background=dark

" No toolbar by default
set guioptions-=T

" Fontsize
set guifont=Monaco:h13

" Rows
set lines=60

" Line numbers
set number

" Columns
set columns=228

" Cmd+t open in new tag
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>

" choose no compatibility with legacy vi
set nocompatible
syntax enable
set encoding=utf-8

" display incomplete commands
set showcmd

" don't wrap lines
set nowrap

" a tab is two spaces (or set this to 4)
set tabstop=2 shiftwidth=2

" use spaces, not tabs (optional)
set expandtab

" backspace through everything in insert mode
set backspace=indent,eol,start

" highlight matches
set hlsearch

" incremental searching
set incsearch

" searches are case insensitive...
set ignorecase

" ... unless they contain at least one capital letter
set smartcase

" disable swap
set noswapfile

" handlebars
autocmd! BufRead,BufNewFile *.handlebars.erb set ft=html

" show special chars at eol/trailing spaces etc.
set list

" define those special chars
set listchars=tab:»\ ,trail:·

" map leader to space
let mapleader = "\<Space>"

" ignore build for agility
set wildignore+=*/build/*

nmap <leader>rc :tabedit $MYVIMRC<cr>
nmap <Leader>bi :source ~/.vimrc<cr>:BundleInstall<cr>

" Ctrl-P fuzzy finder
nmap <Leader>f :CtrlP<cr>

" split windows
map <Leader>w <C-w>w
map <Leader>v :vsp<cr>

map <Leader>n :call ToggleBackground()<cr>

" My background haxx
function! ToggleBackground()
  if &background == 'dark'
    set background=light
  else
    set background=dark
  endif
endfunction
