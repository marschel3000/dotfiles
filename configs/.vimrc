syntax on

set encoding=utf-8
set number
set ruler
set cursorline
set title
" set mouse=a

filetype plugin indent on
set smarttab
set autoindent
set smartindent

set hlsearch
set incsearch
set ignorecase


augroup filetypedetect
	au BufNewFile,BufRead *.asp set ft=php
	au BufNewFile,BufRead *.json set ft=json syntax=javascript
augroup END
