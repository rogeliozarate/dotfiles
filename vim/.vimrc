" .vimrc
" vim configuration file
" Rogelio Zarate i.am@rogeliozarate.com
" 2013-03-18



" Use Pathogen to modify runtime path 
execute pathogen#infect()
syntax on
filetype plugin indent on

" this is to use solarized theme 
"if has('gui_running')
"    set background=light
" else
"   set background=dark
"endif

" My other configurations
set number
let mapleader=","

map <C-n> :NERDTreeToggle<CR>

" This will help while I get uused to Vim

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" to prevent some exploits

set modelines=0

" all tabs to 2 spaces, and old adquired atavism

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
nnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn
set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
nnoremap j gj
nnoremap k gk


" inoremap <F1> <ESC>
" nnoremap <F1> <ESC>
" vnoremap <F1> <ESC>
" nnoremap ; :

au FocusLost * :wa

" strip ll trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" use ack
nnoremap <leader>a :Ack
" fold tag function intended for HTML
nnoremap <leader>ft Vatzf
" to sort CSS properties
" nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
" to re-hardwrap pagragraps of text
nnoremap <leader>q gqip
" to reselect the text just paste to operate over it
nnoremap <leader>v V`]

" jj to exit back to normal mode
" inoremap jj <ESC>

nnoremap <leader>w <C-w>v<C-w>l


" choosing font

:set guifont=Menlo:h12

