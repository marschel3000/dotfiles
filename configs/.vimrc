syntax on

set encoding=utf-8
set number " line number
set ruler " show the line and column number of the cursor position
set title
"set mouse=a

filetype plugin indent on
set smarttab
set autoindent
set smartindent
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase

augroup filetypedetect
	au BufNewFile,BufRead *.asp set ft=php
	au BufNewFile,BufRead *.json set ft=json syntax=javascript
augroup END

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()