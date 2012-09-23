set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle;
" required!
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-endwise'
Bundle 'vim-ruby/vim-ruby'
Bundle 'airblade/vim-rooter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/vim-handlebars'
"Bundle 'tpope/vim-commentary'

filetype on                    " Enable filetype detection
filetype indent on             " Enable filetype-specific indenting
filetype plugin on             " Enable filetype-specific plugins

" --------------
" Basic settings
" --------------
" choose no compatibility with legacy vi
set nocompatible
syntax on

set encoding=utf-8

" disable swap
set noswapfile

" disable bell
set vb

" -------
" Editing
" -------

" tabs.
set tabstop=2 " columns = 2
set shiftwidth=2 " reindent takes 2 spaces too
set expandtab " softtabs
set softtabstop=2 " tab in insert takes 2 spaces

" auto indent
set autoindent

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

" show special chars at eol/trailing spaces etc.
set list

" define those special chars
set listchars=tab:»\ ,trail:·

" re-select in visual after shifting
vnoremap > >gv
vnoremap < <gv

vnoremap . :norm.<CR>


" -----
" Looks
" -----

" Solarized colortheme
color solarized

" Light background based on time ?
set background=dark

" No toolbar by default
set guioptions-=T

" Fontsize
set guifont=Monaco:h13

" Rows + columns
set lines=60 columns=228

" Line numbers
set number

" don't wrap lines
set nowrap

" display incomplete commands
set showcmd


" -----------------
" Keyboard mappings
" -----------------

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>

" map leader to space
let mapleader = "\<Space>"

nmap <leader>rc :tabedit $MYVIMRC<cr>
nmap <Leader>bi :source ~/.vimrc<cr>:BundleInstall<cr>

" Ctrl-P fuzzy finder
nmap <Leader>f :CtrlP<cr>

" split windows
map <Leader>l <C-w>l
map <Leader>h <C-w>h
map <Leader>v :vsp<cr>

map <Leader>n :call ToggleBackground()<cr>


" ------------------------
" Coding-specific settings
" ------------------------

" handlebars
autocmd! BufRead,BufNewFile *.handlebars.erb set ft=html

" ignore build for agility
set wildignore+=*/build/*


" ----------------
" Custom functions
" ----------------

" My background haxx
function! ToggleBackground()
  if &background == 'dark'
    set background=light
  else
    set background=dark
  endif
endfunction
