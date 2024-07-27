" Use UTF-8 by default
set encoding=utf8

" Enable syntax coloring
syntax on

" Enable line numbers
set nu

" Enable auto refresh file when changed from outside
set autoread

" Quick sudo-save with :W
command W w !sudo tee % > /dev/null

" Always show cursor position
set ruler

" Better search - ignore case, be smart about case,
" highlight search results
set ignorecase
set smartcase
set hlsearch

" Show matching brackets
set showmatch

" Disable autobackups
set nobackup
set nowb
set noswapfile

" Modern indentation - spaces instead of tabs
set expandtab
set smarttab

" One indentation == 4 spaces
set shiftwidth=4
set tabstop=4

" Automagically try to be smart about indenting
set ai
set si

" Auto-close parentheses and brackets
" Escape with CTRL-V when you need a single char.
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
