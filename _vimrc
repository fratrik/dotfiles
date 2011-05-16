" settings for vim
syntax on
"set background=dark
set ruler
colorscheme desert
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4
autocmd BufNewFile,BufRead *.json set ft=javascript
set incsearch
set hlsearch
set laststatus=2
set ignorecase
set smartcase
set linebreak
set showbreak=~~
autocmd BufWritePre * :%s/\s\+$//e
set autoindent

autocmd FileType make setlocal noexpandtab
